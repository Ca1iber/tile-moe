# v148 Case2/3 结构性后续实验（sc-16g）

## 1. 上版本遗留问题

当前 owner-approved SOTA 为 `v148_allcase_silu_degree9_clamp55_sc-16g`，submission SHA256 为 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`。新鲜 Case2/3 profile 表明 Step1 占稳态 GPU 时间约 62%--66%，MMA duty 约 52%--55%；Case3 的 184-row 长 expert 由两个 M128 CTA 处理，第二个 CTA 只有 56 个有效行。

上一批 M256 探针证明合并长 expert 可减少约 13.6% global read 和 29.7% VLS stall，但跨 wave 读取既有 M128-native workspace 被标量化，端到端回退 116%。本批只研究尚未闭环的结构：M256-native workspace、MFMA 微块顺序、统一 Gate/Up accumulator，以及双 expert 长尾配对。

## 2. 问题原因分析

已验证结论：

- v148 Case3 的 consumer-native input 和 up-logits 路径均生成 128-bit vector access，无 spill；Step1/Step2 分别约为 226/220 MT，均处于 2 waves/PEU 档位。
- 旧 M256 row-wave 的主要灾难性回退来自动态 owner 反推导致的标量 half load，而不是寄存器 cliff。
- v148 的每 wave MFMA 微块为 `2x8`；M256 row-wave 为 `4x4`。两者 accumulator 面积相同，但 operand reuse 顺序不同。
- 长 expert 尾块只有 56 行；v148 用 4-wave CTA，MMA 谓词关闭后两条 wave 的 MFMA，但这些 wave 仍参与权重搬运和 barrier。

本批验证的假设：

1. 两个 M128 workspace 槽可在不增加总字节的情况下改为 M256-native 排列，并恢复 `uint4` A load。
2. 把 M256 的 MFMA 顺序从 row-first 改为 column-first，可能改善 B operand reuse。
3. 把 Gate/Up 两个 C fragment 表示为一个连续本地 fragment，可能缩短 allocator live range。
4. 一个 CTA 配对两个 56-row 长尾，使四条 wave 均执行有效 MMA，可能抵消 64 KiB shared 与额外 runtime metadata 成本。

## 3. 本版本解决方案

本批均为不编号探针，父版本始终为 exact v148：

- `m256_native_layout`：短 expert 保持 M128-native；长 expert 的两个物理 M128 槽重解释为一个 M256-native vector array。上下两个 prepack CTA 写互不重叠的 consumer-thread 槽，无跨 CTA 同步和额外 workspace。
- `m256_colfirst`：在上述正确向量布局上，仅把长 kernel 的 MFMA 微块发射顺序由 `kp,i,j` 改为 `kp,j,i`。
- `joint_gate_up`：保持 grid/FLOPs/bytes 不变，尝试用一个 repeated-N fragment 表示 Gate/Up accumulator。
- `paired_long_tails`：运行时构造 long-expert map；普通 Step1 只处理每个 expert 的首块；新 kernel 以逻辑 M128 fragment 配对两个长尾，waves 0/1 和 2/3 分别拥有不同 expert，并使用两份 B shared panel。

所有路径仅使用 OJ-visible TileLang primitives；没有 async copy、foreign source、注入、缓存结果或关闭 race checker。

## 4. 具体落地策略

归档源码：

- `20260828_v148_case3_m256_native_layout_sc-16g.py`
- `20260828_v148_case3_m256_colfirst_sc-16g.py`
- `20260828_v148_joint_gate_up_accumulator_sc-16g.py`
- `20260828_v148_case23_paired_long_tails_sc-16g.py`

主要实现细节：

- M256 prepack 保持 workspace 元素总数不变；每条消费线程读取 8 个连续 `half`，generated C++ 明确生成 `*(uint4*)`。
- M256 kernel 为 M256xN64、4 waves、K64；每线程 accumulator 面积与 v148 M128xN128 相同。
- paired-tail kernel 为逻辑 M128xN128、4 waves；两个 expert 的 Gate/Up shared 各占 32 KiB，总 dynamic shared 为 64 KiB。
- expert ID 由 runtime `group_sizes`/`group_padded_offsets` 构造，不假设短/长 expert 的固定排列。

验证命令：

```text
run_v110_fullcheck.py --parent <v148> --candidate <probe> --case 3 --rounds 1 --warmup 1 --repeat 2|3
```

这是终止性 smoke。出现 5% 或 47% 稳定回退后按 1.2% 门槛停止，不伪装成长测结论。

## 5. Benchmark 对比

环境：MetaX C500 `sc-16g`、MXMACA 3.7.1.5、KMD 3.8.30；Case3 为 experts=64、hidden=7168、intermediate=2048、valid tokens=9088、FP16 input/weight 和 FP32 accumulator。官方 baseline 为 35.875 ms。

| 版本 | Case3 时间 | 相对 exact v148 | 相对官方 baseline | 正确性 |
|---|---:|---:|---:|---|
| v148 parent | 7.6296 ms | baseline | 快 78.73% | PASS |
| M256-native layout | 8.0228 ms | 回退 5.154% | 快 77.64% | PASS |
| M256 column-first | 8.0469 ms（同轮 parent 8.0557） | 对 M256 row-first 快 0.109%，噪声 | TODO：未作 direct-v148 长测 | PASS |
| paired long tails | 11.2126 ms（同轮 parent 7.6028） | 回退 47.481% | 快 68.75% | PASS |
| joint Gate/Up accumulator | 无 kernel | lowering fail | 无 | source gate PASS |

M256 column-first 的同轮数值只用于证明微块顺序没有 1.2% 级信号；不能与不同轮次的 8.0228 ms 直接拼接成正式提升。

## 6. Profile 指标变化

| 指标 | v148 | M256-native | paired tails | 解释 |
|---|---:|---:|---:|---|
| prepack timeline | 0.248--0.249 ms | 0.248--0.254 ms | TODO | M256 回退不是 prepack 成本 |
| metadata timeline | 无 | 0.012--0.013 ms | 约同级 metadata kernel | runtime map 税很小 |
| Step1 main/head | 4.730--4.801 ms（完整 Step1） | 1.823--1.846 ms | 独立新 kernel，未采 tracer | M256 把 head 与 long 拆开 |
| M256 long Step1 | 无 | 3.299--3.356 ms | 无 | 合计约 5.18 ms，较 v148 Step1 慢约 0.45 ms |
| long/pair MT registers | v148 Step1 226 | 196 | 214 | 都保持 2 waves，无 spill cliff |
| A workspace generated load | `uint4` | `uint4` | native `uint4` 路径 | 已消除旧标量化根因 |
| dynamic shared | 32 KiB Gate+Up | 16 KiB Gate+Up | 64 KiB Gate+Up | paired tails 回退与 shared 翻倍/同步 staging 一致 |

mcTracer 显示 M256 prepack 与 metadata 合计没有形成 0.39 ms 的回退；损失集中在 M256 long compute 本体。paired-tail 在 47.5% 终止性回退后没有继续占用 perfcount；资源和结构已足以否决。

## 7. 实验总结

本批没有晋级候选，不创建新版本、不创建 submission、不移动 `dorm` 性能 HEAD。v148 仍为唯一 SOTA。

- M256 的旧标量化问题可以合规修复，但修复后长 kernel 本体仍慢：`4x4` row-wave 形状在当前 backend/硬件上不如 v148 `2x8`，column-first 只有 0.109% 噪声级变化。因此 M256 共享 B 家族正式封口。
- Gate/Up 单 fragment 在当前 TileLang `ParallelOp` 中无法同时表达 `[i,j]` 与 `[i,j+128]`：layout inference 要求同一 buffer 的索引结构完全相等。用串行循环绕过会改变热 epilogue，不值得继续。
- 双 expert 长尾虽让四条 wave 做有效 MFMA，但 64 KiB shared、两 expert 动态地址和简化同步 staging造成 47.5% 回退；不能从“少一半 CTA”推导实际吞吐提升。

后续若继续，必须回到 v148 原 M128xN128、32 KiB shared、2-wave resource 档位，寻找不降低 CTA 并行度、不扩大 shared、不增加第二组长 live range的新机制。不要重复 M256-native、MFMA row/column 顺序、统一 accumulator 或 paired-tail 的邻接变体。
