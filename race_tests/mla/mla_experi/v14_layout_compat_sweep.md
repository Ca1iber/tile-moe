# v14 layout compatibility sweep

## 目的

扫 QK/PV MMA mapping 参数，验证是否存在自然兼容的 fragment layout，使 `T.copy(acc_s, acc_s_cast)` 可以绕过 `S_shared` 中转。

## 参数空间

- qk_k_pack: [1, 2, 4]
- qk_block_col_warps: [1, 2]
- pv_k_pack: [1, 2]
- pv_block_col_warps: [1, 2, 4]
- compile/bench case: case17 batch=8 kv_ctx=2048。

## 兼容结果

没有任何组合通过 direct `T.copy(acc_s, acc_s_cast)` 的编译。

## 汇总

- 总组合数：36。
- 编译兼容组合数：0。
- 编译失败组合数：36。
- 结论：在当前参数空间里，QK C accumulator layout 与 PV A operand layout 没有自然兼容组合；直接 fragment copy 路线暂时不现实。
