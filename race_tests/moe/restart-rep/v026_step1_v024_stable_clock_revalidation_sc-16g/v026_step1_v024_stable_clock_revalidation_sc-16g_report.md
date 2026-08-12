# v026_step1_v024_stable_clock_revalidation_sc-16g 证据报告

## Verdict

- 运行类型：verdict / measurement-method audit
- 结论：v024 相对 v023 的专属收益不成立；v019→v024 的累计收益存在，但幅度受进程组成影响，不能给出单一可信百分比。
- 一句话因果结论：稳定时钟预热消除了 DVFS 假阳性，但四个 JIT module 同进程共存仍会改变代码放置或执行状态，因此小差值必须多协议复验。

## Identity

- Machine：sc-16g，MetaX C500，25% sGPU，16 GiB quota
- Git：branch `dorm`，实验起点 `7d4f97663e5405c268b09e8a5e2cbcf4bca27adb`
- v019/v023/v024 SHA-256：`35529c68...` / `b250a2ce...` / `8679b644...`
- KMD `3.8.30`，MACA `3.7.1.5`，PyTorch `2.8.0+metax3.7.1.3`

## Correctness

- 每个平衡实验均构造四个独立 Kernel instance，并对四份输出执行 `torch.assert_close(rtol=1e-2, atol=1e-2)`；全部 PASS。

## Benchmark

- v023→v024：8 rounds，warmup 20，repeat 80，precondition 3×30；balanced median `-0.0808%`，判定为等价。
- v019→v024 rep1：8 rounds，balanced median `-1.6235%`，8/8 improved。
- v019→v024 rep2：独立进程 4 rounds，balanced median `-6.6174%`，4/4 improved。
- rep1/rep2 幅度不可相互解释，且 v024 绝对时间约 5.26 ms 与 4.99 ms 随 partner source 变化，故不把任一幅度当作 OJ 可迁移收益。
- 原始 JSON/log：`benchmark/`。

## Profile

- 本版目标是审计测量协议，没有新增 mcTracer/mcProfiler/Roofline；相关硬件机理沿用 v025 的 mx-smi 证据：idle XCORE 428 MHz，active XCORE 1125 MHz，MC 1800 MHz。
- Roofline 标记为 unavailable，因为源码没有新机制且本版不应生成伪差异图。

## Causal interpretation

- 预热后 v023/v024 差值收敛到约 0.08%，说明原先声称的 v024 约 1.6–1.9% 专属收益至少部分来自设备/会话状态。
- 四槽位平衡可以抵消编译先后 slot 偏差，但不能抵消“与哪个源码共同编译”造成的 code placement/JIT 共驻效应。
- v026 后续版本只把对称同窗口结果当筛选；最终接受还需分阶段 trace、生成代码/ISA 和独立复验形成一致因果链。
