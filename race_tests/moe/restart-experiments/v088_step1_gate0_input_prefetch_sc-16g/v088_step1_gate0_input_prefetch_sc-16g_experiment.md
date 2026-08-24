# v088 Step1 Gate0 后完整 input 预取实验

## Identity

- 机器：MetaX C500 `sc-16g`，25% compute slice，16 GB VRAM。
- 软件快照：mx-smi 2.3.1，KMD 3.8.30，MACA 3.7.1.5，BIOS 1.33.5.0。
- Git：`dorm`，实验开始时 HEAD `2add86954a45e2678ca03e7f1783c461dd8fd21d`。
- Parent：外部 OJ AC 的 v086，SHA-256 `43bda05910a72ce3ee75a12f04d906f45abab2e446f8d05a977f733b796b8b9e`。
- Candidate：`candidate_submission.py`，SHA-256 `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`。
- Candidate staging source：`/tmp/v087c_input_after_gate0.py`。

## Mechanism

本候选以外部 OJ AC 的 v087C 正确性修复为边界，保留 `T.clear(input_prefetch)`，把完整 128-row predicated input prefetch 从 `Gate1` 之后提前到 `Gate0` 之后：

- v086：`Gate0 -> input_low -> Gate1 -> Up0 -> input_high -> Up1`
- v087C：`Gate0 -> Gate1 -> input_full -> Up0 -> Up1`
- v088：`Gate0 -> input_full -> Gate1 -> Up0 -> Up1`

除此之外不改变 prepack、workspace、grid、barrier、MMA、Step2 或输出语义。

## Correctness and compliance

- OJ source validator：PASS。
- 三 Case generated-device source validator：PASS。
- Case1/2/3 完整 padded-output 检查：PASS。
- 三 Case MetaX ISA：无 async-copy marker，无 spill；Step1 仍为 2-wave。
- OJ 外部结果：三个 case 全部 `Pass: OK`；综合分为 `81.33`，高于 v086 的 `81`。

## Clean paired benchmark

沿用 v086 的同进程 AB/BA device-event 协议；每个 module 在计时前执行 reference correctness。

| Case | Protocol | v086 parent | v088 candidate | Paired median change | pstdev |
|---|---:|---:|---:|---:|---:|
| 1 | 3 rounds, warmup 1000, repeat 300 | 2.460-2.464 ms | 2.382-2.386 ms | -3.1817% | 0.0094% |
| 2 | 5 rounds, warmup 100, repeat 100 | 4.242-4.246 ms | 4.145-4.148 ms | -2.2999% | 0.0267% |
| 3 | 5 rounds, warmup 20, repeat 100 | 8.344-8.352 ms | 8.152-8.165 ms | -2.2861% | 0.0583% |

三个官方 case 均超过用户规定的 1.2% 本地候选门槛。

## mcTracer Case3 causal check

三组 AB/BA 中位变化：

- prepack：0.242688 -> 0.242176 ms，实质不变；
- Step1：5.465088 -> 5.311232 ms，paired median `-2.8789%`；
- Step2：2.637824 -> 2.642688 ms，paired median `+0.0970%`，属于噪声；
- launch gap：均为 0.002816 ms；
- total GPU：paired median `-1.8361%`。

因此 clean benchmark 的收益与 Step1 load/MMA 调度机制一致，不来自 prepack、Step2 或 launch gap。

## Codegen and ISA

三个 case 的 Step1 均为：

- v086：218 MT / 54 ST，2-wave；
- v088：224 MT / 42 ST，2-wave；
- dynamic shared：32768 bytes；
- private memory：0；
- spill store/reload：0；
- static MMA sites：256；
- barrier：4。

收益不是 occupancy 或 MMA 数量变化，而是同步全局 input load 更早发出后形成的有效延迟重叠。

## External OJ promotion

用户提供的外部 OJ SPJ 报告如下：

| Case | v086 latency | v088 latency | v086 score ratio | v088 score ratio | Display | Pass |
|---|---:|---:|---:|---:|---:|---:|
| 1 | 2.487 ms | 2.431 ms | 0.818969 | 0.822321 | 82 | OK |
| 2 | 4.287 ms | 4.227 ms | 0.812770 | 0.814906 | 81 | OK |
| 3 | 8.383 ms | 8.281 ms | 0.810588 | 0.812460 | 81 | OK |

- 三个 case 的 latency 全部降低；
- 三个 case 的 score ratio 全部提高；
- OJ 综合分从 v086 的 `81` 提高到 v088 的 `81.33`；
- 精确 OJ 源码 SHA-256 为 `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`。

## Verdict

`accepted`：v088 已通过外部 OJ 三例正确性检查，并在每个官方 case 上非回退且严格改善，满足单调 global-SOTA promotion gate。正式 submission 晋级为 `restart-submission/v088_step1_gate0_input_prefetch_sc-16g/submission.py`。
