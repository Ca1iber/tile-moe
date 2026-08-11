# v011_inverse_swizzle_bsm_sc-16g 实验记录

## 身份

- 状态：accepted_mechanism_not_global_best
- 机器：sc-16g
- 基线版本：v009_async_consumer_fence_sc-16g
- 父提交：`9d7a30ab`（v010 证据提交；kernel 内容恢复为 v009）
- 当前最佳：v004_step2_router_weight_register_reuse_sc-16g
- 最终子探针：v011c_combined_step1_token
- 最终 kernel SHA-256：`ca0890010c1c7ed5a5f3ba8488775bcb5f892558f4fbf5f2a1ec966844a92b32`

## 假设卡

- Observed evidence / 已观测证据：v009 为规避 BSM 直写 swizzle 错位，先异步搬到 identity staging，再同步 bridge 到 swizzled compute buffer。v010 证明 C500 BSM 采用固定 lane 路由；对 global 源 16-byte chunk 使用 `source_chunk = physical_chunk XOR (row mod 8)` 可让 32/64/128×64 三种 tile bit-exact。
- Verified bottleneck / 已验证瓶颈：v009 每 K 的 staging→swizzle bridge 增加 shared read/write 和 CTA barrier，Case3 明显慢于同步 v004。
- Current hypothesis / 当前假设：XOR 是自逆映射；逆置 global 源 chunk 后，BSM 可直接生成 MMA 所需的 shared 物理布局，删除 staging/bridge，并在当前 MMA 与下一 tile BSM 间形成真实 overlap。
- Proposed mechanism / 拟采用机制：先做单缓冲直写验证，再做 32 KiB ping-pong；wait 后保留通用 `T.sync_threads()`，MMA 后保留 consumer fence。最终把 Step1 gate/up 两条 BSM 的 token wait 合并。
- Predicted metric changes / 预测指标变化：bridge shared 指令消失；无 private spill；v011c 相对 v011b 的 Step1 barrier/arrive 减少，Case2/3 配对时间下降。
- Falsifying result / 证伪条件：任一 OJ case 错误；生成代码仍有 bridge；出现 spill/occupancy 下降；或三轮配对无稳定收益。
- Correctness and resource risks / 正确性与资源风险：XOR 规则绑定当前 fp16、K-contiguous=64 full-bank layout；token wait 不是 CTA rendezvous，因此 wait 后通用 barrier 不可删。

## 实施经过

- v011a：逆 swizzle 源地址 + 单 shared buffer。三 case 正确，但 load/wait/MMA 仍串行，OJ 为 3.959/10.235/19.754 ms。
- v011b：升级为 ping-pong buffer，保留 wait 后 CTA sync 与 consumer fence。OJ 为 3.962/7.813/15.217 ms；严格 Case3 配对均值相对 v009 从 16.0382 降到 15.2103 ms（-5.16%）。
- v011c：Step1 gate/up BSM 各自发射，但只等待合并后的最后 token，减少冗余同步。三轮交替配对相对 v011b：Case2 -0.60%，Case3 -2.15%。
- 相对计划的偏离：单缓冲未能产生 overlap，因此按预先约定演化为 ping-pong；合并 token 是在 ISA 显示冗余 barrier 后追加的同机制子探针。
- Source snapshot：`v011_inverse_swizzle_bsm_sc-16g_custom_fusedmoe.py`
- Patch：`v011_inverse_swizzle_bsm_sc-16g.patch`

## 结果

- 结论：accepted_mechanism_not_global_best。逆 swizzle 直写与 token 合并均被正确性、配对 benchmark、mcTracer 和 ISA 支持，但 N tile 减半导致 CTA 数翻倍，整体仍慢于 v004。
- 证据报告：`../../restart-rep/v011_inverse_swizzle_bsm_sc-16g/v011_inverse_swizzle_bsm_sc-16g_report.md`
