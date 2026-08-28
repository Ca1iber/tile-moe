# v166 preprocessing / operand-mapping closure (sc-16g)

## Identity and gate

- Parent: `v166_gateup_pairload_sc-16g`
- Parent SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Target: MetaX C500 sc-16g, 25% sGPU, 16 GiB
- Promotion floor: at least 1.2% paired whole-operator improvement
- External-OJ SOTA remains v148 `[83,82,82]`; v166 is still local/OJ-pending
- Every runnable trial passed the OJ source validator and full valid-row correctness (`rtol=atol=1e-2`)
- TileLang primitives only; no async copy, injection, direct general MXMACA builtin, cross-run cached result/content, disabled race checker, or out-of-run preprocessing

## Results

Positive percentages mean regression. Each result is a direct comparison against exact v166; no sub-floor result is stacked.

| Trial | Source SHA-256 | Atomic mechanism | Case | Paired change | Decision |
|:--|:--|:--|--:|--:|:--|
| v172 | `f81b976ec7b00bcacc1e37bdc213a45ae990bc94a99418d1293c138024e18b39` | short-input prepack: one 512-thread CTA writes two N256 panels | 2 | `-0.3625%` | sub-floor |
| v173 | `8b155a0a931041465555fc43802a51b945a8339e25fff4c4aca2696341fe3314` | unpredicate official Case2/3 Step1 consumer-native A reads | 2 | `-0.3267%` | sub-floor |
| v174 | `87ea889d454fef8daee81ae4211e808c2b1509e8226d8f4cf599c7450464e156` | long Step1 physical slots: even/odd N64 to contiguous N halves | 2 | `-0.1504%` | noise |
| v175 | `45a9acbe4b4b7d98e32fdb7ba6d06fd1e81d5520e2e82035f5ddf2c735f6d850` | unpredicate unified M192 Step2 native-A loads | 2 | `-0.1052%` | noise |
| v176 | `f04527cb5ea627d773ecefe7c2a633958c59590fbc1ad46755520de52d3b5044` | explicit paired Down N32-quarter reads in generic Step2 | 2 | `+1.4671%` | reject |
| v177 | `dd65f85afceb9eab5bac2a83599be80e2b1dbed782f2c34166e1aba45307ec6a` | unified M192 Step2 Down producer before native A | 2 | `+1.2510%` | reject |
| v178 | `34587d534d34abd759e5e072a47333eb955773512735c01d0b7ebe504d608d5d` | unified-long Step2 slots: even/odd N128 to contiguous N halves | 2 | `-0.6507%` | sub-floor |
| v178 | same | same | 3 | `-0.7015%` | sub-floor |

## Preprocessing feasibility conclusion

For official Case2, each FP16 weight tensor contains
`32*7168*2048*2 = 939,524,096` bytes; Gate, Up and Down total
`2,818,572,288` bytes. Even at a favorable 1.4 TB/s:

- materializing one same-size packed tensor costs at least 1.342 ms for the original read plus packed write;
- Gate+Up cost at least 2.684 ms;
- all three weights cost at least 4.027 ms;

before the GEMMs read the packed weights. Exact v166 Case2 is about 3.44 ms. A
per-call global transpose, swizzle or Gate/Up interleave cannot amortize because
the M192 hybrid already removes repeated weight panels: each relevant weight
element is effectively consumed once. FP8/INT8 also must first read the supplied
FP16 weights and materialize a converted representation, and prior native-FP8
evidence already showed conversion/accuracy failure. Only on-chip rearrangement
during the compulsory load remains viable; v166's shared swizzle and Gate/Up
pair-load are examples.

v172 additionally traces the short-prepack kernel from 0.074240 ms to 0.064256
ms, only 9.984 us saved. The prepack stage is too small to provide a 1.2% endpoint
gain even if optimized aggressively.

## ISA evidence and causal conclusions

Fresh final xcore1000 ISA was extracted from exact v166 Case2. Step1
`kernel_kernel_3` has 4,443 static instructions, 448 MMA, 54 `ldg_b128`, 96
`lds_b128`, and 385 `snop`. Step2 `kernel_kernel_4` has 4,385 instructions, 352
MMA, 46 `ldg_b128`, 80 `lds_b128`, and 740 `snop`; it also contains 224
`cvt_f32tof16`, 448 `set_hwreg`, and 224 `get_hwreg`. Historical exact controls
already removed this conversion-mode traffic with a legal FP16-fragment copy,
but runtime regressed about 0.20%, proving the visible static tail is hidden and
not an endpoint lever.

1. Explicitly splitting compiler-recognized bulk `T.copy` (v176) is harmful even
   when local-vector footprint matches v166; it loses backend bulk-copy scheduling.
2. Unified M192 Step2 deliberately issues native A before the compulsory Down
   stream. Pure reversal (v177) regresses, so source order is not accidental.
3. Contiguous long-Step2 N halves (v178) provide a real but sub-floor 0.65--0.70%
   locality signal. It must not be combined with another sub-floor mapping under
   the project gate.
4. Predicate simplification and prepack launch tuning are below 0.4%; neither is
   a new SOTA mechanism.
5. Global timed weight preprocessing is closed unless a future representation
   both reduces total bytes enough to repay full per-call conversion and passes
   numerical tolerance.

## Decision

All v172--v178 trials are rejected or sub-floor. Do not advance `dorm`, create a
version branch, or modify `restart-submission`. Preserve exact sources,
hypothesis cards, paired JSON, v172 traces, and the v166 ISA as negative evidence.
