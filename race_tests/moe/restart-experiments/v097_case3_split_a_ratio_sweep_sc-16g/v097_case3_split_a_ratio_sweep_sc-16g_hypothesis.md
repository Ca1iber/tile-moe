# v097 Case3 split-A ratio hypothesis

Observed evidence: v095 的 64/64 split-A 相对 v092 Case3 本地严格配对中位提升 1.682%，外部 OJ Case3 为 7.896 ms；mcTracer 把收益定位到 Step1。完整 A-before-Gate0 更慢，说明请求提前量与 fragment 生命周期存在平衡。

Verified bottleneck: Case3 Step1 的同步 A 请求发射顺序与 Gate0 producer 的有效重叠。

Current hypothesis: 64/64 未必是最优分割。32/96 可进一步缩短早期 fragment 生命周期，96/32 可增加 Gate0 计算期间已在途的 A 请求；二者之一可能改善 Step1。

Proposed mechanism: 保持 v095 的所有 grid、tile、MMA、barrier 和 Case1/2 路径，只把 Case3 odd/next-even 两处 split-A 的 early/late 行数从 64/64 改为 32/96 或 96/32。

Predicted metric changes: generated Case1/2 保持不变；Case3 Step1 时间下降，资源不 spill；正式候选相对 v095 Case3 配对中位至少改善 1.2%。

Falsifying result: 两个比例均未达到 1.2%，任一 correctness/OJ gate 失败，出现 private spill/occupancy 降档，或变化只存在于短 screen 噪声。

Correctness and resource risks: high-half 起点/循环长度不匹配导致漏行或重叠写；不对称 split 可能增大单段请求突发、寄存器生命周期或静态指令。
