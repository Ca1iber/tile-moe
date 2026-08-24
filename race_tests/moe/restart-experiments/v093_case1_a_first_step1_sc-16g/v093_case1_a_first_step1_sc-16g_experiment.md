# v093 Case1 non-native A-first Step1 experiment

## Observed evidence

The A-before-Gate0 mechanism improved v091 Case2 external OJ latency by `3.338979%` and v092 Case3 local seven-round latency by `2.522453%`. Case1 still used `G0 -> A -> G1 -> U0 -> U1` at both Step1 producer sites.

## Hypothesis and falsifier

Enabling the same issue order for exact Case1 should extend independent A-load overlap and improve end-to-end latency without changing static work. The experiment is falsified by correctness/compliance failure, resource-class degradation, or less than `1.2%` paired improvement relative to exact v092.

## Change

The selected non-native compile-time path now applies to official Case1 and Case3:

- parent Case1: `G0 -> A -> G1 -> U0 -> U1`
- candidate Case1: `A -> G0 -> G1 -> U0 -> U1`

The Case3 behavior from v092 is preserved and the Case2 native behavior from v091 is unchanged. Candidate SHA-256: `f87f933dd3484a9e7508cea21883d6ab790201939e0781c12bd5d8cbbd1a9247`.

## Outcome

Case1 seven-round AB/BA (`warmup=100`, `repeat=100`) gives paired median `-1.640808%`, pstdev `0.107502%`; all three official cases pass full padded correctness. Corrected three-kernel mcTracer gives median Case1 Step1 `-2.559322%` and GPU span `-1.506249%`. Step1 resources rise `224 -> 228 MT` but stay at `2 waves/PEU`, zero private/stack bytes. Formal SOTA promotion remains pending complete external OJ metrics for all three cases.
