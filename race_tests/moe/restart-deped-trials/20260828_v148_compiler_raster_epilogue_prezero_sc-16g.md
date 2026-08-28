# v148 编译器、raster、epilogue 与计时预清零实验（sc-16g）

## 结论

- 父版本始终是 external-OJ SOTA `v148_allcase_silu_degree9_clamp55_sc-16g`，submission SHA256 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`。
- 本批全部只使用 OJ 可见的 TileLang primitive；没有 async copy、源码注入、foreign call、结果缓存、禁用竞态检查或 MXMACA 手写 builtin。
- 全部实测候选通过完整 padded-output correctness，`rtol=atol=1e-2`；但没有一个达到相对 direct parent 至少 `1.2%` 的晋级门槛。
- 因此不编号、不创建 submission、不移动 `dorm` 或 SOTA；以下方向均进入 `restart-deped-trials`。

正数表示候选更慢。统一端点协议为同进程 device-event AB/BA、3 rounds、warmup 10、repeat 20 或 30；各轮原始数据见同目录 JSON。

| 探针 | Case | 配对中位变化 | 结论 |
|---|---:|---:|---|
| MXCC `-enable_ldg_bsm_opt=1` | 2 | `+0.0794%` | 资源与主要 codegen 不变，noise/no-op |
| MXCC `-map-sched-select=map-ml` | 2 | `-0.1726%` | 门槛以下 |
| MXCC `-map-sched-select=map-ml` | 3 | `+0.0364%` | Case3 无复现，noise |
| Step2 双输出 epilogue 合并 | 2 | `+2.2927%` | 稳定回退 |
| Step1 `T.use_swizzle(panel_size=2)` | 2 | `+0.2644%` | 回退/noise |
| Step1 `T.use_swizzle(panel_size=2)` | 3 | `+2.3654%` | 稳定回退 |
| Step2 `T.use_swizzle(panel_size=2)` | 2 | `+0.6841%` | 稳定回退 |
| Step2 `T.use_swizzle(panel_size=2)` | 3 | `+0.5789%` | 稳定回退 |
| prepack 独立二维 padded-output 清零 | 2 | `+0.6004%` | 回退 |
| prepack native 地址融合清零 v2 | 2 | `+0.3766%` | 回退 |
| prepack native 地址融合清零 v2 | 3 | `+0.5187%` | 回退 |

## 1. 编译器选项

`-enable_ldg_bsm_opt=1` 与 `map-ml` 都通过源码校验、完整正确性和 codegen gate。Case2 三个 kernel 的资源均保持 prepack `78 MT / 11 ST / 6 waves`、Step1 `226 / 42 / 2`、Step2 `220 / 52 / 2`，8 个 MMA site、9 个 `__syncthreads`、0 个 async site。前者没有形成可测的 BSM 改写；后者仅在 Case2 出现 `0.17%` 的噪声级好转，并在 Case3 消失。禁止把这两个门槛下结果组合到新版本。

## 2. Step2 双输出写回合并

v148 的生成设备 C++ 已把每线程最终写回向量化为 `uint2`，即每次写 4 个 FP16；不存在继续扩大写宽的表面空间。探针把 `out_local_0` 与 `out_local_1` 的两个 16 次循环合为一个循环，使两次 `uint2` store 共享一次 `actual_rows` 谓词和行地址。

改动真实物化，资源仍为 Step2 `220 / 52 / 2`，生成源码略缩短；但 Case2 稳定回退约 `2.29%`。最合理解释是两条原本独立的展开写流被强制串在同一次迭代中，后端失去跨 store 流调度自由度。不要重试 paired output-store 的邻接语法变体。

## 3. CTA rasterization

v148 源码原本保留 `T.use_swizzle(10, enable=False)`。本批首次在 Case2/3 分别对 Step1、Step2 启用 panel-2：理论上相邻两个 M block 可在同一 N tile 上复用 184-row expert 的 Gate/Up 或 Down 权重，同时只保留两个 A block。

实际结果反证该假设：

- Step1 资源从 `226 MT / 42 ST` 变为 `228 / 36`，Case3 回退 `2.37%`；当前默认 N-fast 顺序对同一 M block 的 input reuse 更重要。
- Step2 资源从 `220 / 52` 变为 `228 / 40`，Case2/3 均回退约 `0.6%`；较小 A block 仍不足以覆盖 swizzle 地址映射和局部性损失。
- panel-2 已是最贴合两块 long expert 的最小非平凡 panel；更大 panel 会混合更多不同 expert/M block，没有新的复用机制。因此 rasterization 家族封口。

## 4. 计时内 padded-output 预清零

该实验遵循新增规则：清零完全由 submission 内 TileLang kernel 完成，发生在每次计时 `run_kernel` 内，无 warmup-only 工作和跨调用复用。目的不是删除 OJ 要求的 padding 零，而是把零写从高寄存器 Step2 移到已有 input-prepack kernel，保持总输出字节不变。

第一版使用独立 `T.Parallel(128,256)` 清零映射，令 prepack 从 `78 MT / 11 ST / 6 waves` 恶化到 `110 / 24 / 4`，Case2 回退 `0.60%`。第二版把零写融合进已有 native-copy 的 thread/row/column 映射，成功恢复 `78 MT / 6 waves`（ST 为 28），但 Case2/3 仍分别回退 `0.38%/0.52%`。这证明损失不只来自第一版寄存器 cliff；额外谓词、metadata 与 store 状态仍高于 Step2 少写 padding 的收益。

## 5. 对后续方向的约束

1. 权重全量预处理仍不划算：每次调用都必须计时，新增的权重 read+write 至少与一次 GEMM 权重流量同量级；本批唯一低成本“预处理搬移”也已回退。
2. 不要用后端 flag、CTA raster 或 epilogue 语法缩短作为“改变真实瓶颈”的替代物；它们已经产生终止性反证。
3. 若继续 normal track，必须减少真实 Gate/Up/Down 字节、改变可证明的跨 CTA 复用边界，或出现平台正式暴露且 OJ 合规的新硬件原语；不能组合本批噪声。

## 归档文件

探针源码：

- `v148_ldg_bsm_opt_probe.py`
- `v148_map_ml_probe.py`
- `v148_step2_paired_output_store_probe.py`
- `v148_step1_swizzle_panel2_probe.py`
- `v148_step2_swizzle_panel2_probe.py`
- `v148_prepack_padded_output_zero_probe.py`
- `v148_prepack_padded_output_zero_fused_probe.py`

同目录还保留各 Case AB/BA JSON 与 `*_resource_usage.json`，可复算表中结论。
