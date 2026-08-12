# v029_step2_full_b_pipeline_sc-16g 实验记录

## 身份

- 状态：rejected
- 机器：sc-16g（MetaX C500，25% compute slice，16 GiB quota）
- 分支 / 父提交：`dorm` / `1f4b98b42c772a3a66c3eecd8dcb3c4eb01d1358`
- baseline：`v000_minibs_baseline_sc-16g`
- 父版与当前最佳：`v028_step2_half_b_pipeline_sc-16g` 的 v028l
- 父版 SHA-256：`385510c606a6392a9aaf3bf62542df652176f7d32649ec46c8dce3d35d12b858`
- 最终候选 v029o SHA-256：`fe14ee16a485fbd40644b03186b34f29913f8bc70c7b481b2754de71653b3c94`
- 当前安装的 `custom_fusedmoe.py` 仍为 v028l，v029o 未覆盖当前最佳。

## 假设卡

- Observed evidence / 已观测证据：v028l 把 256×64 的 Step2 B tile 拆成两个 128×64 half-B stage；每个 K pair 需要四次 CTA 可见性同步。它已经能让 BSM copy 越过 MMA 窗口，但仍保留较密的同步边界。
- Verified bottleneck / 已验证瓶颈：v028l 的 Case2 Step2 mcTracer 中位约 1.623 ms，占两步 kernel 约三分之一；继续优化 Step2 有端到端价值。
- Current hypothesis / 当前假设：用两块完整 256×64 B stage 做 64 KiB ping-pong，使每次 32 KiB BSM producer 跨越两条 128-column accumulator 链，可把每个 K pair 的 CTA 同步从四次降到两次，并进一步隐藏 B 搬运。
- Proposed mechanism / 拟采用机制：只对 32-expert 默认 shape 启用 full-B ping-pong；保持 v028l 的 inverse-swizzle BSM、A register ping-pong、双 accumulator 和数学计算不变。
- Predicted metric changes / 预测指标变化：Step2 mcTracer、Total Cycles 和 barrier/wait 相关 stall 下降；MMA 数不变；不出现 private spill；端到端 Case2 稳定快于 v028l。
- Falsifying result / 证伪条件：正确性失败，或在正确候选上 Step2/端到端不降，或 64 KiB shared / 新 wait 顺序导致 MMA duty、资源或时延退化。
- Correctness and resource risks / 风险：64 KiB 正好触及每 CTA shared 上限；BSM producer 与消费者 LDS 可能存在未文档化的并发顺序约束；Step2 MT register 可能增加。

## 实施经过

1. v029/v029a 直接建立 full-B 双缓冲并先生产 output0，Case2 约 11.6% 元素不匹配。
2. v029b 关闭重叠、保留 full-B 地址与同步后正确，Case2 screen 5.4971 ms；48 CTA、32 K tiles 的 BSM copy-only loop 也精确通过。因此地址、shared 容量和纯 producer copy 本身没有被证伪，错误只在并发消费窗口出现。
3. v029c、v029e 至 v029m 依次隔离 split issue、LDS/MMA overlap、interleaved stage、stage base、accumulator role、A copy 时机、额外 wait、MMA 顺序、奇数半块计算顺序和 consumer fence；错误率仍稳定在约 11.6%–11.7%。
4. v029l 空间诊断把错误固定到每个 256-column tile 的 `[0, 32]` 共 33 列，第二个 128-column 输出半块正确。生成 C++/ISA 也确认交换计算顺序真正物化，但错误仍跟 output0 的固定 fragment，而不是跟先算/后算的 accumulator 角色迁移。
5. v029n 只把异步 producer 顺序改成 output1-first，三组 OJ 全部正确，证明 producer group 的先后顺序是恢复正确性的必要条件。关于 BSM 写 32 KiB 上半区与 LDS 读 0 区的并发地址/资源交互，目前只能标记为 `INFERRED`，没有官方硬件语义证明。
6. v029o 在 output1-first 基础上恢复 full overlap，并使用单 barrier handle + group wait；正确性恢复且是正确 full-B 变体中最快的代表。
7. v029q 双 barrier handle 与 v029r 单 handle、去 group wait 都正确，但 Case2 screen 分别为 5.3540 / 5.3466 ms，不优于 v029o。

## 最终实现

- Step2 shared B 从 32 KiB 增至 64 KiB，两个完整 256×64 FP16 stage 交替复用。
- 每个 K pair 先异步生产 output1，再生产 output0；消费者在相应 group wait / CTA sync 后读取。
- 保持 4 个静态 async copy site 和 8 个静态 MFMA site；生成 C++ 中 `__syncthreads` 静态点从 9 降到 7，但显式 MACA wait 从 0 增到 2。
- Step2 resource 从 208 MT / 52 ST 增至 212 MT / 52 ST，编译器静态上限仍为 2 waves/PEU；mcTracer 记录动态 shared 从 32768 增至 65536 bytes，private memory 仍为 0。
- Source snapshot：`v029_step2_full_b_pipeline_sc-16g_custom_fusedmoe.py`
- Patch：`v029_step2_full_b_pipeline_sc-16g.patch`
- 全部探索源码：`source/exploration/`

## 结果

- 结论：rejected
- 完整 OJ `warmup=10/repeat=100` 三 case 全部 PASS，最大绝对误差均为 `0.001953125`；Case2 为 5.409759 ms。
- 同进程 10 轮 AB/BA 配对：v028l 4.818528 ms，v029o 5.079277 ms；v029o 中位退化 5.418%，0/10 改善。
- mcTracer：Step2 由 1.622784 ms 增至 1.887744 ms（中位），配对中位退化 16.327%，3/3 退化。
- mcProfiler：Total Cycles +6.017%，AP MMA duty 37.22% 降到 25.13%；尽管 shared efficiency 升到 100%、VL1 partition stall 约减半，计算喂数/执行占空下降的代价占主导。
- 证据报告：`../../restart-rep/v029_step2_full_b_pipeline_sc-16g/v029_step2_full_b_pipeline_sc-16g_report.md`
