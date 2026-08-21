# v075 Case1 Step1 BN64 resource/occupancy 报告（sc-16g）

## Verdict

`rejected`。正确性/合规通过，资源目标全部实现，但端到端中位回退`+17.683%`，Step1 trace回退`+28.496%`。

## Mechanism

Case1 Step1只改`BN128→BN64`，保留BM128、256 threads、4 waves、K64、双A交错和tail pruning。grid由`64×24→128×24`；Gate/Up理论总字节和MMA不变，A读取与CTA固定成本翻倍。

## Evidence

- Step1资源：`222→150` MT registers，dynamic shared `32→16 KiB`，static max waves/PEU `2→3`，无private。
- 3轮AB/BA变化：`+17.683%/+17.661%/+17.743%`，stddev `0.0346%`。
- mcTracer：Step1 `1.742848→2.239488 ms`（`+28.496%`）；Step2仅`+0.474%`；gap没有机制性变化。

## Conclusion

更高静态occupancy不是充分条件。额外驻留无法抵消双倍A读取、CTA调度和同步控制；v59的BN128是该Step1布局的有效复用/资源甜点。不推进submission。
