# v152 long-Step1 与 Case2 dynamic-Step2 控制实验（sc-16g，已放弃）

## 身份与门禁

- 起点：`dorm@438427c64b2e`
- 性能父版本：`v152_dynamic_step2_m192n128_sc-16g`
- 父源码 SHA-256：`ef1b230e6244628cec04f159e9eae0c673e5566b2e0129a7201ddf62f6ad622f`
- 设备：MetaX C500 `sc-16g`
- 约束：仅 OJ 允许的 TileLang primitive；无 async copy、注入、外部调用、手写 MXMACA builtin、缓存或 race-checker disable。
- 晋级线：相对父版本正式配对至少 1.2%。本批只有筛选结论，不创建版本号或 submission。

## 新鲜 Case2 基线时间线

精确 v152 的 Case2 mcTracer 原始文件为 `mctracer/v152_case2-128048.json`。四次调用的 kernel 中位数：

| 阶段 | Grid | 中位时长 |
|---|---|---:|
| input prepack | 28x48 | 0.128896 ms |
| Step1 | 16x48 | 2.466688 ms |
| Step2 | 28x48 | 1.331328 ms |

因此 Case2 的下一结构性机会首先仍在 Step1；但 v152 已证明的 long-expert Step2 Down-weight reuse 也值得单独验证，因为 Case2 同样包含 16 个 184-row expert。

## A. Case3 long Step1 M192xN128 / 8-wave

- 源码：`sources/trial_v152_step1_m192n128_8wave.py`
- SHA-256：`da82756cd89658d862e202477ab4e31d8e1b5cffc929846abe23a12133ae48fa`
- 假设：把相邻两个 N64 CTA 合为一个 N128/8-wave CTA，CTA 数减半，并让同一 M192 输入 tile服务两组 N wave。
- 实现：512 threads，`block_row_warps=4`、`block_col_warps=2`，每个 column-warp 组持有完整 A fragment；预打包 workspace相应写入两份 consumer-native A。
- OJ source validator：PASS。
- 交错 expert 有效输出正确性：PASS，`rtol=atol=1e-2`。
- Case3 screen：父 7.026791 ms，候选 8.601318 ms，回退 **22.4075%**。
- codegen/resource：long Step1 从父版约 202 MT 增至 210 MT、32 ST，仍为静态 2 waves/PEU；无 spill、async 或 barrier-wait。
- 结论：不是寄存器 cliff。两个 column-warp 组必须各自消费完整 A，预打包复制和 512-thread CTA同步/生命周期成本远大于 CTA 数减少；M192xN128/8-wave Step1 家族关闭。

## B. Case2 dynamic long Step2 M192xN128

- 源码：`sources/trial_v152_case2_dynamic_step2_m192n128.py`
- SHA-256：`e28bd72609492bb1d52376e98682257a13d530a7b3c718dab4eb878a912554dc`
- 假设：保持 Case2 原 Step1，只将 16 个 short expert交给 M128xN256 Step2、16 个 long expert交给 v152 已验证的 M192xN128 Step2，从而把 long expert 的 Down 权重重复读取减半。
- 动态安全：每次调用用 64-thread TileLang kernel 根据 `group_sizes` 重建 short/long `expert_rank`；没有 expert-ID 排列假设。
- OJ source validator：PASS。
- 交错 expert 有效输出正确性：PASS，`rtol=atol=1e-2`。
- Case2 screen：父 3.951565 ms，候选 3.946163 ms，仅改善 **0.1367%**，属于噪声并低于 1.2%。

候选 mcTracer（`mctracer/trial_v152_case2_dynamic_step2-128571.json`）中位数：

| 阶段 | Grid | 中位时长 |
|---|---|---:|
| runtime expert map | 1x1 | 0.007552 ms |
| input prepack | 28x48 | 0.130048 ms |
| Step1 | 16x48 | 2.480000 ms |
| short Step2 M128xN256 | 28x16 | 0.600576 ms |
| long Step2 M192xN128 | 56x16 | 0.727680 ms |

拆分 Step2 合计为 1.328256 ms，但加入 map 后为 1.335808 ms，与父版单 Step2 的 1.331328 ms等价。long 路径的 Down reuse确实兑现，却被 short kernel缩到 16-expert 网格后的尾部利用率和额外 launch/map 税抵消。

## 约束性结论与新线索

1. 不再扩大 long Step1 的 N tile 或使用 8-wave CTA；它不会产生免费 A reuse。
2. Case2 不能简单拆成 short/long 两个 Step2 kernel；单独 long 加速不足以覆盖 short 网格收缩。
3. 仍有一个尚未实现但由本批证据支持的后续机制：保持原 `28x48` 单 Step2 网格，把 long expert的两个物理 M-block slot重新解释成同一 M192 expert的两个 N128 half。这样可保留单 launch/满网格，同时消除 long Down重复读取。该机制必须复用现有两份 M128 accumulator，避免新增 live fragment；否则重开无意义。

## 复现

```bash
/opt/conda/bin/python race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g/validate_oj_submission.py <candidate.py>
MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g/run_permuted_fullcheck.py --parent race_tests/moe/restart-experiments/v152_dynamic_step2_m192n128_sc-16g/v152_dynamic_step2_m192n128_sc-16g_custom_fusedmoe.py --candidate <candidate.py> --case <2|3> --output <screen.json> --rounds 1 --warmup 2 --repeat 10
```
