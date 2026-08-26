# v110 consumer-native input K-plane pitch 探针（放弃）

## 结论

- Parent：external-OJ-AC v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- Candidate：`probe_v110_native_input_kpitch_pad128.py`，SHA-256 `c5a0c87e8d9bf3a29e81a6ea5155fba3a817e2336cbcef49dbb56f7f3cd87d62`。
- 修改：把 consumer-native input workspace 的每个 K64 plane 从 `8192` 个 FP16 元素扩为 `8320`，即在相邻 K-plane 间加入 `256 B` padding；producer 与 Step1 consumer 使用同一新 stride。
- 三 Case 的固定 OJ 分布均 bit-exact；Case2/3 的置换 expert-ID 分布也 bit-exact。
- 三 Case AB/BA 中位变化分别为 `+0.036685% / +0.000984% / +0.008457%`（正值表示更慢）。全部属于噪声，远低于 `1.2%` promotion 门槛。
- 不创建编号版本、不创建 submission，可靠 SOTA 继续为 v110。

## 结果

同进程 parent/candidate、三轮交替测试；每轮分别记录 parent 与 candidate 的 device-event latency。

| Case | Parent medians (ms) | Candidate medians (ms) | Paired changes | Median change |
|---:|---|---|---|---:|
| 1 | `2.180550 / 2.183514 / 2.183354` | `2.181350 / 2.180851 / 2.184230` | `+0.036685% / -0.121935% / +0.040159%` | `+0.036685%` |
| 2 | `3.899955 / 3.903904 / 3.898010` | `3.895366 / 3.907610 / 3.898048` | `-0.117665% / +0.094920% / +0.000984%` | `+0.000984%` |
| 3 | `7.568710 / 7.571251 / 7.571296` | `7.569350 / 7.565280 / 7.573984` | `+0.008457% / -0.078866% / +0.035500%` | `+0.008457%` |

## 因果判断

v131 已证明把相同 input workspace 改写为显式扁平索引不会改变 codegen；本探针进一步改变了真实 K-plane 地址相位，但三 Case 都没有方向性收益。因此当前 Step1 的主要限制不是相邻 K-plane 的 HBM/L2 partition phase 或固定 stride 冲突。继续扫 `64/128/256/512 B` 相邻 padding 只会扩大低信息量参数搜索，不再派生。

临时源码与原始日志保留在远端 `/root/moe_runs/probe_v110_native_input_kpitch_pad128.py` 和 `/root/moe_runs/v110_native_input_kpitch_pad128_eval.log`。
