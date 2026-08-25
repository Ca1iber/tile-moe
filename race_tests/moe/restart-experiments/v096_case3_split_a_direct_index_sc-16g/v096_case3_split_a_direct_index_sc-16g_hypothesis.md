# v096 hypothesis

## Observation

v095 external OJ AC，但 Case3 的 static race verifier 对两个 high-half split-A 写入发出误报。反例声称 `actual_rows=0` 时 `64+i=-1`，与源码定义和 guard 均矛盾。推测 verifier 无法跨局部临时变量证明索引单射。

## Hypothesis

把 `input_row_*_hi = block_token // 2 + i_x_*_hi` 直接内联到 guard、目标和源索引中，应消除静态误报，同时生成与 v095 逐字节相同的设备代码。若三例 compiler log 均无 `Data race detected`，且三例 generated-device C++ 与 v095 byte-identical，则保留为 warning-free 等价候选。

## Falsifier

- 任一 compiler log 仍有 `Data race detected`；
- 任一官方 Case generated-device C++ 与 v095 不同；
- OJ allowlist/async/foreign gate 失败。
