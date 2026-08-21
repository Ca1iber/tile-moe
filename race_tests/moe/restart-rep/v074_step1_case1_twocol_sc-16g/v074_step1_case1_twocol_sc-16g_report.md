# v074 Case1 Step1 two-column-warp A reuse 报告（sc-16g）

## Verdict

`rejected`。正确性/合规通过，但端到端中位回退 `+32.096%`；Step1 trace回退 `+52.032%`。

## Mechanism

Case1 Step1从`BM128×BN128/256 threads/4 waves/grid64×24`改为`BM128×BN256/512 threads/8 waves/grid32×24`。两个column-warp组共享A；总waves、Gate/Up理论字节、MMA和输出不变，A读取理论减半。Step2与Case2/3不变。

## Evidence

- full-padding correctness、source/generated-code validator：PASS；无async/private。
- Step1运行时资源：64 KiB dynamic shared、238 MT registers/thread、512 threads。
- 3轮AB/BA变化：`+32.096%/+32.095%/+32.132%`，stddev `0.0173%`。
- mcTracer：Step1 `1.738240→2.642688 ms`（`+52.032%`）；Step2 `1.024512→1.035008 ms`（`+1.024%`）；gap没有恶化。

## Conclusion

实现确实减半CTA并形成双column-warp，但64KiB shared与8-wave CTA内部协调成本覆盖A复用。结合此前沿M的8-wave失败，关闭当前TileLang同步模型下的8-wave CTA合并路线；不推进submission。
