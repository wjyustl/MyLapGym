import time
import numpy as np
from stable_baselines3 import PPO

from sofa_env.scenes.tissue_manipulation.tissue_manipulation_env import EpisodeEndCriteria, RenderMode, ActionType, ObservationType, TissueManipulationEnv, WorkspaceType
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.common.lapgym_experiment_parameters import CONFIG, PPO_KWARGS

def set_config():

    # env_kwargs
    continuous_actions = True
    observation_type = ObservationType["STATE"]     #
    image_based = observation_type in [ObservationType.RGB, ObservationType.RGBD]
    env_kwargs = {
        "image_shape": (64, 64),    #
        "window_size": (600, 600),
        "observation_type": observation_type,
        "action_type": ActionType.CONTINUOUS if continuous_actions else ActionType.DISCRETE,
        "time_step": 0.1,
        "frame_skip": 1,
        "settle_steps": 10,
        "render_mode": RenderMode.HUMAN,
        "maximum_robot_velocity": 10.0,
        "end_position_threshold": 0.002,
        "end_episode_criteria": [EpisodeEndCriteria.SUCCESS, EpisodeEndCriteria.STUCK],
        "reward_amount_dict": {
            "distance_to_target": -1.0,
            "one_time_reward_goal": 10.0,
            "one_time_penalty_is_stuck": -5.0,
            "one_time_penalty_invalid_action": -0.0,
            "one_time_penalty_unstable_simulation": -0.0,
        },
        "distance_calculation_2d": True,
        "create_scene_kwargs": {
            "camera_look_at": [0.0155, 0, 0.1069],
            "camera_position": [0.0155, -0.2068, 0.1069],
            "camera_field_of_view_vertical": 57,
            "workspace_kwargs": {
                "bounds" : [-0.055, 0.045, 0.1075 - 0.025, 0.1075 + 0.015],
                "workspace_type": WorkspaceType.TISSUE_ALIGNED,
            },
            "randomize_manipulation_target": True,  #
            "randomize_grasping_point": True,       #
        },
    }

    # ppo_kwargs
    if image_based:
        ppo_kwargs = PPO_KWARGS["image_based"]
    else:
        ppo_kwargs = PPO_KWARGS["state_based"]

    # info_keywords
    info_keywords = [
        "action_norm",
        "delta_pos_norm",
        "distance_ttp_idp",
        "goal_reached",
        "is_stuck",
        "max_def",
        "motion_efficiency",
        "motion_smoothness",
        "penalty_invalid_action",
        "penalty_is_stuck",
        "penalty_unstable_simulation",
        "stable_deformation",
        "valid_action",
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
    config["total_timesteps"] = int(1e4)

    model, callback, _ = configure_learning_pipeline(
        dummy_run=True,
        pipeline_config=config,

        env_class=TissueManipulationEnv,
        env_kwargs=env_kwargs,
        
        algo_class=PPO,
        algo_kwargs=ppo_kwargs,

        monitoring_keywords=info_keywords,
        normalize_observations=False if image_based else True,
        normalize_reward=True,
        
        render=True,
        reward_clip=np.inf,
        log_dir="runs/tissue_manipulation/"
    )

    model.learn(
        total_timesteps=config["total_timesteps"],
        callback=callback,
        tb_log_name= f"PPO_{time.strftime('%Y%m%d', time.localtime())}_{'{:.0e}'.format(config['total_timesteps'])}"
    )

    log_path = str(model.logger.dir)
    model.save(log_path + ".pth")
