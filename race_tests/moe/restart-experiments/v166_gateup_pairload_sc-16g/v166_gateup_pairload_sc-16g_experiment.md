# v166 Gate/Up paired-load experiment（sc-16g）

## Observed evidence

v160 的 Case2/3 long Step1 已采用统一 M192/M128 hybrid 结构，但 long Step1 的 Gate 与 Up 权重仍按 `Gate load/store -> Up load/store` 串行 staging。权重 global latency 会直接暴露在 shared store 依赖链上。

## Verified bottleneck

v160 Case2 Step1 的主要改进空间不是改变总 global bytes，而是在保持相同 grid、tile、shared 和寄存器档位的前提下缩短 wave lifetime、提高 MMA 发射占比。

## Current hypothesis

若每线程先发出独立的 Gate/Up 128-bit 读取，再依次写回 shared，硬件可以同时维护两个独立 global read，从而隐藏一部分权重读取延迟。

## Proposed mechanism

增加 `copy_step1_gate_up_half` macro：每线程分别将 8 个 Gate 和 8 个 Up FP16 元素读入两个短生命周期 local vector，再按 Gate/Up 顺序写入原有 swizzled shared。数学、barrier、tile geometry、global bytes 和输出不变。

## Predicted metric changes

- Step1 average wave life 下降；
- MMA duty 上升；
- global bytes、waves 和寄存器驻留档位基本不变；
- 端到端 Case2/3 延迟改善。

## Falsifying result

任一官方 Case 正确性失败、生成代码未保留相邻 Gate/Up 独立读取、出现 async-copy/foreign call/spill、正式 AB/BA 改善不足 `1.2%`，或外部 OJ 相对 v148 任一 Case 回退，均否决晋级。

## Correctness and resource risks

- 两个 local vector 可能延长 live range、增加寄存器压力；
- load/store 重排可能触发 TileLang race checker 或改变边界行行为；
- 本地性能不能替代外部 OJ 三 Case 单调门禁。

## Outcome

- exact candidate SHA256：`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`。
- 全三 Case 正确性 PASS，源码/生成 C++/最终 ISA 合规检查 PASS，无 spill。
- 相对外部 OJ SOTA v148 的本地正式 AB/BA 均值：Case1 `-8.0110%`、Case2 `-12.3171%`、Case3 `-12.8408%`。
- 结论：强 external-OJ candidate，但外部 OJ 数值尚缺，状态保持 `local-candidate-external-oj-pending`，不得提前创建 `restart-submission/v166...`。
