# v191 后续 Case1 producer / B-fragment closure（sc-16g）

## 身份与裁决

- 日期：2026-08-30
- 分支：`dorm`
- 决策基线：external-OJ-AC `v166_gateup_pairload_sc-16g`
- v166 SHA256：`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- 组合基线：已归档但等待 external OJ 的 `v191_case23_unified_prepack64_sc-16g`
- 晋级门槛：相对 exact v166 的正式 AB/BA 端到端提升至少 `1.2%`
- 裁决：本批 Case1 探针均未达门槛；不创建新线性版本、不修改 `restart-submission` 或 `SOTA.json`

所有可运行源码均通过 OJ source validator 与官方 Case1 完整 padded-output 正确性
（`rtol=atol=1e-2`）。修改只使用 TileLang primitive；无 async copy、源码注入、
直接 MXMACA builtin、关闭 race checker、warmup-only 预处理或跨调用缓存。

## 起始证据

exact v166 的 Case1 稳态约为 Step1 `1.19 ms`、Step2 `0.73 ms`，rank 与两份
input prepack 合计仅约 `45 us`。历史 v183/v184 将 Case1 rank 与 prepack 合并后
最多得到约 `0.92%`，说明 producer 家族即使完全优化也很难独立跨过 `1.2%`。

本轮重新确认 perfcount 可用，并保存了一份 Step1 raw replay 汇总到 `profiler/`。
该临时命令在同一进程中重复执行完整 submission，报告中的绝对 workgroup/byte 数
被 replay 次数放大，不能替代已经归档的 exact-v166 single-kernel subset profile；
它只用于确认计数器通道恢复和观察相对 stall 类别。决策继续采用已有的可复现实证：
Step1 / Step2 均约 `61.6%` MMA duty、接近 compulsory HBM bytes，主要剩余空间在
片上 operand 供数与同步，而不是额外全局预处理。

## Case1 unified-prepack topology sweep

正值表示回退，负值表示更快。screen 均为 direct-v166、warmup 5、repeat 20；
正式结果明确标注 3x20。短筛即使一度接近门槛，也必须由多轮结果确认。

| Probe | 机制 | 结果 | 裁决 |
|:--|:--|--:|:--|
| v192 physical M128 | short 单 phase、long 双 phase；per-expert rank | screen `-1.1040%`；3x20 mean `-0.7661%` | sub-floor |
| v192 parallel rank | M128 prepack + 单 CTA parallel rank | `-0.9263%` | sub-floor |
| v193 M96/256t | M96 phase，256 threads，每线程 6 vec | `-0.3254%` | reject |
| v194 M96 pair3load | 三组 input vector 先 load 后 store | `-0.9318%` | sub-floor |
| v195 M96/384t | 384 threads，每线程 4 vec；producer 总 waves 对齐旧三核 | `-1.0143%` | screen-only, sub-floor |
| v196 M96/320t | 320 threads，每线程 5 vec，显式越界 guard | `-0.8028%` | sub-floor |
| v197 M96/384t + short pair-load | v195 再叠加 short Gate/Up pair-load 机制审计 | screen `-1.1220%`；3x20 mean `-0.7175%` | formal reject |

因果结论：producer phase/thread 拓扑可以稳定回收约 `0.7%–1.0%`，但收益上限与
原先约 `45 us` 的辅助 kernel span 一致。单轮接近 `1.2%` 的结果不能复现到正式
AB/BA，禁止把它当作候选或与其他亚门槛改动相乘。

## Case1 Step1 dual-B fragment audit

新鲜 stall 线索促使复核源级顺序
`Gate LDS -> Gate MMA -> Up LDS -> Up MMA`。v198 同时为 short/long 路径分配
两份 B fragment，改成 `Gate LDS -> Up LDS -> Gate MMA -> Up MMA`；v199/v200
分别只改 short 或 long CTA。

| Probe | 范围 | Case1 change |
|:--|:--|--:|
| v198 | short + long | `-0.1559%` |
| v199 | short only | `-0.0966%` |
| v200 | long only | `+0.0425%` |

三者均为噪声。该结果与历史 Case2 dual-B ISA 审计一致：后端已经能够把独立 LDS
排到允许的位置，额外 fragment 只扩大 live range，不能降低端点时间。不要再次
尝试仅靠源代码邻接顺序的 dual-B 变体。

## 可复用结论 / Reusable conclusion

1. v191 的价值仍集中在 Case2/3 unified 64-row prepack：direct-v166 正式结果为
   Case2 `-1.4723%`、Case3 `-1.2411%`，Case1 位于噪声区。
2. Case1 producer topology、dual-B source scheduling 均已闭环，不能通过堆叠
   sub-floor 结果绕过 `1.2%` 门槛。
3. Case1 若继续，只接受保持 CTA/waves、HBM bytes 与 B shared 复用不变，同时
   真正改变生成 ISA 依赖或硬件 transport 的新机制；普通 synchronous issue-order、
   shared swizzle 粒度、N64 occupancy、BK128、dual-K fragment 已有负证据。

## Artifacts

- `sources/`：v192–v200 的 exact scratch sources
- `results/`：全部 paired JSON
- `profiler/`：本次 perfcount 恢复后的 Step1 replay 汇总
