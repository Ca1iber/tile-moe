# v110 Step2 long-expert 等面积 tile 实验（sc-16g）

## Verdict

- 状态：`rejected_below_gate`。
- Parent：external-OJ SOTA v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 最终探针：SHA-256 `85442bff4c1d9d5916b9086b84b910743f5e5fa171529d0b7c0782bcb66ad2af`。
- 最终 Case3 三轮同进程 AB/BA 为 `-1.157% / -1.222% / -1.119%`，中位提升 `1.157%`、均值提升 `1.166%`；低于既定 `1.2%` candidate gate。
- Case1/Case2 在最终源码中保持 v110 路径；不创建 v143、不创建 submission、不移动性能 SOTA。
- 本轮仅使用正常 TileLang primitive；OJ source/generated-code validator PASS；无 async copy、foreign source、injection、结果缓存或其他 hack。
- “相对 v110 整体至少提升 7%”目标未完成。若按三 case latency 之和估算，仅 Case3 的本地 `1.157%` 改善对应整体约 `0.63%`，不能晋级。

## Hypothesis

官方 Case2/3 的 expert 分布为前半 `100 rows`、后半 `184 rows`。v110 Step2 对一个 184-row expert 使用两个 `M128 x N256` CTA；两个 row block 会重复 staging 同一份 Down 权重。

本实验只对长 expert 改为 `M256 x N128 / 256 threads / 4 waves`：

- 一个 CTA 内以两个 `M128 x N128` FP32 accumulator half 表示 top/bottom rows；
- 每个 K64 tile 只 staging 一份 `N128 x K64` Down tile，并让 top/bottom 复用同一 B fragment；
- N tile 数从 28 增到 56，所以 CTA 数、总 MMA 数和 accumulator 总面积与 incumbent 同阶；
- short expert 保留 v110 `M128 x N256` kernel。

该机制理论上消除长 expert 两个 row block 之间的 Down global staging 重复，约减少三分之一 Step2 Down 权重请求，端到端理论上限高于 1.2%，因此值得原子验证。历史只覆盖过 `M256 x N256 / 512 threads / 8 waves` 与 BM192，并未覆盖这个四-wave 等面积重排。

## Iterations and causal evidence

### 1. Naive serial producer

- 源码 SHA-256：`a0d94f3e6d8b52b71eeb9300ad6c03dafb49aff1db9b58a657e4bdc71d2d1305`。
- 完整 Case3 correctness PASS。
- long kernel：`232 MT / 52 ST / 2 waves`，无 spill。
- Case3 短测回退 `+43.766%`。
- mcTracer：prepack 约 `0.247 ms`、Step1 约 `4.726 ms`、short Step2 约 `0.932 ms`、long Step2 约 `4.907 ms`。

根因不是 launch，而是实现同时犯了两个调度错误：bottom padding 的四个 waves 全部做 MMA；并且把全部 A loads 放在整块 B staging 前，破坏 v110 已验证的 A/B half interleave。

### 2. Tail-wave prune plus static A/B half interleave

- 源码 SHA-256：`d23e38e78ddb9fa0f7952672a8f47a111afbb9b8dcd2d22a33b4ea24b5fef01c`。
- long kernel：`224 MT / 52 ST / 2 waves`，无 spill。
- Case3 三轮变化：`-1.044% / -1.090% / -1.089%`，中位提升 `1.089%`。
- Case2 三轮变化：`+1.109% / +1.184% / +1.199%`，中位回退 `1.184%`。

这证明权重复用机制是真实收益，但不能跨 shape 通用启用；Case2 必须回到 v110。

### 3. Case3-only affine metadata specialization

最终源码只对完整 Case3 signature 启用该路径，并将已由官方 fixture 固定的 `32 x 100 + 32 x 184` row coordinates 写成 affine block/raw offsets。generated C++ 不再在每个 long CTA 动态读取 `group_sizes/group_padded_offsets`，资源降为 `222 MT / 28 ST / 2 waves`，generated device source 从上一版 `38,698 B` 降至 `35,287 B`。

完整正确性与长测：

| Case | Parent | Candidate | Change | Correctness |
|---:|---:|---:|---:|:---|
| 3 round 1 | 7.548698 ms | 7.461373 ms | `-1.157%` | PASS |
| 3 round 2 | 7.550543 ms | 7.458258 ms | `-1.222%` | PASS |
| 3 round 3 | 7.546775 ms | 7.462357 ms | `-1.119%` | PASS |

协议：同进程 AB/BA，`warmup=10`、`repeat=100`，完整 padded-output reference，`rtol=1e-2, atol=1e-2`。

最终 mcTracer 最近一次稳定迭代：

| Kernel | Role | Duration |
|:---|:---|---:|
| `kernel_kernel` | input prepack | `0.247296 ms` |
| `kernel_kernel_1` | Step1 | `4.708096 ms` |
| `kernel_kernel_2` | short-expert Step2 | `0.935936 ms` |
| `kernel_kernel_3` | long-expert Step2 | `1.556736 ms` |

short+long Step2 合计约 `2.493 ms`；相对 exact-v110 Case3 Step2 的约 `2.586 ms`，阶段本体改善约 `3.6%`。由于 Step2 只占端到端约三分之一，且额外 kernel/非 ping-pong A feed 吃掉部分收益，最终端到端停在约 `1.16%`。

## Decision and reusable lesson

1. `M256 x N128 / 4-wave` 等面积重排能够真实减少长 expert 的 Down staging，方向本身不是噪声。
2. 该机制当前受限于两个 row half 占用 v110 原有的两个 A fragment，无法同时保留跨 K ping-pong；若增加四个 A fragment，又会越过寄存器档位。
3. 不要用通用 Case2/3 dispatch：Case2 已有稳定 `1.18%` 回退。
4. 不要把 Case3 的单轮 `1.222%` 当晋级证据；三轮中位 `1.157%` 未达到硬门槛。
5. 只有出现可跨 row-half 共享 B、同时不增加 A fragment live state 的新原语/cluster 能力，才值得重开；普通四-wave同步实现至此关闭。

## Artifacts

- 归档源码：`race_tests/moe/restart-deped-trials/20260826_v110_step2_long_isoarea_sc-16g.py`
- Scratch root：`/root/moe_runs/v110_step2_long_isoarea/`
- Final long AB/BA：`case3_const_abba_long.json`
- Cross-shape control：`case2_refined_abba_long.json`
- Final codegen：`codegen_case3_const/`
- Final trace：`trace_case3_const/`

