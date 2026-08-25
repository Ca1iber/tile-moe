# v110 Case1 无谓词 native 读取报告（sc-16g）

## 结论

本地候选通过。v110 仅对官方 Case1 删除 consumer-native workspace 的 valid-row 读取谓词，相对 v108 长测中位再快 `3.694554%`；Case2/3 设备代码逐字等同 v108。结合 v108 相对 v102 的收益，Case1 本地累计约快 `5.058809%`。正式 `restart-submission` 仍保持 external-OJ-AC v102，等待 v110 外部 OJ AC。

## 为什么正确

workspace 为每个 128-row tile 完整分配地址。Step1 对 padding 行不写入，v110 允许 Step2 读取这些槽位的旧值；但矩阵乘每一行彼此独立，最终 store 对 `i < actual_rows` 谓词保持不变，因此无效行无法污染有效输出。三 Case 完整 correctness 和 OJ 合规均 PASS。

## Benchmark

Case1 协议：同进程 device-event AB/BA 5轮，warmup=20，repeat=50。

| round | v108 ms | v110 ms | change |
|---:|---:|---:|---:|
| 1 | 2.263670 | 2.183450 | -3.543811% |
| 2 | 2.267602 | 2.183573 | -3.705650% |
| 3 | 2.267622 | 2.183844 | -3.694554% |
| 4 | 2.264955 | 2.181074 | -3.703426% |
| 5 | 2.264929 | 2.188227 | -3.386540% |

中位 `-3.694554%`，pstdev `0.125929%`，远高于 1.2% 门槛。

Case2/3 生成代码与 v108 哈希相同；身份复核 timing 差异仅 `+0.171% / +0.017%`，属于单轮噪声。

## 三 kernel trace

Case1 三对 AB/BA 的中位变化：prepack `0.000%`、Step1 `-0.036%`、Step2 `-11.958%`、GPU span `-4.102%`。收益几乎全部来自 Step2，符合删除循环内读取谓词的因果预期，不是 kernel gap 偶然变化。

## 资源与决策

Case1 Step2 MT registers 从 204 降到 202，ST 保持 52，仍为 2 waves/PEU且无 private allocation。v110 达到 OJ candidate 标准；外部 OJ AC 且成绩高于 v102 后才正式提升 SOTA。
