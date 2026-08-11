# v012 correctness

- v012a、v012b、v012c、v012d、v012e 的 OJ Case1/2/3 均 PASS。
- 已记录最大绝对误差均为 `0.001953125`；容差为 `rtol=1e-2, atol=1e-2`。
- v012c 第三轮配对未完成是主机 RAM 竞争导致进程被杀，并非 mismatch；只使用前两轮完整 pair 做比较。
