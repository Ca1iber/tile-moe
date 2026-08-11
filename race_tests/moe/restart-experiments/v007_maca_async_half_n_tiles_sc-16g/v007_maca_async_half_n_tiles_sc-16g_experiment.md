# v007_maca_async_half_n_tiles_sc-16g 实验记录

## 身份

- 状态：initialized / hypothesis locked before kernel edit
- 机器：sc-16g
- 基线版本：`v006_maca_async_copy_sc-16g`
- 父版本：Git `17894748`
- 当前最佳：`v004_step2_router_weight_register_reuse_sc-16g`
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，v006 `215c3ec9f38089928e96d139a5601e16e251461da1146084375a2abb0904f6c5`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v006 已通过 lowering/C++ 证明手工 ping-pong 产生真实 `memcpy_async<16>` 与跨 parity MMA overlap，并通过全部正确性；但 Case3 Step1/Step2 为 18.319/9.317 ms。每 block dynamic shared 由 v004 的 32 KiB 增到 64 KiB；MT register 为 182/202，staticMaxWarps/PEU 仍为 2。mcProfiler 平均指令阶段延迟比 v004 增加 9.07x/6.13x，MMA duty 仅 16.75%/16.29%。
- Verified bottleneck / 已验证瓶颈：64 KiB 双缓冲 footprint 与 async-compatible row-major shared load 的长延迟吞掉了 overlap 收益；与此同时 Step1/Step2 仍保留 128 个 FP32 accumulator 量级，Step2 还保留 128 个 FP16 weight fragment。最终 ISA 已证明无 private spill，因此目标不是“修 spill”，而是缩短 live range、降低 MT 使用并争取更多可运行 wave/更高 duty。
- Current hypothesis / 当前假设：将 Step1 输出 N tile 128→64、Step2 输出 N tile 256→128 后，双缓冲权重 shared 恢复到 32 KiB，accumulator 和 weight fragment 均约减半。即使 N-grid 翻倍，较低 shared/寄存器压力和较短 row-major shared load 序列应显著降低 v006 的等待成本，并让 async/MMA overlap 开始兑现。
- Proposed mechanism / 拟采用机制：只修改 `RoutedMoEKernel` 默认 Step1 `block_dexpert=64` 与 Step2 `block_dhidden=128`，保留 v006 已验证正确的 identity layout、双 buffer、barrier parity 和 router-weight 寄存器复用；不同时更改 K tile、线程数或调度，以便建立因果对照。
- Predicted metric changes / 预测指标变化：dynamic shared 65536→32768 B；Step1/Step2 MT register 显著降到约 100–140；private 仍为 0；每个 block 静态 MMA 与 shared-load 指令约减半、grid.x 翻倍。Case3 两阶段时间应比 v006 至少下降 25%，MMA duty 回升、平均指令阶段延迟下降。若 staticMaxWarps 提升到 3–4，则可能出现更大收益。
- Falsifying result / 证伪条件：若 correctness 通过且资源按预测下降，但 Case3 runtime 未改善超过 10%，则 64 KiB/寄存器不是 v006 主要退化原因，row-major bank/transaction 行为才是首要问题；届时继续研究 async-compatible layout 或 shared-to-shared transform，而不是继续盲目缩 tile。
- Correctness and resource risks / 正确性与资源风险：N-grid 翻倍会增加 block 调度、重复读取 input/up_logits 和写回边界处理；更小 N tile 可能让每 block MMA 不足以隐藏 async wait；现有 emitter 对 64/128 N tile 的 warp layout 必须在 lowering/C++ 中确认。先跑三组 OJ correctness，再看 C++/ISA resources，最后 benchmark/profile。

## 实施经过

- 实际改动：仅把 Step1 `block_dexpert` 128→64、Step2 `block_dhidden_step2` 256→128；保留 v006 的 identity layout、手工 parity async pipeline、K tile、256 threads、grid transpose 和 router-weight register reuse。
- 相对计划的偏离：无。正确性后先导出 lowering/C++/resource，再做 OJ/official、mcTracer、mcProfiler、RoofLine 和最终 ISA。
- Source snapshot：`v007_maca_async_half_n_tiles_sc-16g_custom_fusedmoe.py`
- Patch：`v007_maca_async_half_n_tiles_sc-16g.patch`

## 结果

- 结论：rejected as production，accepted as causal repair。三组 OJ 比 v006 改善 27.42%/28.94%/29.04%，32 KiB shared 与 112/120 MT register、staticMaxWarps 4 均兑现预测；但仍比当前最佳 v004 慢 92.58%/87.51%/84.20%。
- 后续：mcProfiler 显示 wave life 已回到甚至略优于 v004，但 WSM stall 比 v004 高 6.65x/4.00x，MMA duty 仍只有 23.91%/22.69%。下一版不再继续缩 tile，而是保持 32 KiB：用一个 identity async staging buffer + 一个 swizzled compute buffer，将下一 K tile 异步搬入 staging 的同时在 swizzled buffer 上 MMA，以 shared-to-shared transform 换回低冲突的 MMA 读取。
- 证据报告：`../../restart-rep/v007_maca_async_half_n_tiles_sc-16g/v007_maca_async_half_n_tiles_sc-16g_report.md`
