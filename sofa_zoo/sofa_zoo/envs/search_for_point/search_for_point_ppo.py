import time
import numpy as np
from stable_baselines3 import PPO

from sofa_env.scenes.search_for_point.search_for_point_env import RenderMode, SearchForPointEnv, ActionType, ObservationType, ActiveVision
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.common.lapgym_experiment_parameters import CONFIG, PPO_KWARGS

def set_config():

    # env_kwargs
    continuous_actions = True
    observation_type = ObservationType["STATE"]
    image_based = observation_type in [ObservationType.RGB, ObservationType.RGBD]
    active_vision = True        #
    reward_amount_dict = {
        ActiveVision.DEACTIVATED: {
            "poi_is_in_frame": 0.01,
            "relative_camera_distance_error_to_poi": -0.01,
            "delta_relative_camera_distance_error_to_poi": -0.01,
            "relative_pixel_distance_poi_to_image_center": -0.001,
            "delta_relative_pixel_distance_poi_to_image_center": -0.001,
            "successful_task": 100.0,
        },
        ActiveVision.CAUTER: {
            "collision_cauter": -0.001,
            "relative_distance_cauter_target": -0.0005,
            "relative_delta_distance_cauter_target": -5.0,
            "cauter_touches_target": 0.0,
            "successful_task": 100.0,
            "cauter_action_violated_state_limits": -0.0,
        },
    }
    env_kwargs = {
        "image_shape": (64, 64),
        "window_size": (600, 600),
        "observation_type": observation_type,
        "render_mode": RenderMode.HUMAN,
        "time_step": 0.1,
        "frame_skip": 1,
        "action_type": ActionType.CONTINUOUS if continuous_actions else ActionType.DISCRETE,
        "reward_amount_dict": reward_amount_dict,
        "active_vision_mode": ActiveVision.CAUTER if active_vision else ActiveVision.DEACTIVATED,
    }
    
    # ppo_kwargs
    if image_based:
        ppo_kwargs = PPO_KWARGS["image_based"]
    else:
        ppo_kwargs = PPO_KWARGS["state_based"]

    # info_keywords
    if active_vision:
        info_keywords = [
            "ret_col_cau",
            "ret_rel_dis_cau_tar",
            "ret_rel_del_dis_cau_tar",
            "ret_cau_tou_tar",
            "ret_cau_act_vio_sta_lim",
            "ret_suc_tas",
            "ret",
            "collision_cauter",
            "relative_distance_cauter_target",
            "relative_delta_distance_cauter_target",
            "cauter_touches_target",
            "cauter_action_violated_state_limits",
            "successful_task",
        ]
    else:
        info_keywords = [
            "ret_poi_is_in_fra",
            "ret_rel_cam_dis_err_to_poi",
            "ret_del_rel_cam_dis_err_to_poi",
            "ret_rel_pix_dis_poi_to_ima_cen",
            "ret_del_rel_pix_dis_poi_to_ima_cen",
            "ret_suc_tas",
            "ret",
            "poi_is_in_frame",
            "relative_camera_distance_error_to_poi",
            "relative_pixel_distance_poi_to_image_center",
            "successful_task",
        ]

    # config
    config = {"max_episode_steps": 500, **CONFIG}
    config["ppo_config"] = ppo_kwargs
    config["env_kwargs"] = env_kwargs
    config["info_keywords"] = info_keywords

    return config, env_kwargs, ppo_kwargs, info_keywords, image_based


if __name__ == "__main__":

    config, env_kwargs, ppo_kwargs, info_keywords, image_based = set_config()
    config["videos_per_run"] = 0
    config["total_timesteps"] = int(1e6)

    model, callback, _ = configure_learning_pipeline(
        # dummy_run=True,
        pipeline_config=config,

        env_class=SearchForPointEnv,
        env_kwargs=env_kwargs,
        
        algo_class=PPO,
        algo_kwargs=ppo_kwargs,

        monitoring_keywords=info_keywords,
        normalize_observations=False if image_based else True,
        normalize_reward=True,
        
        render=True,
        reward_clip=np.inf,
        log_dir="runs/search_for_point/"
    )

    model.learn(
        total_timesteps=config["total_timesteps"],
        callback=callback,
        tb_log_name= f"PPO_{time.strftime('%Y%m%d', time.localtime())}_{'{:.0e}'.format(config['total_timesteps'])}"
    )

    log_path = str(model.logger.dir)
    model.save(log_path + ".pth")
