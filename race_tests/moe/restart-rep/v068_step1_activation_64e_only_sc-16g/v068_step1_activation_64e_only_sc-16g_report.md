# v068_step1_activation_64e_only_sc-16g 证据报告

## Verdict

- 运行类型：sc-16g local verdict。
- 结论：rejected；当前最佳保持 v062。
- 因果结论：Case1/2 generated code 已与 v062 byte-identical，仅 Case3 使用激活直接写回；Case3 第三次正式复测反转为 3/13 回退，否定该机制具有稳定收益。

## Identity and correctness

- Parent/current best：v062；candidate SHA-256 `c68684b68bc117682e0dfe0ae82cea16344690a70026a06aaa6b78ae7ab2f09a`。
- 三官方 Case 正确性全部 PASS；最大 `max_abs=0.001953125`，`padding_max=0.0`。
- OJ source allowlist/static gate PASS。

## Benchmark

协议：AB/BA 交替 13 rounds，每窗口 warmup 20、repeat 100。

| Case | v062 | v068 | speedup | 候选胜场 | paired 差值中位数 |
|---|---:|---:|---:|---:|---:|
| 1 | 2.776425 ms | 2.776765 ms | 0.999877x | 4/13 | +0.000627 ms |
| 2 | 4.734415 ms | 4.734833 ms | 0.999912x | 7/13 | -0.000407 ms |
| 3 | 9.265754 ms | 9.267797 ms | 0.999780x | 3/13 | +0.002038 ms |

Case1/2 是相同 device code 的噪声对照，不作为机制判断；Case3 是唯一真实变量，3/13 与正 paired 差值明确失败。结合 v066/v067 的两次 10/13，三轮方向不稳定，整体效应位于机器噪声带。

## Generated code and resources

- Case1：v062/v068 SHA 均 `1046a4e4...`；资源均为 Step1 222/52、Step2 212/52 MT/ST registers。
- Case2：v062/v068 SHA 均 `6fdee4ae...`；资源均为 Step1 216/54、Step2 230/52。
- Case3：v068 SHA `50a89952...`，与 v067 的直接写回路径相同；资源仍为 Step1 216/54、Step2 230/52，静态最大 2 waves/PEU。
- benchmark 门禁失败，不继续 profiler/Roofline。

## Interpretation

- 编译期隔离正确，但直接写回没有产生资源改善，三次时延方向也不稳定。
- 该机制到此停止，不再通过更多 shape 切分追逐噪声；下一步重新 profile v062 并选择独立机制。
- 本轮不创建 `restart-submission/v068...`。
