# v000_minibs_baseline_sc-16g 实验记录

## 身份

- 状态：accepted-baseline
- 机器：sc-16g（MetaX C500，25% compute quota，16000 MiB VRAM quota，10 ms best-effort timeslice）
- 基线版本：`v000_minibs_baseline_sc-16g`
- 父版本：无；这是 restart 的首个证据基线
- 当前最佳：`v000_minibs_baseline_sc-16g`（仅表示首个可复现基准，不表示已优化）
- Git：`moe-minibs@5fabf457e951abcf365fc8fe269016ac9bb22d40`
- Kernel 路径及 SHA-256：`race_tests/moe/custom_fusedmoe.py`，`301b3af11673b7fed8a613d179ac2c35cd4dd42fa22e306a5c7f9cc1d1e56e09`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：restart 后尚无与当前 commit 严格绑定的独立 benchmark、mcTracer、mcProfiler、mx-smi 与 lowering 证据。
- Verified bottleneck / 已验证瓶颈：初始化时未知；v000 的目的就是建立可证伪基线。
- Current hypothesis / 当前假设：当前 kernel 的两个 GEMM stage 中存在稳定主导阶段，且实际瓶颈可由时间线、Roofline、HBM/AP 与资源用量共同定位。
- Proposed mechanism / 拟采用机制：不改 kernel；对同一源码做三次独立官方/OJ benchmark、三组 mcTracer、六个 mcProfiler kernel 计数、同步 mx-smi 采样，并归档 TileLang PrimFunc、生成设备代码、优化 LLVM IR 与 MXCC 资源。
- Predicted metric changes / 预测指标变化：无性能变化预期；OJ 三次独立进程相对极差应小于 1%，mcTracer stage 总时长应与 OJ 中位数一致，profile 应给出一致的瓶颈方向。
- Falsifying result / 证伪条件：正确性失败、OJ 噪声无法收敛、mcTracer 与 benchmark 时间不一致，或 Roofline/AP/HBM/资源证据互相矛盾。
- Correctness and resource risks / 正确性与资源风险：无 kernel 改动；主要风险是 profiler wrapper、PYTHONPATH 或 sGPU 同租户状态污染测量，因此所有失败尝试也保留并显式标注。

## 实施经过

- 实际改动：未修改 `custom_fusedmoe.py` 或两个 benchmark；仅新增四目录 v000 实验存档。
- 相对计划的偏离：mcProfiler `version` wrapper 会清 server，改为读取 `/opt/mcProfiler-ubuntu18.04/config/.version`；mx-smi 首次 workload 错用了系统 TileLang，补上 `PYTHONPATH=/root/tilelang-metax` 后重跑；mcTracer 目标改为独立 argv 且 `--odname` 使用相对路径。MXCC 不支持 `-S` 且无设备 objdump，因此归档优化 LLVM IR 并记录 ISA 不可用。
- Source snapshot：`v000_minibs_baseline_sc-16g_custom_fusedmoe.py`
- Patch：`v000_minibs_baseline_sc-16g.patch`

## 结果

- 结论：accepted；v000 成为 restart 的权威基线。
- 关键发现：三个 OJ case 的 Step1 均占约 64%；六个基于实际时间与逐 CTA 访存模型的点均为 HBM-side，AI 约 82–85 FLOP/B；长负载 104 个 AP 全活跃、HBM 中位数 1024.212 GB/s。第一轮优化应针对 Step1 的权重访问局部性，不能以“增加计算并行度”为默认方向。
- 证据报告：`../../restart-rep/v000_minibs_baseline_sc-16g/v000_minibs_baseline_sc-16g_report.md`
