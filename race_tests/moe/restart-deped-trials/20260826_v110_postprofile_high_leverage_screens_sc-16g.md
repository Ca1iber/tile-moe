# v110 post-profile 高杠杆方向筛选（sc-16g）

## Verdict

- 本批没有候选达到 `1.2%` 晋级门槛；不创建新版本、不创建 submission，external-OJ SOTA 继续保持 v110。
- Parent：`v110_case1_unpredicated_native_up_logits_sc-16g`，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- v110 external-OJ latency：`2.243 / 3.954 / 7.680 ms`；score ratio：`0.833778 / 0.824765 / 0.823671`。
- 所有可运行候选均先过 OJ source gate；除明确标为 correctness failure 的 `ldg256` 热路径外，计时候选均通过官方 Case3 完整输出正确性，`rtol=1e-2, atol=1e-2`。
- 全部修改仅使用合规 TileLang primitive，无 async copy、foreign source、injection 或 cache hack。

## Baseline profile context

沿用 v130 对 exact-v110 的 mcProfiler/mcTracer 证据：Step1 占 GPU span 约 `62.37%–65.65%`，Step2 约 `33%–34%`，Case2/3 prepack 约 `3.3%`。Case2/3 Step1 为 `226 MT / 42 ST / 2 waves`，Step2 为 `220 MT / 52 ST / 2 waves`；Step1 的 MMA duty 约 `52%–55%`，因此本批优先筛选能改变真实 producer/consumer 重叠、A 复用或 B-fragment 依赖链的结构，而非继续做低杠杆索引微调。

## Screen results

正值表示候选比 v110 更慢。短程 AB/BA 协议为同进程 parent/candidate、三轮交替顺序、`warmup=3`、`repeat=20`；单轮 smoke 会单独注明。

| Direction | Candidate SHA-256 | Correctness | Case3 change | Codegen / resource evidence | Decision |
|---|---|---|---:|---|---|
| Step1 同时预载 Gate/Up 的 4 组 B fragments，再交错 MMA | `55acf7e7fe11351c4edb6ffe8b90e1728833ffa8faa00a086915dca5a59469be` | PASS | `+0.108%, +0.300%, +0.227%`; median `+0.227%` | Step1 `226 -> 242 MT`，仍 2 waves；Step2 不变 | reject：依赖链变化不足以抵消寄存器增量 |
| Step1 在同一逻辑 CTA 内串行计算两个 N64 half | `6be98c7ab70cd29cfc6b9c124df99ffe3b3ce36a01a7402bf82cc44c5ae90127` | PASS | `+8.124%, +8.038%, +8.280%`; median `+8.124%` | Step1 降至 `152 MT / 50 ST / 3 waves`，但增加 CTA barrier 且同一 A sweep 被串行重复 | reject：occupancy 收益远小于串行化代价 |
| Step1 FP16 accumulator | `cab11c32f04bd20e4e627f3f6bf5262e28694be34c3ef297a6f53cf021cbde72` | compile fail | N/A | MXCC 明确要求 `__builtin_mxc_mma_16x16x16f16` 的 C accumulator 为 `float32x4` | reject：硬件 intrinsic contract 不支持 |
| Case3 移除 input prepack，Step1 直接由原 A 经双 16 KiB shared ping-pong 取数 | `6814f6548af4cde3bff6b9ebf51ff2b00576ba72685a96a3b0157d504e3a4e4d` | PASS | single smoke `+62.881%` | Step1 `232 MT / 42 ST / 2 waves`；每个 N CTA 都重复搬运相同 A | reject：丢失跨 N-CTA 的 prepack 复用 |
| native-A workspace 配对为 256-bit slot，Step1 使用公开 `T.ldg256` | `52b0f6aeae0191a1a216c1517df09df1db58f7298769d389d14848a113c93485` | FAIL | N/A | 独立 `ldg256` round-trip microprobe PASS；修正 producer 后 workspace 与 v110 逐元素一致，但进入 MFMA fragment 热路径后仅约 `69.9%` 有效输出匹配 | reject：当前后端的 `ldg256 -> fragment/MFMA` lowering 不可作为正确提交路径 |
| 同一 paired workspace 的 128-bit consumer control | `8a49abee66f76341417f09ddf1b1e5ec472ba7465807b9fd9b9bf6d93ad9ce86` | PASS | single smoke `+1.113%` | 证明失败不来自 paired workspace 的数据定义；paired 地址本身也没有性能收益 | reject |
| Step2 同时预载两个 Down B fragments，group=4 | `d6476f913f2945be3a74f7a8d59a2cfa57db1055548e9a41d4c374a14935ba04` | PASS | `+0.046%, +0.188%, +0.059%`; median `+0.059%` | Step2 `220 -> 236 MT`，仍 2 waves | reject：噪声/轻微回退 |
| 同方向 group=2 codegen control | `047c2140a3587090631abfe38ec4eca3c28f0f4da7bc141b993ebba81dbbfb27` | codegen PASS | not timed | 与 group=4 同为 `236 MT / 52 ST / 2 waves`，未降低资源 | reject：没有进入端点计时的依据 |
| Step1 Gate/Up shared 从默认 128B full-bank 改为合规 inline 64B half-bank | `1c12550fff95718798ea49c18f2b0e9f2c1898a3fd441075112904a66e7a6d00` | PASS | `+0.312%, +0.229%, +0.034%`; median `+0.229%` | 精确单变量替换两份 Step1 B shared layout；默认 full-bank 仍更优 | reject：低于门槛且方向为回退 |

## Causal conclusions

1. v110 的 `2 waves` 不是可以通过“减少寄存器”单独解决的根因。N64 serial-half 虽达到 3 waves，却因重复 A sweep、额外 barrier 和串行 N-half 回退约 8.1%。
2. 同时持有更多 B fragments 只把 Step1/Step2 分别推到 `242/236 MT`，没有改善端点时间；当前 `LDS -> MMA -> LDS -> MMA` 已提供足够的编译器调度空间，继续增加静态 ILP 只会扩大 live range。
3. Case2/3 input prepack 虽有约 3.3% 独立成本，却保存了跨多个 N CTA 的 A 复用。把它重新下放到每个 Step1 CTA 会产生约 62.9% 回退，因此“消除 prepack kernel”必须同时保留跨 CTA 复用，普通 shared ping-pong 做不到。
4. 公开 `T.ldg256` 在孤立 copy microprobe 中可用，不代表能安全成为 MFMA fragment operand；完整热路径已有确定 correctness 反例。正常提交路径关闭该方向。
5. Step1 与既有 Step2 实测一致：当前 64-thread custom `ldmatrix_b` 更匹配默认 128B full-bank shared swizzle；64B half-bank 没有隐藏的 bank-width 收益。

## Promotion decision

- Candidate gate：FAIL；本批最佳变化仍在噪声区且方向为回退。
- 不修改 `restart-submission`，不移动性能 SOTA，不产生 v143 或更多编号文件。
- 临时候选、codegen 与原始 JSON 保留在远端 `/root/moe_runs/v110_*`，本报告作为放弃方向的唯一 Git 归档。
