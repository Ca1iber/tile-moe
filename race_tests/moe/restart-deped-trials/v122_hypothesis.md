# v122 hypothesis card

Observed evidence: v110 Case1 generated `kernel_kernel_2` contains runtime `0 <= bx < 24` checks and zero-value fallbacks around every consumer-native `up_logits` vector load, plus `0 <= by < 8` checks around every Down-weight vector load. The checks are inside the 64-pair Step2 K loop. Case3 direct-grid code does not contain equivalent bx/by load guards.

Verified bottleneck: v110 Case1 Step2 is about one third of GPU span and v110's SOTA gain came almost entirely from simplifying this Step2 path.

Current hypothesis: the checks are compiler safety artifacts caused by the expert-grouped `bx_local/by_local` mapping. Explicit range assumptions will let lowering remove the conditional loads without changing logical work or bytes.

Proposed mechanism: only when `use_step2_expert_grouped_grid` is statically true, add `T.assume(0 <= bx < num_blocks_m)` and `T.assume(0 <= by < step2_col_tiles)` immediately after CTA mapping.

Predicted metric changes: Case1 generated C++ loses the repeated bx/by guards and broadcast-zero fallbacks; Case2/3 generated code remains byte-equivalent; resources do not regress; Case1 end-to-end latency improves by at least 1.2%.

Falsifying result: guards survive codegen, correctness fails, Case2/3 code changes, or paired Case1 median improvement is below 1.2%.

Correctness and resource risks: an incorrect mapping proof could permit out-of-bounds access, so generated mapping ranges and full padded-output correctness are mandatory. No async copy, foreign source, or arithmetic shortcut is introduced.
