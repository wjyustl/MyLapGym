import time
import numpy as np
from stable_baselines3 import PPO

from sofa_env.scenes.reach.reach_env import ActionType, RenderMode, ObservationType, ReachEnv
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.common.lapgym_experiment_parameters import CONFIG, PPO_KWARGS

def set_config():

    # env_kwargs
    continuous_actions = True
    observation_type = ObservationType["STATE"]
    image_based = observation_type in [ObservationType.RGB, ObservationType.RGBD]
    sphere_radii = {
        "normal": 0.008,
        "big": 0.02,
        "small": 0.003,
    }
    sphere_radius = sphere_radii["normal"]
    env_kwargs = {
        "image_shape": (64, 64),
        "window_size": (600, 600),
        "render_mode": RenderMode.HUMAN,
        "observation_type": observation_type,
        "action_type": ActionType.CONTINUOUS if continuous_actions else ActionType.DISCRETE,
        "distance_to_target_threshold": 0.003,
        "time_step": 0.1,
        "frame_skip": 1,
        "observe_target_position": False if image_based else True,
        "reward_amount_dict": {
            "distance_to_target": -1.0,
            "delta_distance_to_target": -10.0,
            "successful_task": 100.0,
            "time_step_cost": -0.0,
            "worspace_violation": -0.0,
        },
        "on_reset_callbacks": None,
        "create_scene_kwargs": {
            "show_bounding_boxes": True,
        },
        "sphere_radius": sphere_radius,
    }

    # ppo_kwargs
    if image_based:
        ppo_kwargs = PPO_KWARGS["image_based"]
    else:
        ppo_kwargs = PPO_KWARGS["state_based"]

    # info_keywords
    info_keywords = [
        "distance_to_target",
        "ret_del_dis_to_tar",
        "ret_dis_to_tar",
        "ret_suc_tas",
        "ret_tim_ste_cos",
        "ret_wor_vio",
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
    config["total_timesteps"] = int(1e7)

    model, callback, _ = configure_learning_pipeline(
        dummy_run= True,                        # 虚拟环境
        pipeline_config=config,                 # 配置

        env_class=ReachEnv,                     # 环境种类
        env_kwargs=env_kwargs,                  # 环境参数

        algo_class=PPO,                         # 算法种类
        algo_kwargs=ppo_kwargs,                 # 算法参数

        monitoring_keywords=info_keywords,      # 监视器关键字
        normalize_observations=False,           # 归一化观察
        normalize_reward=True,                  # 归一化奖励

        render=True,                            # 渲染器
        reward_clip = np.inf,
        log_dir="runs/reach/",                  # 日志保存路径
    )

    model.learn(
        total_timesteps=config["total_timesteps"],
        callback=callback,
        tb_log_name= f"PPO_{time.strftime('%Y%m%d', time.localtime())}_{'{:.0e}'.format(config['total_timesteps'])}"
    )

    log_path = str(model.logger.dir)
    model.save(log_path + ".pth")
