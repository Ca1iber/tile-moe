# v147 hypothesis

Case1 的 Step1 输出宽度大、SiLU 元素数多，精确 `exp2` 链可能暴露为标量/SFU 延迟。用限定区间的 degree-9 Horner 多项式替换它，可减少该路径的指令延迟，同时让 Case2/3 保持 v110 精确路径，避免 v146 在 OJ 上出现的跨 case 灾难性回退。

接受条件：完整正确性通过，严格 AB/BA 中位提升至少 1.2%，之后再交外部 OJ。当前本地 Case1 中位提升 2.656%，达到候选条件；外部状态仍为 pending。
