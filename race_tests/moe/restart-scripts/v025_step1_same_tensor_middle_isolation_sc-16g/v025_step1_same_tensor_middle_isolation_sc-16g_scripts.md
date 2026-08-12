# v025_step1_same_tensor_middle_isolation_sc-16g 脚本说明

## 本版本实际使用脚本

| 文件 | 用途 | 主要参数/输出 |
|---|---|---|
| `run_compile_order_balanced_oj.py` | 隔离源码效果、编译槽位与测量位置偏差 | Case2；四个独立实例；Latin rotation；JSON 结果 |
| `dump_tilelang_codegen.py` | 保存生成 C++ 和资源报告 | Case2 up-middle、gate-middle |
| `/tmp/ako4all-c500/scripts/extract_mxmaca_isa.py` | 从生成代码提取后端汇编和资源摘要 | `isa/up_middle`、`isa/gate_middle` |

其余初始化模板脚本未执行，不把它们标记为本版本证据。

## 关键命令（已去除凭据）

```bash
PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python \
  race_tests/moe/restart-scripts/v025_step1_same_tensor_middle_isolation_sc-16g/run_compile_order_balanced_oj.py \
  --parent-source /root/moe_runs/v025_step1_same_tensor_middle_isolation/v024_parent.py \
  --candidate-source /root/moe_runs/v025_step1_same_tensor_middle_isolation/v025_up_middle.py \
  --output /root/moe_runs/v025_step1_same_tensor_middle_isolation/v024_vs_up_middle_compile_order_balanced_rep3.json \
  --rounds 4 --warmup 5 --repeat 500

mx-smi --show-clock --show-clk-tr --show-hbm-bandwidth --show-board-power
```

## 平衡方法

1. 关闭 TileLang cache。
2. 按 parent-first、candidate-second、candidate-first、parent-second 顺序构造四个实例。
3. 验证四个实例的正确性和生成代码 SHA。
4. 使用四阶 Latin rotation 改变每轮测量位置。
5. 计算 `sqrt((candidate_second/parent_first) * (candidate_first/parent_second)) - 1`。
6. 跨独立进程重复，并用 mx-smi 确认 XCORE 进入 1125 MHz 稳态。

## 产物核对

- [x] 屏幕正确性日志
- [x] OJ Case2 多协议原始 JSON/日志
- [x] mx-smi 运行态抽样
- [x] generated device C++、资源报告、汇编摘要与 `.metax.s`
- [x] 候选源码和 parent→candidate patch
- [ ] 官方 benchmark（acceptance gate 失败，未执行）
- [ ] mcTracer/mcProfiler（acceptance gate 失败，未执行）
- [ ] 新 Roofline 图（理论点与 v024 相同，未重复生成）
