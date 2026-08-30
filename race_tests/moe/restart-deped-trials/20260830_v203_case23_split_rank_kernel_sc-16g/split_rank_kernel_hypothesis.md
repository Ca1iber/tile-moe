# Hypothesis: split rank construction from the physical prepack producer

Observed evidence: v203's rank code executes in only one producer CTA, but its local variables and control flow are compiled into every one of the 896/1792 Case2/3 producer CTAs. The producer is 74 MT / 48 ST / 6 waves and 0.219328 ms in Case3. A dynamic-loop rewrite regressed it to 92 MT / 54 ST / 5 waves, proving that producer resource tier is causal.

Verified bottleneck: rank work is logically independent of input prepacking and is consumed only by the later Step1 kernel. Keeping it fused may impose global producer register cost for work performed by one CTA.

Proposed mechanism: launch one 64-thread TileLang rank kernel before the physical prepack and remove rank construction from the producer body. Preserve v203's fixed 64-iteration parallel stable-prefix algorithm exactly.

Prediction: the producer drops below 74 MT or gains a resident wave; the added rank kernel is small enough that producer savings over all CTAs amortize its launch. Step1/Step2 remain identical.

Falsifier: producer resources do not improve, added launch exceeds producer savings, or Case2/3 do not repeatably beat v203 end-to-end.

Risks: one additional launch and global synchronization boundary; no atomics, async copy, injection, compiler builtins, disabled race checking, or cached contents.
