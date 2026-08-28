# v159_case1_unified_hybrid_m192n64_sc-16g 证据报告

## Verdict

- 运行类型：正式本地 verdict；外部 OJ pending。
- 结论：`local-candidate-external-oj-pending`，不是 accepted。
- 一句话因果结论：Case1 保持 `1536 CTA / 6144 waves` 不变，把 short-expert `M128N128` 与 long-expert `M192N64` Step1 合进同一个 `64x24` mixed grid；long slot 的 padded MMA 与 Gate/Up 重复权重读取下降，使正式端到端均值提升 `8.2953%`。

## Identity and compliance

- Machine：MetaX C500 `sc-16g`，sGPU id 3，25% compute，16 GiB。
- Git branch / starting commit：`dorm` / `e43dff33b410e4bad1df143f56a204db4e556839`。
- Parent：v157 source SHA-256 `fc627e4e54e74bcd892bfe62c1f5c3ed3d47ed68df23c20fbd80917717924eff`。
- Candidate SHA-256：`c8fd309fa6ec769970b4a9aeaa8d702f75033395f17dd11c30d60b374ae98ae3`。
- Incumbent external-OJ SOTA：v148；display `[83,82,82]`。本候选没有外部 OJ 证据，未创建 `restart-submission`。
- OJ source validator：PASS；TileLang primitive only；async copy、foreign injection、直接 MXMACA builtin 与跨调用缓存均为 0。

## Correctness

- 官方 Case1/2/3 完整有效输出均 PASS，`rtol=1e-2`、`atol=1e-2`。
- 最初 long 分支在 64-thread rank map 上暴露 Case1 `num_experts=16` 的 OOB；最终源码用 `map_thread < num_experts` 显式保护，短、长分支和三 shape 均已复验。

## Formal benchmark

Case1：5 rounds、warmup 10、repeat 50、AB/BA 交替。

| Round | Order | Parent ms | Candidate ms | Change |
|---:|---|---:|---:|---:|
| 1 | AB | 2.154568 | 1.979264 | -8.13637% |
| 2 | BA | 2.156416 | 1.976294 | -8.35282% |
| 3 | AB | 2.157327 | 1.975701 | -8.41907% |
| 4 | BA | 2.156590 | 1.977672 | -8.29636% |
| 5 | AB | 2.157128 | 1.978690 | -8.27198% |

- Mean `-8.2953209%`；median `-8.2963589%`；population stdev `0.0942663 pp`。
- Case2 side `+0.2087%`、Case3 side `+0.0913%`，均只视作噪声，不宣称变化。

## mcTracer and codegen

| Symbol role | Median ms | Grid | Threads | MT regs | Dynamic shared |
|---|---:|---|---:|---:|---:|
| expert rank | 0.005120 | 1x1 | 64 | 4 | 0 |
| short input prepack | 0.016640 | 8x8 | 256 | 18 | 64 KiB |
| long input prepack | 0.022144 | 8x8 | 512 | 26 | 24 KiB |
| unified Step1 | 1.194880 | 64x24 | 256 | 226 | 32 KiB |
| Step2 | 0.735744 | 8x24 | 256 | 202 | 32 KiB |

- Trace kernel sum：`1.974528 ms`。
- Parent v157 Case1 Step1 约 `1.3943 ms`，统一 Step1 约缩短 `14.3%`；新增 rank/prepack 成本小于权重重复读取和 padded MMA 的削减。
- Step1 codegen：`226 MT / 46 ST`、static max `2 waves/PEU`；async sites 0。

## Decision

- 稳定越过 1.2% floor，保留为线性本地候选并允许作为 v160 的 parent。
- 外部 OJ pending；不得标记 accepted，不得移动 `restart-submission`。

