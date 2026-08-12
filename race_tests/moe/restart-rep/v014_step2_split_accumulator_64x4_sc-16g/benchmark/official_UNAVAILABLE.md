# Official benchmark unavailable

- 状态：not run by pre-registered screen stop。
- 原因：v014 在精确 OJ 三对 clean paired campaign 中 Case1/2/3 均未获得超噪声收益；mcTracer 也未显示 Step2 下降，且静态 occupancy 仍为 2 waves/PEU。候选未晋级 full verdict，因此不额外消耗官方 benchmark。
- 当前工作 kernel 始终是 v013，未发生需要恢复的覆盖。
- 若未来重新组合该机制并晋级 verdict，必须重新运行权威 `race_tests/moe/fusedmoe_benchmark.py`，不能引用 v013 的官方数字作为 v014 结果。
