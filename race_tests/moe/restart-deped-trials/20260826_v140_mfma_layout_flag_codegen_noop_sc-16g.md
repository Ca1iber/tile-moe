# 2026-08-26 v140 MFMA layout flag codegen no-op

## 结论

拒绝，不计时，不移动 v110 SOTA。把 inline `T.tvm_mfma` 的第二个布局标志
从 `row` 改成 `col` 后，三个官方 case 的完整 generated device source 都与
v110 字节级一致，因而该变化不可能带来真实性能收益。

## 关键证据

- OJ 源码静态校验通过，三个 case 均编译通过。
- Case1 父子生成码 SHA256 同为 `bcaea2c2...f2da14`，30,746 bytes。
- Case2 父子生成码 SHA256 同为 `08529581...75565c`，28,449 bytes。
- Case3 父子生成码 SHA256 同为 `b3f51feb...9d7c2`，28,449 bytes。
- 三组 `cmp` 都返回 0；寄存器和静态 wave 上限完全一致。
- MetaX codegen 只用 `row/col` 做“至少一个 row”的合法性检查；最终 builtin
  名称仅由 shape/type prefix 决定，布局字符串没有参与指令选择。

## 为什么不做 AB/BA 和 profile

父子设备程序完全相同，任何 timing 差异都只能来自噪声。继续跑 AB/BA、
mcProfiler 或 mcTracer 既无法跨过 1.2% 候选门槛，也会制造误导性记录。

## 关闭范围与重开条件

关闭当前 MetaX 后端上的“只改 MFMA row/col 字符串”方向。若以后后端新增
layout-dependent MFMA builtin，或物理 shared/fragment 重排能够生成不同代码且
不增加转置流量，才重开。

## 证据位置

- `restart-experiments/v140_mfma_layout_flag_codegen_noop_sc-16g/`
- `restart-rep/v140_mfma_layout_flag_codegen_noop_sc-16g/`
- `restart-scripts/v140_mfma_layout_flag_codegen_noop_sc-16g/`
- `moe-roofline/v140_mfma_layout_flag_codegen_noop_sc-16g/`
