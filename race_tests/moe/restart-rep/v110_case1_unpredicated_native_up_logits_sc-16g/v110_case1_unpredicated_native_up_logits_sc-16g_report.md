# v110 Case1 无谓词 native 读取报告（sc-16g）

## 结论

接受并提升为全局 SOTA。v110 仅对官方 Case1 删除 consumer-native workspace 的 valid-row 读取谓词，相对 v108 长测中位再快 `3.694554%`；Case2/3 设备代码逐字等同 v108。外部 OJ 三 Case 全部 AC，score ratio 为 `0.833778 / 0.824765 / 0.823671`，均高于 v102。

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

Case1 Step2 MT registers 从 204 降到 202，ST 保持 52，仍为 2 waves/PEU且无 private allocation。

## 外部 OJ 与 SOTA gate

| Case | v102 score ratio | v110 score ratio | v110 latency | display |
|---:|---:|---:|---:|---:|
| 1 | 0.828315 | 0.833778 | 2.243 ms | 83 |
| 2 | 0.824035 | 0.824765 | 3.954 ms | 82 |
| 3 | 0.823482 | 0.823671 | 7.680 ms | 82 |

三个 Case 均非回退，且全部严格提升；精确 OJ 源码 SHA256 为 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。因此创建同 ID `restart-submission`，更新 `SOTA.json`，正式结论为 accepted global OJ SOTA。
