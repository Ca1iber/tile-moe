# v067_step1_activation_shape_specialize_sc-16g 证据报告

## Verdict

- 运行类型：sc-16g local verdict。
- 结论：rejected；当前最佳保持 v062。
- 因果结论：编译期把直接写回限制到 16/64 experts 后，Case2 generated code 与 v062 逐字节一致，Case3 再次改善；但 Case1 第二次正式配对落入反向噪声，仍未满足三 Case 单调门禁。

## Identity and correctness

- Parent/current best：v062；candidate SHA-256 `c82f99a72cb6282feac2a9a12adac5b695eae6e768ddbc1acaaee310b5b666f2`。
- 三官方 Case 独立参考正确性全部 PASS；最大 `max_abs=0.001953125`，`padding_max=0.0`。
- OJ source allowlist/static gate PASS。

## Benchmark

协议：AB/BA 交替 13 rounds，每窗口 warmup 20、repeat 100。

| Case | v062 | v067 | speedup | 候选胜场 | paired 差值中位数 |
|---|---:|---:|---:|---:|---:|
| 1 | 2.777600 ms | 2.778470 ms | 0.999687x | 5/13 | +0.000366 ms |
| 2 | 4.735089 ms | 4.734789 ms | 1.000063x | 7/13 | -0.000046 ms |
| 3 | 9.270530 ms | 9.268828 ms | 1.000184x | 10/13 | -0.002169 ms |

Case1 在 v066 为 10/13 正向、本轮为 5/13 反向，说明该 shape 的效应量不足以越过噪声带。Case3 连续两轮均 10/13 正向，适合继续收窄特化范围。

## Generated code and resources

- Case2：v062/v067 generated C++ SHA 均为 `6fdee4ae...`，确认无运行时分支和代码扰动。
- Case1：v067 SHA `fc98c341...`，生成表达式改变；Step1 资源与 v062 同为 MT/ST registers 222/52。
- Case3：v067 SHA `50a89952...`，代码确实变化；资源仍为 Step1 216/54、Step2 230/52，静态最大 2 waves/PEU。
- 因 benchmark 门禁失败，不继续采集 profiler/Roofline。

## Interpretation

- 编译期 shape 隔离机制有效；Case2 的测量为预期噪声。
- Case1 generated expression 变化没有转化成稳定端到端收益；下一版恢复 Case1 原码，只保留 64 experts 的 Case3 直接写回。
- 本轮不创建 `restart-submission/v067...`。
