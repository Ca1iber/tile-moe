# v004_step2_router_weight_register_reuse_sc-16g 实验记录

## 身份

- 状态：accepted
- 机器：sc-16g（C500 16 GiB / 25% sGPU）
- 基线版本：`v000_minibs_baseline_sc-16g`
- 父版本：`v002_step2_input_locality_grid_sc-16g`
- 新当前最佳：`v004_step2_router_weight_register_reuse_sc-16g`
- Git 起点：`moe-minibs` / `70c51e5250fb5304615fa50c8e7d906590e423e2`
- 候选 Kernel SHA-256：`2722b8b1db2ff18d40af055943705f70cb7b3b75712cd5d653f3ddb541ac09ff`
- 父版本 Kernel SHA-256：`bf61d3ce399ea7c685a0ed24df2245ef0745c92fe81bc1be9e18d453d07b7461`
- Benchmark SHA-256：official `adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`；OJ `1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`

## 假设卡（改代码前填写）

- Observed evidence / 已观测证据：v002 Case3 Step2 生成 C++ 的输出循环展开 32 次；每线程实际只对应 2 个 routed row，但 `routed_expert_weights[m_start + i]` 位于展开循环内。对该精确 C++ 以 MXCC 3.7.1、`-O3 -emit-llvm -maca-device-only` 编译后，优化 LLVM IR 仍含 32 个 routed-weight FP16 global load sites，而不是 2 个。Step2 resource report 为 256 MT registers、38 ST registers、`staticMaxWarps/PEU=2`、12-byte stack frame。v002 mcTracer Case3 Step2 为 3.869952 ms。
- Verified bottleneck / 已验证瓶颈：已验证的是 Step2 epilogue 存在 16 倍源码/IR 级 routed-weight 重复标量 load；它对端到端延迟是否显著在改代码前仍为 UNKNOWN。
- Current hypothesis / 当前假设：显式把每线程负责的 2 个 routed weight 预取到 thread-local register，可绕过后端未执行的 CSE，减少 epilogue global load 指令、地址计算与相关 load latency，且只增加最多 2 个 FP16 live values。
- Proposed mechanism / 拟采用机制：在 Step2 MMA 结束后，按当前 MMA store layout 的 row 映射，用 `T.get_thread_binding()` 每线程加载两个 routed weight 到 `T.alloc_local((2,), float16)`；输出 `T.Parallel` 按逻辑 row 选择对应 local 值。MMA、tile、grid、同步和 benchmark 语义均不变。
- Predicted metric changes / 预测指标变化：精确优化 LLVM IR routed-weight load sites 从 32 降至 2；生成 C++ 显式 load sites 为 2；MT registers 不超过 258、staticMaxWarps 不下降；正确性通过；Step2 和 OJ latency 稳定下降，Step1 基本不变。
- Falsifying result / 证伪条件：生成 IR 仍保留超过 2 个 routed-weight loads；或出现 local-memory spill/stack frame 明显增长；或正确性失败；或 paired benchmark 中 Step2/OJ latency 无稳定收益或回退。任一成立则拒绝该机制。
- Correctness and resource risks / 正确性与资源风险：thread-to-row 映射必须与 `output_local` 的 MMA store layout 一致；尾行与全局边界必须保持原 predicate；额外 local 值可能加重已达 256 MT registers 的压力。

## 实施经过

- 实际改动：Step2 新增长度为 2 的 `routed_weight_local`；MMA 结束后，每线程按 `(tx // 64) * 32 + row_slot * 16 + tx % 16` 计算负责的两个 logical row，在边界 predicate 下各加载一次 routed weight；32 个输出 chunk 通过 `(i // 16) % 2` 复用这两个 local 值。
- 相对计划的偏离：没有修改 tile、grid、pipeline、shared-memory buffering、MMA 或 barrier；没有把同步和双缓冲问题混入本版本。由于 MXCC 3.7.1 不接受 `-S`，且安装目录无可用 device ISA disassembler，本轮最底层精确证据止于优化后 LLVM IR；不对最终 ISA 做未经验证的陈述。
- Source snapshot：`v004_step2_router_weight_register_reuse_sc-16g_custom_fusedmoe.py`
- Patch：`v004_step2_router_weight_register_reuse_sc-16g.patch`

## 结果

- 结论：accepted。三个 OJ case 正确性全部通过，`max_abs=0.001953125`。
- 生成代码：三个 case 的 routed-weight half load sites 均从 32 降到 2；候选优化 LLVM IR 无 `alloca`、无 addrspace(5)；Step2 仍为 256 MT / 38 ST registers、`staticMaxWarps/PEU=2`。
- 官方 benchmark（3 个独立进程、warmup=10、repeat=100 的中位数）：80.225239 ms、25.382446 ms，较 v002 分别快 0.888%、2.280%。
- OJ benchmark：3.058279 / 5.445212 / 10.650980 ms，较 v002 分别快 0.183% / 1.173% / 1.320%。
- mcTracer：Case2/3 Step2 从 1.970944/3.869952 ms 降到 1.890560/3.720448 ms，即快 4.078%/3.863%；Step1 仅变化 -0.095%/-0.015%，符合定向修改预期。Case1 Step2 单次 trace 回退 0.739%，但端到端三进程 benchmark 仍小幅快 0.183%，因此不将 Case1 作为强因果证据。
- 判定理由：候选各 benchmark 区间均不与 v002 区间重叠，主要收益稳定出现在被修改的 Step2；正确性和资源门禁无回退，故升级为当前最佳。
- 未解决问题：同步数量、单缓冲造成的 load/sync/MMA 串行，以及最终 ISA 是否存在 spill 仍待后续版本以 stall/resource 证据单独验证。
- 证据报告：`../../restart-rep/v004_step2_router_weight_register_reuse_sc-16g/v004_step2_router_weight_register_reuse_sc-16g_report.md`
