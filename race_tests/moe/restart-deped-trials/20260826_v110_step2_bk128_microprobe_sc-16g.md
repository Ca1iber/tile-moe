# 2026-08-26 v110 Case1 Step2 BK128 microprobe

## 结论

强拒绝，不编号为可晋级 candidate，不创建 submission。Case1 Step2 把
`block_dexpert_step2` 从 64 提到 128 后，虽然 K-tile 数减半，但 64 KiB
Down shared panel 和资源压力使端到端时间回退约 75.19%。

## 原子变化

- 仅 Case1：`block_dexpert_step2: 64 -> 128`。
- `k_pack=2` 和 `16x16x16f16` MFMA 保持不变。
- native intermediate workspace 的 vector-slot 轴从 4 调整到 8，以覆盖 BK128。
- 不使用 async copy、注入或外部源码。

Probe source SHA256：
`a61a25c6eedd8db24ef4b573b4943e5d25666b0efb52d87a16cee3e552ee4325`。

## 正确性与 AB/BA

- OJ 源码校验：PASS。
- Case1 有效行正确性：PASS，`rtol=1e-2, atol=1e-2`。
- 协议：4 轮 AB/BA，warmup 5，repeat 120。

| Round | Parent v110 (ms) | BK128 (ms) | 变化 |
|---:|---:|---:|---:|
| 1 | 2.180352 | 3.817749 | +75.0978% |
| 2 | 2.181634 | 3.820220 | +75.1082% |
| 3 | 2.180401 | 3.820676 | +75.2281% |
| 4 | 2.177734 | 3.818170 | +75.3276% |

均值 `+75.1904%`，中位数 `+75.1682%`，总体标准差 `0.0943 pp`。

## Codegen/资源

Case1 prepack、Step1 不变；Step2 从 v110 的 `202 MT / 52 ST / 2 waves`
增至 `256 MT / 52 ST / 2 waves`。生成源码 30,970 bytes，8 个 MMA site，
9 个 `__syncthreads`，无 async copy/barrier wait。

## 工程判断

减少 K-loop 次数远不足以抵消 64 KiB shared panel 与 256 MT register cliff。
这也强化了此前“Step2 64 KiB synchronous double-B shared”约 19–20% 回退的
结论：不要再从 v110 派生更大的 Step2 K-group/BK128 同步 staging。
