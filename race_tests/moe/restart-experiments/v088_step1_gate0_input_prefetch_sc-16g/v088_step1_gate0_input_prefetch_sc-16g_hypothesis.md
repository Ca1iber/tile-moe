# v088 Step1 Gate0 后完整 input 预取假设

## Observed evidence

- v084 在 occupancy 不变、静态指令增加时仍显著缩短 Step2，证明 load 顺序与 load-use 距离具有因果影响。
- v086 用 tile-major input workspace 改善 Step1，但 Step1 仍为 2-wave，说明操作数供给与同步调度仍有余量。
- v087 原版被外部 OJ 判定为 WA，不能作为有效性能版本。
- v087C 通过显式 `T.clear(input_prefetch)` 修复未定义 tail fragment，并由用户确认外部 OJ AC；其完整 128-row input load 的位置为 `Gate0 -> Gate1 -> input -> Up0 -> Up1`。

## Verified bottleneck

当前候选只改变 Step1。v086 Case3 mcTracer 中 Step1 中位约 5.465 ms，占总 GPU 时间主体；prepack 约 0.243 ms，Step2 约 2.638 ms。

## Current hypothesis

将已定义的完整 input fragment 更早发出，可在随后的 Gate1、Up0、Up1 同步搬运期间等待全局加载完成，从而缩短 input load 到 MMA 消费路径上的 scoreboard 等待。

## Proposed mechanism

保持 v087C 的显式 fragment 清零和完整 predicated input load，仅把官方 tail-pruning 路径的顺序改为：

`Gate0 -> input(full 128 rows) -> Gate1 -> Up0 -> Up1`

不改变 FLOPs、逻辑/物理 workspace、grid、barrier 数、MMA 数、prepack、Step2 或 OJ 接口。

## Predicted metric changes

- Step1 时间下降；prepack、Step2 与 launch gap 不变。
- occupancy 仍为 2-wave；允许寄存器分配变化，但不得出现 spill。
- 三个官方 case 的端到端配对中位提升均应至少为 1.2%。

## Falsifying result

- 任一官方 case 正确性失败；
- 任一官方 case 长测提升低于 1.2%；
- mcTracer 表明收益不来自 Step1；
- generated C++/ISA 出现 async copy、foreign code、spill 或 occupancy 退化。

## Correctness and resource risks

- v087 原版已经证明 predicated MMA fragment 的未定义 lane 会导致外部 OJ WA，因此必须保留 v087C 的 `T.clear(input_prefetch)`。
- 更早发出完整 fragment 会延长其 live range，可能增加 MT 寄存器并降低 occupancy。

