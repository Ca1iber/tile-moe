# v091 Case2 A-first Step1 调度实验（16g）

## 1. 上版本遗留问题

v090 已由用户确认外部 OJ AC，Case2 为 `4.133 ms`；本地 mcTracer 中 Step1 约占 GPU timeline 的 63%，而 prepack、Step2 launch gap 均很小。v090 Case2 Step1 顺序为 `G0 -> G1 -> A -> U0 -> U1`，A 的同步 global load 在两个 Gate producer 后才发出，仍有改善加载/MMA 重叠的空间。

## 2. 问题原因分析

已验证结论：v090 Case2 Step1 无 private spill，`214 MT / 42 ST`、2 waves/PEU；因此不是 spill 或 occupancy 档位突降。此前把 A 从 Gate1 后移到 Gate0 后可得到约 0.6%–0.7% 稳定收益，说明 A 请求发射时间会影响 Step1。

当前推测：A 请求比 Gate/Up 权重请求更适合最早发出，因为后续四段权重 producer 能覆盖 A 的同步访存延迟。下一步需要验证的假设是：A-first 的收益能否在外部 OJ 复现，以及 Case2 后续是否还能缩短 A 的 live range 而不丢失提前发射收益。

## 3. 本版本解决方案

只对 Case2 把 odd tile 与 next-even tile 的 producer 顺序改为 `A -> G0 -> G1 -> U0 -> U1`。不改变逻辑字节、MMA、barrier、grid、workspace、shared layout 或数学计算。预期收益来自 A 与四段权重加载的有效覆盖；代价是更长的 A live range 和更高寄存器压力。

## 4. 具体落地策略

- 候选：`race_tests/moe/restart-experiments/v091_case2_a_first_step1_sc-16g/candidate_submission.py`。
- Case2 compile-time 开关：`use_case2_consumer_native_input`。
- 在 Step1 `k_pair` 的两个 producer 位置，把 native A loop 移到 Gate0 `T.copy` 前。
- Case1/3 路径不变；generated-device SHA 与 v090 逐字节相同。
- 无 async copy、foreign source、external call 或结果缓存。

## 5. Benchmark 对比

环境：MetaX C500 `sc-16g`，25% compute slice，16 GB VRAM；同进程 AB/BA device event。

| 版本 | 配置/协议 | 时间 | 相对上版本 | 相对 baseline | 备注 |
|---|---|---:|---:|---:|---|
| OJ baseline | Case2，官方外部 SPJ | 18.610 ms | baseline | baseline | 与本地 event 协议不同 |
| v090 | Case2，本地 7-round 对照，warmup100/repeat100 | 4.048205 ms | parent | TODO | exact local parent |
| v091 | Case2，同上 | 3.940142 ms | -0.108062 ms / -2.703969% | TODO | 7 轮全部 correctness PASS |

TODO：提交 exact v091 SHA 到外部 OJ，补齐同一官方协议下相对 `18.610 ms` baseline 和 v090 `4.133 ms` 的精确比较。

Case1/3 correctness PASS；两者 generated code 与 v090 完全相同，因此性能应视为不变。Case3 本次机器状态抖动明显，不用其 event 样本推断回退。

## 6. Profile 指标变化

| 指标 | v090 | v091 | 变化 | 解释 |
|---|---:|---:|---:|---|
| Case2 Step1 MT/ST | 214/42 | 226/42 | MT +12 | A live range 增长 |
| Step1 waves/PEU | 2 | 2 | 不变 | 未跨 occupancy 档位 |
| PrivateSize | 0 | 0 | 不变 | 无 spill |
| valid trace Step1 | 2.554880/2.544128 ms | 2.485248/2.438912 ms | -2.725%/-4.136% | 收益定位到 Step1 |
| valid trace total GPU | 4.063744/4.049920 ms | 3.998976/3.945728 ms | -1.594%/-2.573% | 端到端一致改善 |
| normal launch gap | 0.002816 ms | 0.002816 ms | 不变 | 不是 launch 优化 |

第一对 v091 trace 的三个 kernel 同时异常变慢，判为整次设备状态异常并保留原始记录，不用于因果判断。

## 7. 实验总结

方案有效。七轮 clean AB/BA 的 `2.704%` 中位收益和两组正常 mcTracer 的 Step1 缩短共同证明 A-first 改善了同步加载与 MMA 的覆盖。瓶颈仍在 Step1，且寄存器已经增至 226 MT；下一步应围绕“保持 A-first 发射、缩短其 live range/地址生成”继续，而不是重做 prepack、launch fusion 或 native loop 拆分。v091 已作为本地候选归档，外部 OJ 前不创建 `restart-submission`。
