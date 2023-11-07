import time
import numpy as np
from stable_baselines3 import PPO

from sofa_env.scenes.deflect_spheres.deflect_spheres_env import Mode, RenderMode, ObservationType, DeflectSpheresEnv, ActionType
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.common.lapgym_experiment_parameters import CONFIG, PPO_KWARGS

def set_config():

    # env_kwargs
    continuous_actions = True
    observation_type = ObservationType["STATE"]
    image_based = observation_type in [ObservationType.RGB, ObservationType.RGBD]
    env_kwargs = {
        "image_shape": (64, 64),
        "window_size": (600, 600),
        "render_mode": RenderMode.HUMAN,
        "observation_type": observation_type,
        "action_type": ActionType.CONTINUOUS if continuous_actions else ActionType.DISCRETE,
        "time_step": 0.1,
        "frame_skip": 1,
        "settle_steps": 10,
        "reward_amount_dict": {
            "action_violated_cartesian_workspace": -0.0,
            "action_violated_state_limits": -0.0,
            "tool_collision": -0.0,
            "distance_to_active_sphere": -0.0,
            "delta_distance_to_active_sphere": -5.0,
            "deflection_of_inactive_spheres": -0.005,
            "deflection_of_active_sphere": 0.0,
            "delta_deflection_of_active_sphere": 1.0,
            "done_with_active_sphere": 10.0,
            "successful_task": 100.0,
        },
        "single_agent": False,      #
        "individual_agents": False,
        "mode": Mode.WITHOUT_REPLACEMENT,
        "min_deflection_distance": 3.0,
        "num_objects": 5,
        "num_deflect_to_win": 5,    # 1/2/5
        "allow_deflection_with_instrument_shaft": False,
    }

    # ppo_kwargs
    if image_based:
        ppo_kwargs = PPO_KWARGS["image_based"]
    else:
        ppo_kwargs = PPO_KWARGS["state_based"]

    # info_keywords
    info_keywords = [
        "num_deflections",
        "ret_act_vio_car_wor",
        "ret_act_vio_sta_lim",
        "ret_too_col",
        "ret_dis_to_act_sph",
        "ret_del_dis_to_act_sph",
        "ret_def_of_ina_sph",
        "ret_def_of_act_sph",
        "ret_del_def_of_act_sph",
        "ret_don_wit_act_sph",
        "ret_suc_tas",
        "distance_to_active_sphere",
        "deflection_of_active_sphere",
        "successful_task",
    ]

    # config
    config = {"max_episode_steps": 500 * env_kwargs["num_deflect_to_win"], **CONFIG}
    config["ppo_config"] = ppo_kwargs
    config["env_kwargs"] = env_kwargs
    config["info_keywords"] = info_keywords

    return config, env_kwargs, ppo_kwargs, info_keywords, image_based


if __name__ == "__main__":

    config, env_kwargs, ppo_kwargs, info_keywords, image_based = set_config()
    config["videos_per_run"] = 0
    config["total_timesteps"] = int(3e6)

    model, callback, _ = configure_learning_pipeline(
        # dummy_run=True,
        pipeline_config=config,

        env_class=DeflectSpheresEnv,
        env_kwargs=env_kwargs,
        
        algo_class=PPO,
        algo_kwargs=ppo_kwargs,

        monitoring_keywords=info_keywords,
        normalize_observations=False if image_based else True,
        normalize_reward=True,

        render=True,
        reward_clip = np.inf,
        log_dir="runs/deflect_spheres/"
    )

    model.learn(
        total_timesteps=config["total_timesteps"],
        callback=callback,
        tb_log_name= f"PPO_{time.strftime('%Y%m%d', time.localtime())}_{'{:.0e}'.format(config['total_timesteps'])}"
    )

    log_path = str(model.logger.dir)
    model.save(log_path + ".pth")
