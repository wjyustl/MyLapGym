from sofa_env.utils.human_input import XboxController
from sofa_env.wrappers.trajectory_recorder import TrajectoryRecorder
from sofa_env.wrappers.realtime import RealtimeWrapper
from sofa_env.scenes.tissue_manipulation.tissue_manipulation_env import TissueManipulationEnv, RenderMode, ActionType, ObservationType, WorkspaceType
import cv2
from typing import Tuple
import numpy as np
import time
from collections import deque
from pathlib import Path
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Setup human input behavior.")
    parser.add_argument("-rv", "--record_video", action="store_true", help="Record video of the trajectory.")
    parser.add_argument("-rt", "--record_trajectory", action="store_true", help="Record the full trajectory.")
    parser.add_argument("-i", "--info", action="store", type=str, help="Additional info to store in the metadata.")
    parser.add_argument("-s", "--spatial", action="store_true", help="Use a 3D workspace.")
    args = parser.parse_args()

    controller = XboxController()
    time.sleep(0.1)
    if not controller.is_alive():
        raise RuntimeError("Could not find Xbox controller.")

    image_shape = (1024, 1024)
    image_shape_to_save = (256, 256)

    bounds = [-0.055, 0.045, -0.05, 0.05, 0.1075 - 0.025, 0.1075 + 0.015]

    if not args.spatial:
        # remove y axis
        bounds = [bounds[i] for i in [0, 1, 4, 5]]

    env = TissueManipulationEnv(
        observation_type=ObservationType.STATE,
        render_mode=RenderMode.HEADLESS,
        action_type=ActionType.CONTINUOUS,
        image_shape=image_shape,
        frame_skip=1,
        time_step=1 / 30,
        settle_steps=20,
        distance_calculation_2d=not args.spatial,
        maximum_robot_velocity=15.0,
        create_scene_kwargs={
            "camera_position": (0.0, -0.2, 0.15),
            "camera_look_at": (0.0, 0.0, 0.12),
            "camera_field_of_view_vertical": 57,
            "randomize_grasping_point": True,
            "randomize_manipulation_target": True,
            "workspace_kwargs": {
                "bounds": bounds,
                "workspace_type": WorkspaceType.TISSUE_ALIGNED if not args.spatial else WorkspaceType.GENERAL,
            },
            "show_workspace_bounding_box": False,
        },
    )

    env = RealtimeWrapper(env)

    if args.record_video:
        video_folder = Path("videos")
        video_folder.mkdir(exist_ok=True)
        video_name = time.strftime("%Y%m%d-%H%M%S")
        video_path = video_folder / f"{video_name}.mp4"
        video_writer = cv2.VideoWriter(
            str(video_path),
            cv2.VideoWriter_fourcc(*"mp4v"),
            1 / (env.time_step / env.frame_skip),
            image_shape[::-1],
        )
    else:
        video_writer = None

    if args.record_trajectory:

        def store_rgb_obs(self: TrajectoryRecorder, shape: Tuple[int, int] = image_shape_to_save):
            observation = self.env.render()
            observation = cv2.resize(
                observation,
                shape,
                interpolation=cv2.INTER_AREA,
            )
            self.trajectory["rgb"].append(observation)

        metadata = {
            "frame_skip": env.frame_skip,
            "time_step": env.time_step,
            "observation_type": env.observation_type.name,
            "reward_amount_dict": env.reward_amount_dict,
            "user_info": args.info,
        }

        env = TrajectoryRecorder(
            env,
            log_dir="trajectories",
            metadata=metadata,
            store_info=True,
            save_compressed_keys=["observation", "terminal_observation", "rgb", "info"],
            after_step_callbacks=[store_rgb_obs],
            after_reset_callbacks=[store_rgb_obs],
        )

    reset_obs, reset_info = env.reset()
    if video_writer is not None:
        video_writer.write(env.render()[:, :, ::-1])
    done = False

    fps_list = deque(maxlen=100)

    while not done:
        start = time.perf_counter()

        lx, ly, rx, ry, lt, rt = controller.read()

        if args.spatial:
            action = np.array([rx, -ry, ly])
        else:
            action = np.array([rx, -ry])

        obs, reward, terminated, truncated, info = env.step(action)
        done = terminated or truncated
        render_image = env.render()[:, :, ::-1]

        cv2.imshow("Sofa", render_image)
        cv2.waitKey(1)

        if video_writer is not None:
            video_writer.write(render_image)

        if controller.x:
            cv2.imwrite("exit_image.png", env.render()[:, :, ::-1])
            break

        end = time.perf_counter()
        fps = 1 / (end - start)
        fps_list.append(fps)
        print(f"FPS Mean: {np.mean(fps_list):.5f}    STD: {np.std(fps_list):.5f}")

    if video_writer is not None:
        video_writer.release()
