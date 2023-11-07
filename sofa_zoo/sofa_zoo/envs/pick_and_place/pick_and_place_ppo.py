import time
import numpy as np
from stable_baselines3 import PPO

from sofa_env.scenes.pick_and_place.pick_and_place_env import RenderMode, ObservationType, PickAndPlaceEnv, ActionType, Phase
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.common.lapgym_experiment_parameters import CONFIG, PPO_KWARGS

def set_config():

    # env_kwargs
    continuous_actions = True
    observation_type = ObservationType["STATE"]     #
    image_based = observation_type in [ObservationType.RGB, ObservationType.RGBD]
    learn_pick = True       #
    learn_place = True      #
    torus_types = {
        "Soft": {
            "beam_radius": 2.0,
            "young_modulus": 1e3,
            "mechanical_damping": 1.0,
            "total_mass": 5.0,
            "poisson_ratio": 0.0,
        },
        "Stiff": {
            "beam_radius": 10.0,
            "young_modulus": 1e3,
            "mechanical_damping": 1.0,
            "total_mass": 2.0,
            "poisson_ratio": 0.0,
        },
    }
    torus_parameters = torus_types["Stiff"]     #

    start_grasped = not learn_pick
    only_learn_pick = learn_pick and not learn_place
    randomize_torus = not start_grasped

    env_kwargs = {
        "image_shape": (64, 64),
        "window_size": (600, 600),
        "observation_type": observation_type,
        "action_type": ActionType.CONTINUOUS if continuous_actions else ActionType.DISCRETE,
        "time_step": 0.05,
        "frame_skip": 2,
        "settle_steps": 50,
        "render_mode": RenderMode.HUMAN,
        "reward_amount_dict": {
            Phase.ANY: {
                "lost_grasp": -30.0,
                "grasped_torus": 0.0,
                "gripper_jaw_peg_collisions": -0.01,
                "gripper_jaw_floor_collisions": -0.01,
                "unstable_deformation": -0.01,
                "torus_velocity": -0.0,
                "gripper_velocity": -0.0,
                "torus_dropped_off_board": -0.0,
                "action_violated_state_limits": -0.0,
                "action_violated_cartesian_workspace": -0.0,
                "successful_task": 50.0,
            },
            Phase.PICK: {
                "established_grasp": 30.0,
                "gripper_distance_to_torus_center": -0.0,
                "delta_gripper_distance_to_torus_center": -0.0,
                "gripper_distance_to_torus_tracking_points": -0.0,
                "delta_gripper_distance_to_torus_tracking_points": -10.0,
                "distance_to_minimum_pick_height": -0.0,
                "delta_distance_to_minimum_pick_height": -50.0,
            },
            Phase.PLACE: {
                "torus_distance_to_active_pegs": -0.0,
                "delta_torus_distance_to_active_pegs": -100.0,
            },
        },
        "create_scene_kwargs": {
            "gripper_randomization": {
            "angle_reset_noise": 0.0,
            "ptsd_reset_noise": np.array([10.0, 10.0, 45.0, 10.0]),
            "rcm_reset_noise": np.array([10.0, 10.0, 10.0, 5.0, 5.0, 5.0]),
        },
            "torus_parameters": torus_parameters,
        },
        "start_grasped": start_grasped,
        "randomize_torus_position": randomize_torus,
        "only_learn_pick": only_learn_pick,
        "on_reset_callbacks": None,
        "num_active_pegs": 1,
        "randomize_color": False,
        "num_torus_tracking_points": 5,
        "minimum_lift_height": 50.0,
    }

    # ppo_kwargs
    if image_based:
        ppo_kwargs = PPO_KWARGS["image_based"]
    else:
        ppo_kwargs = PPO_KWARGS["state_based"]

    # info_keywords
    info_keywords = [
        "phase",
        "ret_gra_tor",
        "ret_est_gra",
        "ret_los_gra",
        "ret_tor_dis_to_act_peg",
        "ret_del_tor_dis_to_act_peg",
        "ret_gri_dis_to_tor_cen",
        "ret_del_gri_dis_to_tor_cen",
        "ret_gri_dis_to_tor_tra_poi",
        "ret_del_gri_dis_to_tor_tra_poi",
        "ret_gri_jaw_peg_col",
        "ret_gri_jaw_flo_col",
        "ret_uns_def",
        "ret_tor_vel",
        "ret_gri_vel",
        "ret_suc_tas",
        "ret_tor_dro_off_boa",
        "ret_act_vio_car_wor",
        "ret_act_vio_sta_lim",
        "ret_dis_to_min_pic_hei",
        "ret_del_dis_to_min_pic_hei",
        "ret",
        "grasped_torus",
        "torus_distance_to_active_pegs",
        "gripper_distance_to_torus_center",
        "gripper_distance_to_torus_tracking_points",
        "unstable_deformation",
        "successful_task",
        "torus_dropped_off_board",
        "distance_to_minimum_pick_height",
    ]

    # config
    config = {"max_episode_steps": int(300 * (learn_pick + learn_place)), **CONFIG}
    config["ppo_config"] = ppo_kwargs
    config["env_kwargs"] = env_kwargs
    config["info_keywords"] = info_keywords

    return config, env_kwargs, ppo_kwargs, info_keywords, image_based


if __name__ == "__main__":

    config, env_kwargs, ppo_kwargs, info_keywords, image_based = set_config()
    config["videos_per_run"] = 0
    config["total_timesteps"] = int(1e4)

    model, callback, _ = configure_learning_pipeline(
        dummy_run=True,
        pipeline_config=config,

        env_class=PickAndPlaceEnv,
        env_kwargs=env_kwargs,
        
        algo_class=PPO,
        algo_kwargs=ppo_kwargs,

        monitoring_keywords=info_keywords,
        normalize_observations=False if image_based else True,
        normalize_reward=True,

        render=True,
        reward_clip=np.inf,
        log_dir="runs/pick_and_place/",

        use_watchdog_vec_env=True,
        watchdog_vec_env_timeout=10.0,
        reset_process_on_env_reset=False,
    )

    model.learn(
        total_timesteps=config["total_timesteps"],
        callback=callback,
        tb_log_name= f"PPO_{time.strftime('%Y%m%d', time.localtime())}_{'{:.0e}'.format(config['total_timesteps'])}"
    )

    log_path = str(model.logger.dir)
    model.save(log_path + ".pth")
