import time
import numpy as np

from collections import deque
from stable_baselines3 import PPO
from sofa_env.scenes.reach.reach_env import ReachEnv
from sofa_zoo.common.sb3_setup import configure_learning_pipeline
from sofa_zoo.envs.reach.reach_ppo import set_config

# model
model = PPO.load(
    r'/home/wjy/runs/reach/PPO20231102_1e7.pth',
    print_system_info=True,
    device="auto",
)

# env
config, env_kwargs, ppo_kwargs, info_keywords, image_based = set_config()
config["videos_per_run"] = 0

_,_,env = configure_learning_pipeline(
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
    log_dir="runs/reach/",                  # 日志保存路径
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
    # env.render(mode="human") # 会添加一个render窗口
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
