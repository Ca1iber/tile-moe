# v033 Step2 shared-half swap 实验经过

## 版本信息

- ID：`v033_step2_case1_swap_shared_halves_sc-16g`
- 基线：`v032_step2_case1_hybrid_half_b_sc-16g`
- 决策：accepted
- 目标：在不改变 Step2 算法、同步语义、资源占用及 OJ 合规性的前提下，验证 async B1 所在 shared-memory 物理半区是否影响性能。

## 单变量改动

v032 为 B0=低半区同步、B1=高半区异步；v033 改为 B0=高半区同步、B1=低半区异步。global 地址、MMA 次序、barrier/wait、tile、线程数和 shared allocation 不变。

## 探针轨迹

| 探针 | 目的 | 结果 | 决策 |
|---|---|---|---|
| v033a full half async | 尝试完整流水化 | 约 11.8% 数值不一致 | 拒绝 |
| v033b disjoint token buffer | 排查 token-buffer alias | 仍错误 | 排除该原因 |
| v033c remove waits | 检验显式 wait 是否冗余 | 正确，约 -0.02%，噪声 | 拒绝 |
| v033d B0 async only | 检验 B0 能否异步化 | 错误 | 拒绝 |
| v033e shifted original | 检验 shared 整体偏移正确性 | 正确 | 机制探针 |
| v033f shifted full async | 再验 full async | 错误 | 拒绝 |
| v033g swap halves | 把 async B1 放到低半区 | 正确且三 case 稳定提升 | 接受为 v033 |

所有探针源码均存于本目录 `probes/`，避免重复尝试失败路径。

## 验证协议

1. 冻结 submission，并记录 SHA-256。
2. 三个固定 OJ case 正确性；再跑官方 functional fallback。
3. exact-OJ W20/R100 独立计时。
4. v032/v033 同进程、同输入、7 对 AB/BA 交错；Case1 独立复现两次，Case2/3 各一次。
5. Case1 用 3 对 AB/BA mcTracer 定位 Step1/Step2；mcProfiler 只采方向性指标并核对 replay identity。
6. 用 mx-smi 采稳态 HBM/AP；归档 lowering C++、resource report、最终 MetaX ISA 和 Roofline。

## 结论

四组 clean paired 实验均为 7/7 获胜，paired 中位提升为 1.2088%–1.3290%；mcTracer 显示收益集中于 Step2（-3.2570%），资源与静态指令骨架不变。接受 v033，并把“async shared destination 的绝对半区/零偏移效应”列为下一轮可继续分解的机制问题。
