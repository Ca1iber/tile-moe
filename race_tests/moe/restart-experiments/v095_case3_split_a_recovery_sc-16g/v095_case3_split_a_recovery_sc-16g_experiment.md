# v095 Case3 split-A recovery experiment

- Machine: MetaX C500 `sc-16g`
- Branch: `dorm`
- Correctness parent: external-OJ-AC v092
- Candidate SHA-256: `7e7f5b69a9a17fef7f6e155f7a07901af0e0aba9ec59edab788e6b4f15e90b8f`
- Parent SHA-256: `8d114ac3fb34b95835a977d4a67907d287bf0229a16e7a237a184451df428483`
- Promotion threshold: 1.2%

## Change

撤销 v093/v094 的 Case1 `A-before-Gate0` 路径，仅保留 v094 在官方 Case3 上的 split-A producer 调度。Case1/2 应回到 v092，Case3 应等同 v094。

## Protocol

1. 三个官方 Case 做完整 padded-output correctness，`rtol=atol=1e-2`。
2. Case3 使用同进程 AB/BA、7 rounds、W100/R100、device event 严格配对。
3. 捕获三个 Case 的 generated-device C++ 与编译资源。
4. 逐字节比较：Case1/2 对 v092，Case3 对 v094。
5. 对 Python source 与三份 generated source 执行 OJ allowlist/async/foreign gate。

## Result

三例 correctness PASS。Case3 七轮全部同向，中位改善 `-1.682413%`，均值 `-1.652613%`，pstdev `0.075883%`。代码生成三项逐字节比较均 PASS。用户于 2026-08-25 报告 exact candidate 外部 OJ **AC**，latency `[2.429, 3.977, 7.896] ms`，ratio `[0.822442, 0.823925, 0.819607]`。Case3 较 v092 快 1.473%，但 Case1 ratio 低于 v092，严格逐 Case 单调 gate 不允许晋级 `restart-submission`。
