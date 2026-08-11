# v011_inverse_swizzle_bsm_sc-16g 证据报告

## Verdict

- 运行类型：screen + paired verdict + targeted profile
- 结论：accepted_mechanism_not_global_best
- 一句话因果结论：inverse-source swizzle 删除了 staging→swizzle bridge，ping-pong 与 Step1 token 合并稳定缩短 async 路线；但为容纳双缓冲而把 N tile 减半、CTA 数翻倍，最终仍慢于同步 v004。

## Identity

- Machine：sc-16g，MetaX C500 25% sGPU
- Git branch / parent：`dorm` / `9d7a30ab`
- Kernel SHA-256：`ca0890010c1c7ed5a5f3ba8488775bcb5f892558f4fbf5f2a1ec966844a92b32`
- OJ / official benchmark SHA-256：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8` / `adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`
- Toolchain：`/root/tilelang-metax/build`，MACA 3.7.1；mcProfiler 3.8.1.4。KMD 未在本版重新采集。

## Correctness

- 门禁：`oj_benchmark.py`，三组 OJ shape；全部候选进入性能判决前均 PASS。
- v011a/v011b/v011c 最大绝对误差均为 `0.001953125`，低于 `rtol=1e-2, atol=1e-2`。
- 配对日志中的所有样本也均为 PASS；原始结果见 `benchmark/`。

## Benchmark

- v011b vs v009，Case3，3 轮交替顺序、warmup 20、repeat 100：16.0382 → 15.2103 ms，改善 5.16%。
- v011c vs v011b，3 轮交替顺序：Case2 7.7817 → 7.7351 ms，改善 0.60%；Case3 15.1875 → 14.8614 ms，改善 2.15%。
- v011c 单次全 OJ：Case1/2/3 为 3.932/7.316/14.907 ms。
- 官方 benchmark：未对 v011c 单独运行；该版本不是最终最佳，见 `benchmark/official_UNAVAILABLE.md`。
- 当前最佳比较：v004 Case3 约 10.65 ms，v011c 仍慢约 39.5%，不能提升为全局最佳。

## Profile

- mcTracer Case3，v011b：Step1 10.751232 ms，Step2 4.540416 ms，gap 0.027136 ms，span 15.318784 ms。
- mcTracer Case3，v011c：Step1 10.171648 ms，Step2 4.545536 ms，gap 0.027392 ms，span 14.744576 ms。收益全部来自被修改的 Step1，Step2 基本不变。
- mcProfiler Step1 的多 pass 绝对值发生漂移：v011b→v011c 的 wave life 5668.16→5681.63、WG latency 69.74→69.70、MTE 32.04%→31.88%、MMA 19.91%→19.80%。它没有复现端到端方向，因此不把这些绝对计数解释为收益证据；配对、trace 与 ISA 的一致性优先。
- mx-smi：未做与本次配对同步的采样，见 `profiler/mxsmi/UNAVAILABLE.md`。
- Roofline：targeted mcProfiler 未采集版本专用 All Ops/AI 点，不能把旧基线点冒充 v011，见 `moe-roofline/.../UNAVAILABLE.md`。

## Lowering and code generation

- 生成 C++ 中 staging→swizzle shared bridge 已消失；BSM global 源 chunk 显式执行 XOR 逆映射，wait 后仍保留 CTA sync。
- v011b→v011c Step1 ISA：barrier 8→6，arrive 45→44，code 13,544→13,520 B；MMA 128、global load 30、shared load 32 保持不变。
- Step1 资源保持 114 MT / 30 ST、static max 4 waves/PEU、无 private load/store、无 spill。Step2 为 126 MT / 28 ST、4 waves/PEU、无 spill。

## Causal interpretation

- 预测指标按方向变化：是。bridge 被删除，token 合并减少 barrier，修改阶段 Step1 trace 缩短。
- 端到端与分阶段一致：是。v011c span 比 v011b 缩短 0.574 ms，其中 Step1 缩短 0.580 ms。
- 是否超出 paired 噪声：Case3 是；Case2 的 0.60% 较小但三轮均值方向一致。
- 瓶颈迁移：从 bridge 开销迁移到 N tile 减半造成的 CTA/input/metadata 重复。该结论直接触发 v012 的宽 CTA 实验。
