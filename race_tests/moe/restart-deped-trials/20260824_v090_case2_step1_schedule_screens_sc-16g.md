# 2026-08-24 v090 Case2 Step1 调度筛选（sc-16g）

Parent 为 exact v090。全部候选先做完整 padded correctness，再按 AB/BA device-event 测量；用户候选门槛为至少 `1.2%`。

| Screen | Paired median change vs v090 | Verdict |
|---|---:|---|
| native input 1+3 continuous split around Gate1 | +1.8438% | reject |
| native input 2+2 continuous split around Gate1 | +1.3970% | reject |
| native input 3+1 continuous split around Gate1 | +1.7463% | reject |
| row-group input interleave around Gate1/Up0 | +1.4916% | reject |
| wave-aligned tail loads | +0.2919% | reject |
| guard Step1 SwiGLU epilogue by actual_rows | -0.1914% median with one system outlier | real effect below threshold |
| `native_vec` serial -> unroll | -0.0245% | codegen/resource-neutral no-op |
| safe full A after Gate0 | about -0.64% on stable samples | below threshold |
| `G0 -> A -> U0 -> G1 -> U1` | -0.6052%, pstdev 0.0669% | stable but below threshold |
| `G0 -> U0 -> A -> G1 -> U1` | about -0.876% on four stable samples | stable but below threshold |
| `A -> G0 -> G1 -> U0 -> U1` | -2.7040%, pstdev 0.0731% over formal seven rounds | promote as v091 candidate |

## 结论

拆分 native copy loop 会增加控制与地址生成开销，不能复用旧 row-major 的半行交错。有效线索是把完整 A 请求尽可能早地发出，使其延迟被四个 Gate/Up producer 覆盖。A-first 增加 Step1 MT 寄存器 `214 -> 226`，但仍保持两 wave 且无 spill，因而兑现为稳定的 Step1 和端到端收益。

被拒方向只记录在本文件，不创建额外版本或分支。
