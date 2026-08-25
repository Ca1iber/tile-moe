# v095 hypothesis

## Observation

外部 OJ 已确认 v092 三例 AC，而 v093、v094 均 WA。相对 v092，v093 唯一新增的执行路径是 Case1 `A-before-Gate0`；v094 继承该路径并仅为 Case3 增加 split-A。因而 v094 的 WA 很可能来自 Case1，而其 Case3 split-A 性能结果仍可独立恢复和验证。

## Hypothesis

以外部 OJ AC 的 v092 为正确性父版本：Case1/2 恢复为 v092 的生成路径，只在 Case3 启用 v094 的 `A-low -> Gate0 -> A-high -> Gate1 -> Up0 -> Up1`。若 Case1/2 generated-device C++ 与 v092 逐字节一致、Case3 与 v094 逐字节一致、三例完整 padded-output 正确，且 Case3 相对 v092 的严格配对中位改善至少 1.2%，则保留为待外部 OJ 验证候选。

## Falsifier

- Case1/2 generated-device C++ 与 v092 不一致；
- Case3 generated-device C++ 与已测 v094 不一致；
- 任一官方 Case 完整 padded-output 错误或 OJ 合规门禁失败；
- Case3 七轮配对中位改善小于 1.2%；
- 外部 OJ 返回 WA。外部 OJ 在任何本地证据之上具有否决权。
