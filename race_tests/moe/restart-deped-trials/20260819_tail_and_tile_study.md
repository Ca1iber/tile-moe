# MoE v59 深入研究记录（2026-08-19）

## 范围

基线为远端 `dorm` 当前 v59 candidate，commit `014ffcda`（kernel 基线沿用 v059/79.33）。本记录只保存研究结论，不创建实验版本、分支或 `restart-submission`。

## v59/v060 actual_rows 审计

Case2/Case3 的官方诊断 metadata 为每个 expert 100 行或 184 行；每个 expert 使用 128 行物理 block。Case3 的 96 个 block 分布为：32 个 100 行 block、32 个完整 128 行 block、32 个 56 行尾 block。

v59 生成设备代码已经对 activation/up_logits load 和 MMA warp 使用 `actual_rows` 裁剪；gate/up/down 权重仍按完整 tile 加载。C500 MMA 行粒度为 32，v060 归档报告也确认了这一点。因此当前局部 kernel 优化不能消除全部物理 padding 工作。

## 实验 A：tail/full tile 专门化

所有原型均使用 Case3 correctness，对有效区域和 padding 区域均通过（`valid_max_abs=0`, `padding_max_abs=0`）。这些 wrapper 原型仅用于机制研究，不是 OJ submission。

| 变体 | 结果 |
|---|---|
| 同一 kernel 内 full tile 改成 `T.copy` | Step2 慢约 9.69%，寄存器 230→236 |
| 三 kernel 拆分 100/128/56 | 总 kernel 约 10.205 ms，基线约 9.244 ms，慢约 10.4% |
| 两 kernel 拆分（100/56 尾部 + 128 full） | 总 kernel 约 9.587 ms，基线约 9.293 ms，慢约 3.16% |

结论：拆分后每个 grid 变小，调度/资源利用和额外 launch 成本超过动态判断节省；不能直接推进。

## 实验 B：Step2 更大输出 tile / 权重复用

Case3 correctness 均通过，配对 profile 为单轮快速筛选：

| `block_dhidden_step2` | Step2 时间 | 资源现象 |
|---:|---:|---|
| 128（基线） | 约 3.34 ms | 230 registers/thread |
| 192 | 13.21 ms | 256 registers/thread，208 private memory |
| 256 | 24.33 ms | 256 registers/thread，1244 private memory |

结论：当前 128 tile 已处在资源可行区间上限附近，继续扩大 tile 会触发 private/register spill，不可推进。

## 当前决策

- 所有上述候选均未达到 1.2%，没有创建版本、分支、submission 或修改 `dorm`。
- 下一研究方向应保持 tile/线程配置不变，继续检查同步预取和权重 staging 顺序对 VL1/vector-load pipeline stall 的影响。
