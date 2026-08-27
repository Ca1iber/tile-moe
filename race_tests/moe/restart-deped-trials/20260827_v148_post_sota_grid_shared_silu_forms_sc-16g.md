# 2026-08-27 v148 post-SOTA normal-track probes（sc-16g）

Parent：`v148_allcase_silu_degree9_clamp55_sc-16g`，SHA256 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`。本批全部是普通 TileLang/OJ 合规路径：无 async copy、无源码注入、无结果缓存、无 hack。候选门槛仍为相对直接父版本至少 `1.2%`；所有探针保持不编号，未创建 submission，未移动 `dorm`。

存储位置遵循项目所有者的显式约定：探索后放弃的方向统一进入 `race_tests/moe/restart-deped-trials/`，因此不使用通用 `race_tests/experiment/` 路径。数据来源为 C500 `sc-16g` 容器。

## 1. 上版本遗留问题

v148 已用 degree-9 SiLU 多项式缩短 Step1 epilogue，但新鲜 profiler 仍显示 Step1 是主导 kernel、寄存器驻留只有 2 waves/PEU，并存在较高 VLS pipeline stall。尚未证明剩余空间来自地址分布、CTA 排布还是标量 epilogue 依赖链。

## 2. 问题原因分析与 profiler 基线

在 `/opt/mcProfiler-ubuntu18.04` 成功重新采集 Case1 Step1 `kernel_kernel_1`：

- total cycles：`10,310,280`
- measured duration：`1.548799 ms`
- 1536 workgroups / 6144 waves，全部 104 AP 活跃
- MMA duty：`53.61%`
- MTE duty：`7.71%`
- VLS pipeline stall：`63,490,000`
- global read：`1,579,614,720 B`
- resources：`226 MT / 42 ST / 2 waves per PEU`

结论仍是混合的 operand-feed / issue / compute 限制，不是简单 HBM 跑满。后续探针分别隔离地址布局、网格局部性和 SiLU 串行链。

已验证事实是：全部 AP 活跃且 MMA duty 仅约 53.6%，所以单纯增加 CTA 数不等于增加有效吞吐。待验证假设分别是：Gate/Up shared 基址可能影响 VL1 分区、CTA 顺序可能影响 L2/input 复用、degree-9 Horner 可能仍有串行依赖空间。

## 3. 本版本解决方案

本批用单机制探针依次测试：显式 expert-grouped grid、Gate/Up shared 合并、degree-9 Estrin、两种两段 degree-7、`[2/2]` rational divide 与 rational rsqrt。所有实现保持 tile、MMA 数、全局有效字节和输出接口不变；仅在对应单机制无法隔离时使用不同数学近似，并先给出 CPU dense error bound。

## 4. 具体落地策略

- Step1 kernel：只改 `bx/by` 映射或 Gate/Up shared 的物理组织；合并版用 `(128,128)` shared，Gate 位于低 64 列、Up 位于高 64 列。
- SiLU epilogue：Estrin 保持原 degree-9 系数；两段 degree-7 在 `z=x²=12.25` 分段；rational 使用对称 `[2/2]` 形式，并分别测试 `/` 与 `T.rsqrt(den*den)`。
- 所有源码先运行 OJ source validator，再 capture generated C++/resources，最后用项目 runner 做完整有效行 output check 和同进程 AB/BA。
- 探针源码只保存在 `/tmp/v148_next/` 与远端 `/tmp/`；失败结论通过 SHA256 和本报告固定，不污染 submission 目录。

## 5. Benchmark 对比

环境：C500 `sc-16g`，FP16 输入/权重、FP32 accumulator；Case1 为 `experts=16, hidden=2048, intermediate=8192, total_tokens=2272`。统一 runner：

```text
run_v110_fullcheck.py --parent <v148 submission> --candidate <probe> --case 1 --rounds <3|5> --warmup <3|20> --repeat <20|50>
```

本地配对期间 v148 Case1 约 `2.126–2.135 ms`；外部 OJ v148 为 `2.204 ms`，官方 baseline `11.251 ms`。下表给出相对直接父版本的配对变化；所有候选都保留 v148 相对官方 baseline 的约 `5.1x` 量级优势，但没有一个改善 v148。

| Probe | SHA256 | Correctness | Case1 paired result vs v148 | Verdict |
|---|---|---|---:|---|
| Step1 显式 expert-grouped grid | `34aceea09d1780b52e19a8a3f4384ef1efcd6eefd5bea1a8fb84311dcafe6030` | PASS | 3x20 median `+9.7933%` | reject |
| degree-9 Estrin 重排 | `73748d3d16c1bca5ba094e419832665dc7dec1a6cc463a1e83e99e1437e7e83e` | PASS | 5x50 median `+0.04524%` | noise/reject |
| Gate/Up 合并为 `(128,128)` shared | `33fa7a10cbc9819bfdb132d99f231779f66b7c4233e1abe4a5f45faf23edc408` | PASS | 3x20 median `+0.18760%` | reject |
| 两段 degree-7，四次系数 select | `3c9fb36f245d1dce85432d23e9d6c971d672f4aec8e044598d64d91bdb8b8463` | PASS | 3x20 median `+1.37213%` | reject |
| 两段 degree-7，真实 lane branch | `fcb64c592d37b2a132ce6bb3ae778d094f05980c3f968ad9fc5b00f234c412a2` | PASS | 3x20 median `+1.35221%` | reject |
| SiLU `[2/2]` rational + FP32 divide | `6b2088bae954860427c1d104ae1e39adf0686f0bddf994a7ac0635c7c0679b4d` | PASS | 3x20 median `+1.87020%` | reject |
| SiLU `[2/2]` rational + `rsqrt(den²)` | `079a4f3f021ef430a3a7dcec01a21a82dfd4392ed0301dfe2ac6b4e46dabbe56` | PASS | 3x20 median `+2.04967%` | reject |

正数表示回退。正式 Estrin 长测五轮为 `+0.04524 / +0.34432 / +0.20252 / +0.03440 / -0.00770%`；其短筛看似有约 4.9% 收益，但父版本频率漂移明显，长测证明是假阳性。

## 6. Profile / Codegen 指标变化与因果结论

1. **网格局部性**：显式 expert-grouped mapping 没改变数学与流量，却回退近 10%。当前默认 CTA 顺序对 input row-block/L2 局部性明显有价值；不再把“相邻 expert CTA”当成无条件收益。
2. **Gate/Up shared 地址分区**：合并 shared 后三个 kernel 的资源逐项等同 v148（Step1 仍 `226/42/2`，8 个 MMA sites、9 个 syncthreads），但性能微退。VLS stall 不能靠简单改变 Gate/Up 基址间距消除。
3. **Estrin**：静态表达重排没有改变关键资源和动态时间，后端已经能良好调度当前 Horner；此方向只有噪声。
4. **两段低阶近似**：CPU dense minimax 将理论最大 SiLU 误差降至约 `0.0012415`，严格 MoE 输出也 PASS。四次 select 和单次真实 lane branch 都稳定慢约 1.35%，说明系数选择/发散成本大于少一级 Horner 的收益。
5. **有理式**：`[2/2]` 拟合在 `[-5.5,5.5]` 的理论最大 SiLU 误差约 `1.18e-6`，但 FP32 divide 与 `rsqrtf` 分别回退 1.87% 和 2.05%。C500 上该 epilogue 的除法/SFU 成本高于四级 FP32 Horner；普通 rational 家族关闭。
6. **历史边界复核**：v110 上 Step1 串行两个 N64 half 已把资源降到 `152 MT / 50 ST / 3 waves`，但端到端回退 `8.124%`，所以 BN64/低寄存器路径仍被当前调度覆盖。v143 的 Step2 长 tile 在恢复运行期 expert metadata 后 Case3 `+0.0901%`，原收益来自导致 OJ WA 的常量路由假设，不能合法重开。

本批未对每个已回退探针单独采集 mcProfiler：短 AB/BA 已给出终止性反证，继续占用 perfcount 不能改变晋级结论。共同的 parent profiler 基线与每个 probe 的 codegen/resource gate 已记录；若未来出现同机制但 codegen 资源发生实质变化，才需要重新采 counter。

## 7. 实验总结

本批没有达到 `1.2%` 的稳定正收益，不产生 v149。v148 继续作为 owner-approved SOTA。后续若继续，应从新的跨阶段数据复用或新的合法硬件原语出发；不要重复 grid regroup、shared 基址重排、低阶 piecewise、divide/rsqrt rational、BN64 或常量 expert metadata。
