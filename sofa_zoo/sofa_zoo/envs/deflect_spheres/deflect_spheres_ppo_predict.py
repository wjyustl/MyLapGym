import time
import numpy as np

from collections import deque
from stable_baselines3 import PPO
from sofa_env.scenes.deflect_spheres.deflect_spheres_env import DeflectSpheresEnv
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.envs.deflect_spheres.deflect_spheres_ppo import set_config

# model
model = PPO.load(
    r'/home/wjy/runs/deflect_spheres/PPO_20231106_1e+05_1.pth',
    print_system_info=True,
    device="auto",
)

# env
config, env_kwargs, ppo_kwargs, info_keywords, image_based = set_config()
config["videos_per_run"] = 0

_,_,env = configure_learning_pipeline(
    dummy_run=True,
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

# obs
obs = env.reset()

# setup
fps_list = deque(maxlen=100)
steps = 0
reward_list = []
done = False

# episode
while not done:
    start = time.time()
    action, _state = model.predict(obs, deterministic=False)
    obs, reward, done, info = env.step(action)
    reward_list.append(reward[0])
    # env.render(mode="human")
    end = time.time()

    fps = 1 / (end - start)
    fps_list.append(fps)
    print(f"FPS Mean: {np.mean(fps_list):.5f}    STD: {np.std(fps_list):.5f}")

    # done = episode finished
    if done:
        print("Finished after {} steps".format(steps))
        obs = env.reset()
        steps = 0
    else:
        steps += 1

env.close()
print("====================================")
print("Print-Model:", model)
print("Print-Env.action_space:", env.action_space)
print("Print-Env.observation_space:", env.observation_space)
print("Print-Reward_list:", reward_list)
print("Print-Score:", sum(reward_list))
