# v096 warning-free direct-index 候选报告

## Outcome

v096 成功消除了 v095 Case3 的两条 static data-race warning，且三个官方 Case 的 generated-device C++ 均与 v095 逐字节相同。它不是新的性能优化版本，而是更干净、便于重投 OJ 的源码等价版本。

## Change

把两个 `input_row_*_hi` 临时变量直接展开为 `block_token // 2 + i_x_*_hi`，让 verifier 在同一个表达式中看到并行索引到写地址的单射关系。未使用 `TL_DISABLE_DATA_RACE_CHECK`，也未关闭任何安全检查。

## Evidence

| Case | generated SHA-256 | vs v095 | Data-race warning |
|---:|---|---|---|
| 1 | `c61cd69d820fd112dbefde907f8ac8346bf80c225c8eb218f302eb51cd9d64a7` | byte-identical | absent |
| 2 | `717d9d4699c0c98d94ade731eb43b02d0b10b05cbbcff7403e31f746869f9d9e` | byte-identical | absent |
| 3 | `d627d221d94cf8f2a48de61f9e3b8371bfa15856fed6d519451a00ac0dc3f19e` | byte-identical | absent |

Case3 resources remain `226 MT / 54 ST / 2 waves per PEU`; no async copy or foreign source appears. v095 的完整 correctness、7 轮严格配对、mcTracer、ISA 与外部 OJ AC 结果均可由 exact generated identity 继承。

## Verdict

外部 OJ 三例均 AC，但相对 v095 三例全部轻微回退：

| Case | v095 | v096 | latency change | v096 score ratio |
|---:|---:|---:|---:|---:|
| 1 | 2.429 ms | 2.454 ms | +1.029% | 0.820941 |
| 2 | 3.977 ms | 3.998 ms | +0.528% | 0.823160 |
| 3 | 7.896 ms | 7.937 ms | +0.519% | 0.818840 |

因为三例 generated-device C++ 均逐字节相同，这种同方向整体位移不能归因于 direct-index 源码改写，应视为本次 OJ 环境/计时波动；但正式 SOTA gate 只认平台数值，不允许用该解释豁免回退。

状态 `rejected_external_oj_regression`。v096 不创建 `restart-submission`；v092 保持正式 SOTA。warning-cleanup 在源码质量上成立，但没有形成可晋级的性能版本。
