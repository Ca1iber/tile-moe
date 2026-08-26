# v110 consumer-native workspace 谓词粒度筛选（放弃）

日期：2026-08-26

## 结论

本批从 exact external-OJ-AC v110 出发，分别测试 Step2 consumer-only、Step1
producer-only 以及 producer/consumer contract 的 16-row half-wave 与 32-row
wave 谓词。所有完成的官方分布与置换 expert-ID 分布均 bit-exact，但没有任何
端点达到相对直接父版本至少 `1.2%` 的晋级门槛；多数为轻微回退。

因此本批全部拒绝：不创建编号版本、不创建 `restart-submission`、不移动
`dorm` 的可靠 SOTA。正式 SOTA 仍为 v110，源码 SHA-256：
`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。

## 协议

- parent/candidate 同进程 device-event AB/BA；3 轮，单段 repeat=20；
- 官方固定 `100/184` 分布：Cases1/2/3 完整 padded-output correctness；
- Cases2/3 另做 expert ID 置换分布 correctness；
- `rtol/atol` 的严格比较与 OJ `0.05/0.05` 比较均记录；
- 负值表示候选更快，正值表示回退；
- 所有源码先通过 Python 语法与 OJ source validator。

最初把五个候选放在一个 Python 进程，第三个候选到 Case3 时因各模块全局
workspace cache 累积而 OOM。该 OOM 发生在评测器创建 FP32 diff 时，不是 kernel
错误；随后改为每个候选独立进程并按 128 rows 分块比较，补完所有结果。

## 结果

| Probe | SHA-256 | Case1 | Case2 | Case3 | Correctness | 决策 |
|---|---|---:|---:|---:|---|---|
| Step2 16-row half-wave consumer | `872ba0f6...` | `-0.063%` | `-0.158%` | `+0.017%` | 固定/置换 bit-exact | below gate / reject |
| Step1+Step2 16-row half-wave contract | `2332216f...` | `+0.073%` | `+0.043%` | `+0.140%` | 固定/置换 bit-exact | reject |
| Step2 32-row wave consumer | `06fcdd00...` | `-0.117%` | `+0.088%` | `+0.210%` | 固定/置换 bit-exact | reject |
| Step1 32-row wave producer | `4765d814...` | `-0.151%` | `+0.217%` | `+0.092%` | 固定/置换 bit-exact | reject |
| Step1+Step2 32-row wave contract | `67829638...` | `-0.054%` | `+0.211%` | `+0.272%` | 固定/置换 bit-exact | reject |

这里 Case1 的编译期开关保持 v110 原路径，约 `±0.15%` 变化是身份噪声，不是
机制收益。Cases2/3 才是目标路径；五个版本均没有接近 `-1.2%`。

## 机制与流量解释

v110 的 Step2 native workspace 读取在首 tile、每个 odd tile 和每个 next-even
tile 都带逐 lane `intermediate_row < actual_rows`。16-row 版本把同一行的两个
128-bit column vectors 放在一个 lane-independent half-wave guard 下；32-row
版本进一步把四个 vectors 放在一个 active-wave guard 下。

官方 `100/184` 分布中：

- 16-row rounding 每个 expert 平均增加 10 个 workspace rows；
- 32-row rounding 每个 expert 平均增加 18 个 workspace rows；
- 每个 workspace row 会被 28 个 Step2 output-column CTAs 读取。

因此 Case2 的额外逻辑 Step2 读取约为 35 MiB（16-row）或 63 MiB（32-row），
Case3 约翻倍为 70 MiB / 126 MiB。16-row consumer 的 Case2 `-0.158%` 小信号在
Case3 已回到 `+0.017%`，而 32-row 随流量增加稳定转为回退，说明控制简化至多
处于噪声量级，新增请求才是主导趋势。

producer/consumer contract 让 Step1 先写入同一尾槽，理论上可让 Step2 的额外
读取命中近期 cache；实测 16-row 与 32-row contract 都比 consumer-only 更差。
额外 Step1 store、写分配和静态控制抵消了任何 recency，不能靠“先写 padding”
挽救 rounded consumer。

编译期间出现 `up_logits[...] is written by multiple threads in loop [i]` 的静态
race warning；数值检查证明本批映射在已测分布上无碰撞，但既然性能也失败，
没有理由用关闭 race checker 的 pass key 继续该写法。

## 后续约束

1. 不再测试 consumer-native workspace 的 8/16/32/64/128-row 谓词 rounding
   或同构 producer prefill；16 与 32 已给出流量/控制趋势，整块无谓词历史也已
   证明更大 padding 流量会回退。
2. 不把任何亚门槛结果组合进 submission；可靠 parent 保持 exact-v110。
3. 下一方向必须改变真实 Gate/Up/Down staging、MMA issue overlap 或跨 CTA 数据
   复用，而不是继续微调 `actual_rows` 的标量/谓词表达。

## 临时证据

- `/root/moe_runs/v110_wave_predicate_batch_eval.log`
- `/root/moe_runs/v110_wave_predicate_step2_wave_reads.log`
- `/root/moe_runs/v110_wave_predicate_step1_wave_store.log`
- `/root/moe_runs/v110_wave_predicate_native_wave_contract.log`
- `/root/moe_runs/v110_wave_predicate_batch_manifest.json`

上述 scratch 仅用于复现；本报告是持久结论。
