# v095 Case3 split-A recovery 优化报告

## 结论先行

v095 是从外部 OJ 三例 AC 的 v092 恢复出的候选：Case1/2 生成代码与 v092 完全相同，只把 v094 的 Case3 split-A 调度带回来。三例本地完整输出正确，Case3 严格配对中位提升 `1.682%`，达到 1.2% 候选门槛。用户已报告 exact candidate 外部 OJ **AC**。不过本次 Case1 官方 ratio 略低于 v092，严格逐 Case 单调 SOTA gate 不允许覆盖正式 `restart-submission`。

## 外部 OJ 已知事实

- v092：三例 AC，latency `[2.419, 3.977, 8.014] ms`，score ratio `[0.823043, 0.823925, 0.817403]`。
- v093：WA。
- v094：WA。
- v093 相对 v092 新增 Case1 A-first；v094 继承该路径后再新增 Case3 split-A。v095 因此撤销 Case1 风险路径，仅恢复 Case3 优化。

v095 外部 OJ：latency `[2.429, 3.977, 7.896] ms`，score ratio `[0.822442, 0.823925, 0.819607]`，display `[82, 82, 81]`。相对 v092，Case3 latency 改善 `1.472%`，Case2 持平，Case1 在逐字节相同 generated code 下出现 `0.413%` 计时回退。

## Benchmark

MetaX C500 `sc-16g`，同进程 AB/BA，device event。

| Case | 协议 | Parent | Candidate | Paired change | 判定 |
|---:|---|---:|---:|---:|---|
| 1 | fullcheck, W3/R2 | 2.406528 ms | 2.406656 ms | +0.005320% | generated-identical 噪声 |
| 2 | fullcheck, W3/R2 | 3.967232 ms | 3.944704 ms | -0.567850% | generated-identical，短测仅作 correctness |
| 3 | fullcheck, W3/R2 | 7.923968 ms | 7.851648 ms | -0.912674% | correctness smoke |
| 3 | 7 rounds, W100/R100 | — | — | **-1.682413% median** | 7/7 同向，过 1.2% 门槛 |

Case3 七轮：`[-1.700442, -1.475218, -1.631507, -1.699222, -1.677739, -1.701748, -1.682413]%`；均值 `-1.652613%`，pstdev `0.075883%`。

## Correctness / compliance

- 三个官方 Case 完整 padded-output PASS，`rtol=atol=1e-2`。
- Python source 与三份 generated-device source OJ gate PASS。
- 无异步 copy、foreign source、extern/packed escape、结果缓存或 hack。
- Candidate SHA-256：`7e7f5b69a9a17fef7f6e155f7a07901af0e0aba9ec59edab788e6b4f15e90b8f`。

## Codegen identity

| Case | v095 generated SHA-256 | 比较对象 | byte cmp |
|---:|---|---|---|
| 1 | `c61cd69d820fd112dbefde907f8ac8346bf80c225c8eb218f302eb51cd9d64a7` | v092 Case1（外部 OJ AC） | PASS |
| 2 | `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e` | v092 Case2（外部 OJ AC） | PASS |
| 3 | `d627d221d94cf8f2a48de61f9e3b8371bfa15856fed6d519451a00ac0dc3f19e` | v094 Case3（已 profile） | PASS |

资源：Case3 Step1 为 `226 MT / 54 ST / 2 waves per PEU`，无 static shared/private spill 报告。

## Profile evidence reuse

因为 v095 Case3 generated-device C++ 与 v094 Case3 逐字节相同，v094 的 Case3 profile 可直接归因到 v095：Step1 中位变化 `-2.985075%`，Step2 `-0.155415%`，GPU span `-2.012170%`。收益来自 Step1 请求时序/延迟覆盖，而不是 launch gap。对应 mcTracer、mx-smi 与 ISA 证据保留在 v094；v095 目录复制了相关 trace 摘要并明确标记复用关系。

## Verdict

状态：`external_oj_accepted_not_promoted`。外部 OJ 正确性已通过，Case3 优化也成立；但本次 Case1 ratio `0.822442 < 0.823043`，违反严格逐 Case 单调 SOTA gate。v092 保持正式 SOTA；可用 exact v095 重测以排除同代码计时噪声。
