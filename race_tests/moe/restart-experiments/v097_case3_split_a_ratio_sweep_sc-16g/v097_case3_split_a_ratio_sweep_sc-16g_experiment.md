# v097 Case3 split-A ratio sweep

Observed evidence: v095 64/64 split-A 的 Case3 本地严格配对中位提升 1.682%，外部 OJ 为 7.896 ms；收益由 mcTracer 定位到 Step1。

Hypothesis: 分割点控制 Gate0 前已发 A 请求数量与 fragment 生命周期，32/96 或 96/32 可能优于 64/64。

Mechanism: 仅改变 Case3 odd 与 next-even producer 的 A 行分割；Case1/2、grid、MMA、barrier、权重 producer 次序均不变。源码基于与 v095 设备代码等价的 warning-free v096。

Falsifier: 相对 v095 Case3 未改善至少 1.2%，correctness/OJ gate 失败，或资源/occupancy 退化。

Outcome: 32/96 correctness PASS，但三轮中位回退 1.739%；96/32 correctness FAIL，8.7% 元素不匹配。本方向被否证，不产生 OJ candidate 或 `restart-submission`。
