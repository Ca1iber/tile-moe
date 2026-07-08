# MoE inline MFMA 实验记录（64g）

## 目的

验证在 OJ 不允许导入 `tilelang.intrinsics.maca_mma_macro_generator` 的情况下，将 MACA MFMA emitter 的 MoE 必需路径内联到 `run_kernel`，是否可以恢复手写 GEMM 性能。

## 实现

- 提交入口仍为题面规定的 10 参数 `run_kernel`。
- 不导入 `maca_mma_macro_generator`。
- 不使用 `tvm.tir.IndexMap.from_func`，避免 OJ guard 将其拦截为 `None`。
- 在 `run_kernel` 内部定义 `MinimalMacaMMA`。
- 保留 MoE SOTA 所需路径：
  - `make_mma_load_layout`
  - `make_mma_store_layout`
  - `ldmatrix_b`
  - `mma`
  - `T.tvm_mfma`
- B operand shared tile 保留 `make_swizzled_layout`，这是性能关键点。

## 正确性

64g 机器上运行：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/test_submission_quick.py
```

结果：

- 2 个 quick case 均 PASS。
- padding 行输出最大绝对值为 0。

## 性能对比

测试脚本：

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/experiments/inline_mfma_64g/compare_moe_variants_64g.py
```

口径：

- 机器：64g
- pre-routed fused MoE
- warmup=10
- iters=100
- 同一组输入对比 `inline_mfma`、`private_emitter`、`fullrow_tgemm`

| case | hidden | intermediate | experts | valid rows | padded rows | inline MFMA | private emitter | FullRow T.gemm | inline/private | inline/FullRow |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | 2048 | 8192 | 16 | 2272 | 3072 | 3.525665 ms | 3.599314 ms | 4.741143 ms | 1.021x | 1.345x |
| 2 | 7168 | 2048 | 32 | 4544 | 8192 | 8.258348 ms | 8.273766 ms | 11.330535 ms | 1.002x | 1.372x |
| 3 | 7168 | 2048 | 64 | 9088 | 16384 | 16.479823 ms | 16.455293 ms | 22.675647 ms | 0.999x | 1.376x |

## 结论

inline MFMA 版本在 64g 机器上基本追平 private emitter SOTA，并明显快于 OJ-compatible FullRow T.gemm 版本。

该版本不依赖 OJ 禁止的 `maca_mma_macro_generator`，是当前更适合提交的 MoE 版本。

详细数据：

```text
race_tests/moe/experiments/inline_mfma_64g/compare_inline_private_fullrow_64g.csv
```
