# v048 Case3 Step1 expert-grouped CTA scheduling

Parent/current best: `v045_step1_expert_grouped_grid_sc-16g` at `f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8`. Submission SHA-256: `ae6723f560cfee7039f7090a8e800bccf00e4bfc99bbbc825ad889340418c288`.

The first probe extended v045's Case1 expert-grouped CTA order to both 7168x2048 OJ shapes. Case2 regressed by 7.030% median in five pairs, while Case3 improved by 3.110%. The accepted source therefore enables the remap only for the exact 64-expert Case3 distribution and leaves Case1/Case2 byte-identical to v045.

For Case3 the first 32 one-block experts remain identity ordered. The two row blocks of each of the final 32 experts are interleaved across every Step1 column tile. TileLang math, grid, MMA, async path, barriers, 32 KiB shared memory, and Step2 are unchanged. Step1 remains two static waves with no private/stack spill; backend allocation shifts from 230 MT/26 ST to 210 MT/52 ST.

The 13-pair benchmark wins 13/13 at -2.971% median total runtime. Five paired mcTracer samples put the gain in Step1 at -4.902% median while Step2 is unchanged. Wave-matched period0 counters show 5.241% fewer global-read bytes, 5.370% fewer DNOC read requests, 3.019% fewer AP active cycles, and higher MMA/MTE duty.
