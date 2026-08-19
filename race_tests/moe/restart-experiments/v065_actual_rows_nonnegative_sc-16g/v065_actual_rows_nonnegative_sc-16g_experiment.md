# v065_actual_rows_nonnegative_sc-16g 实验记录

## 身份

- 状态：rejected-noop
- 机器：sc-16g
- 基线/当前最佳：v062
- 候选 SHA-256：`e84989132787ebf438cc65c043000b4ec91cb244ecb468f033e1fa0068c370fc`

## 假设与机制

`group_idx_for_bx` 只包含实际创建的 padded block，因此 `group_size - token_offset >= 0`。本版本移除 Step1/Step2 `actual_rows` 计算中理论上冗余的 `T.max(0, ...)`，预测减少整数 clamp/address 指令。

## 结果

- OJ source gate PASS；三个官方形状独立参考正确性 PASS，最大 `max_abs=0.001953125`，`padding_max=0.0`。
- v062 与 v065 的 Case2 generated device C++ SHA-256 完全相同：`6fdee4ae...25b220`。
- 资源也完全相同：Step1/Step2 216/230 MT registers，2 waves/PEU。
- 结论：编译器早已消除非负 clamp，本修改是 lowering no-op。无需 benchmark/profile；rejected，不更新 submission。
