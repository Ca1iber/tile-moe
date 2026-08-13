# v030_step2_hybrid_half_b_pipeline_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g，MetaX C500 25% sGPU / 16 GiB quota
- 基线与父版本：v027_step2_input_pingpong_sc-16g
- 当前最佳：v030_step2_hybrid_half_b_pipeline_sc-16g
- Submission SHA-256：`d5626472193c2b59b18500d551ae9039ab1c787867d7ab0799f3dd5e30e83508`

## 假设卡

- 已观测证据：v027 Step2 使用单个 32 KiB shared B buffer，大量 global load、全 CTA barrier 和 MMA 串行；此前禁用的 v028l 证明 half-B pipeline 有收益，但依赖 OJ 禁止的 TVM/private emitter。
- 已验证瓶颈：v027 Case2 Step2 mcTracer 约 1.875 ms；mcProfiler 存在较高 VL1 分区 stall，MMA/MTE 活跃度不足以覆盖整个 wave lifetime。
- 当前假设：用 OJ 允许的 `T.import_source`、`T.call_extern`、`T.address_of` 和 `T.access_ptr` 内联 MXMACA BSM wrapper，可在保持资源/occupancy 不变时把 B1 global→shared 搬运与 B0 MMA 重叠。
- 拟采用机制：把 256x64 down tile 分成两个 128x64 half；高半 B1 使用 `memcpy_async<16>`，低半 B0 使用同步 `uint4` copy；显式保存并等待四个 barrier token。
- 预测：Step2 runtime、VL1 stall 下降；MMA/MTE duty 小幅上升；MMA 数量、寄存器、shared、occupancy 和 spill 不变。
- 证伪条件：三 Case 不正确；Case2 paired benchmark 不稳定；Step2 mcTracer 不降；出现 spill 或 occupancy 下降。
- 风险：BSM 的 half-buffer 地址/等待语义不对称；全异步 B0/B1 路径可能只破坏输出 tile 的前 128 列。

## 实施经过

- 先尝试两半全异步、单 token、四 token、立即 wait、宏内立即 wait，均出现 Case2 前 128 列错误。
- 同地址/同 swizzle 的同步 `uint4` probe 全正确，证明地址映射与数据布局本身正确。
- 缩小为 hybrid：B1 使用 async BSM，B0 使用显式同步 vector copy。该版本三 Case 全正确，并保留了 B1/MMA overlap。
- 仅对 `hidden=7168, intermediate=2048, experts=32` 启用，Case1/3 与官方 4/8-expert 配置走 v027 路径。
- Source snapshot：`v030_step2_hybrid_half_b_pipeline_sc-16g_custom_fusedmoe.py`
- Patch：`v030_step2_hybrid_half_b_pipeline_sc-16g.patch`
- 失败与诊断源码：`probes/`
- Accepted submission：`../../restart-submission/v030_step2_hybrid_half_b_pipeline_sc-16g/submission.py`

## 结果

- 结论：accepted。
- Case2 7 轮 AB/BA paired benchmark：7/7 更快，中位变化 `-0.87698%`。
- mcTracer Step2：3/3 更快，中位变化 `-2.77133%`。
- 资源不变，VL1 stall 四分区下降，MMA/MTE duty 小幅上升，符合假设方向。
- 证据报告：`../../restart-rep/v030_step2_hybrid_half_b_pipeline_sc-16g/v030_step2_hybrid_half_b_pipeline_sc-16g_report.md`
