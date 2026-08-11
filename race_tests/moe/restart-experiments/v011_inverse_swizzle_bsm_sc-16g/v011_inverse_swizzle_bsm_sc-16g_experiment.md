# v011_inverse_swizzle_bsm_sc-16g 实验记录

## 身份

- 状态：closed / rejected as production / accepted as mechanism
- 机器：sc-16g
- 基线版本：v009_async_consumer_fence_sc-16g
- 父版本：v010 证据提交 `9d7a30ab`；kernel 内容为 v009 `6aed14df`
- 当前最佳：v004_step2_router_weight_register_reuse_sc-16g
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，最终子探针 v011c 为 `ca0890010c1c7ed5a5f3ba8488775bcb5f892558f4fbf5f2a1ec966844a92b32`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v009 为了规避 async→swizzled 错误，先把权重 BSM 到 identity staging，再由全部线程同步搬到 swizzled compute。v010 低层探针证明生成的 BSM dst 已含 full-bank swizzle 地址，但 C500 BSM 实际按 lane 固定路由；原生 tileop 在 32/64/128×64 上均有 87.5% 元素错位。对 global 源 8-half chunk 应用 `source_chunk = physical_chunk XOR (row mod 8)` 后，三种尺寸均 bit-exact。
- Verified bottleneck / 已验证瓶颈：v009 每 K 为 wait→CTA sync→16/32 KiB staging-to-swizzle bridge→CTA sync→next async→MMA；桥接增加 shared read+write 指令和同步，抵消了 async/MMA overlap，Case3 OJ 仍为 14.1066 ms，而 v004 为 10.6537 ms。
- Current hypothesis / 当前假设：full-bank swizzle 的 chunk 映射是 XOR 且自逆。保持硬件 identity lane 写入，只重排 global 源 chunk，可让物理 shared 直接成为 MMA 所需 swizzle；删除 staging buffer、bridge copy 和 bridge 后 barrier 后，async 预取能在当前 compute tile MMA 期间真正重叠。
- Proposed mechanism / 拟采用机制：增加一个低层 16-byte `tl.maca_memcpy_async` helper。Step1 gate/up 与 Step2 down 各使用单个 swizzled shared buffer；每线程按 identity physical chunk 计算 row/col，将 global 源 col chunk XOR row%8 后发 BSM。保留每轮 async wait 后的通用 `T.sync_threads()`，并在 MMA 后保留 consumer fence，避免覆盖仍在读取的 tile；先实现单缓冲直写验证，再视正确性演化成 ping-pong。
- Predicted metric changes / 预测指标变化：生成 C++ 不再出现 staging→compute 的 uint4 shared load/store loop；动态 shared 从 32 KiB 降到 Step1 16 KiB、Step2 16 KiB；MT/ST register 不高于 v009；每 kernel 静态通用 sync 预计仍为 2，但 shared 指令与 bridge 时间下降，MTE/MMA overlap 和 VLS feed 改善。
- Falsifying result / 证伪条件：任一 OJ case 错误；生成代码仍保留桥接 copy；最终 ISA 出现 spill/occupancy 下降；或 paired OJ 三轮相对 v009 未获得稳定收益。
- Correctness and resource risks / 正确性与资源风险：XOR 公式只适用于当前 fp16、K-contiguous=64 的 full-bank layout；Step1/Step2 tile 行数不同但 row%8 规则相同。BSM token 变量只保存每线程最后一次 copy，必须确认硬件 token 对该线程此前 BSM 指令具有累计完成语义。单 buffer 在 MMA 后重写前需要 consumer barrier，否则 next async 会覆盖尚未读完的数据。

## 实施经过

- 实际改动：先实现 inverse-source swizzle 单缓冲直写（v011a），再演化为 K-even/K-odd ping-pong（v011b）；最终 v011c 让 Step1 gate/up 共用一个完成 token，减少重复 wait/barrier。三种源码均保存在 `subprobes/`，当前关闭态 kernel 为 v011c。
- 相对计划的偏离：单缓冲只能验证布局正确性，无法形成跨 K overlap，因此增加 ping-pong；v011b 的 Step1 两个完成 token 仍产生重复同步，进一步合并为 v011c。没有修改 benchmark 语义、K tile 或线程数。
- Source snapshot：`subprobes/v011c_combined_step1_token.py`
- Patch：由 v011a/v011b/v011c 三个子探针和当前提交 diff 共同记录。

## 结果

- 结论：rejected as production / accepted as mechanism。inverse-source swizzle 让 BSM 可直接把 global 权重写成 MMA 需要的 swizzled shared，最终 C++/MetaX ISA 中存在真实 async copy，且无 staging→swizzle bridge、无 private spill；v011c 相比 v011b 的 Case3 三组配对均值由 15.1875 ms 降至 14.8614 ms（-2.15%）。但完整 OJ 10/100 为 3.9158/7.2941/15.0083 ms，相对当前最佳 v004 慢 28.04%/33.96%/40.91%；官方两项 103.1685/31.3286 ms，相对 v004 慢 28.60%/23.42%。因此该版本只作为可运行 async 数据通路 checkpoint，不能替换 v004。
- 资源与阶段：Case3 Step1/Step2 均为 32 KiB shared，114/126 MT register、4 warps/PEU、无 spill；mcTracer 为 10.171648/4.545536 ms，主要损失来自 half-N 后 grid 翻倍，而非 64 KiB shared。
- 下一步：保持 32 KiB，但恢复 v004 的宽 N tile 与原 grid；让同一 CTA 内的两个相邻 N half 轮流充当 producer/consumer，以空间拆分承载 overlap。
- 证据报告：`../../restart-rep/v011_inverse_swizzle_bsm_sc-16g/v011_inverse_swizzle_bsm_sc-16g_report.md`
