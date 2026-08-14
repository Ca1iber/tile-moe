# v049 Case3 Step2 expert-grouped CTA scheduling

Parent: `v048_step1_case3_expert_grouped_grid_sc-16g` at `748b6fd1`. Final submission SHA-256: `52db5220f50b7ce224ec5ccb7f2f536c554f44888affcf94b4d44806e9a3a1fa`.

The first implementation remapped Case3 Step2 CTAs without range assumptions. TileLang safe-memory legalization could not prove the dynamic bx/by bounds and inserted repeated guards around up-logit loads, down-weight async copies, and output stores. That source had SHA-256 `d292fcad99fd36e22571efb617bf520f06174e745b0bcb43a3d34f6d91964e98` and regressed by +0.166% median in the archived five-pair rerun.

Adding `T.assume(0 <= bx < num_blocks_m)` and `T.assume(0 <= by < step2_col_tiles)` removed those repeated C++ guards. The final mapping keeps the first 32 one-block experts identity ordered and interleaves the two row blocks of every final 32 expert across Step2's 28 column tiles. Case1 and Case2 generated C++ remain byte-identical to v048; grid, MMA, async schedule, barriers, shared memory, and math are unchanged.

The final Case3 13-pair benchmark wins 13/13 at -0.763% paired median. mcTracer localizes the effect to Step2 at -2.220% median. Wave-matched aggregate counters show L2 hit rate +3.365 percentage points, global reads -5.395%, and DNOC read requests -4.047%, while memory instruction counts and private traffic are unchanged.
