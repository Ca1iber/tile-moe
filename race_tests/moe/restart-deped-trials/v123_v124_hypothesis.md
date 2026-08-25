# v123/v124 causal isolation card

Observed evidence: v122 removes both Case1 Step2 bx/up_logits and by/Down load guards, improving end-to-end latency by a paired median 0.555%, but raises Step2 MT registers from 202 to 218.

Hypothesis: one bounds family supplies most of the benefit while the other supplies most of the live-range/register cost. Isolating them may preserve the hot-loop simplification with a better resource schedule.

Mechanisms: v123 proves only `0 <= bx < num_blocks_m`; v124 proves only `0 <= by < step2_col_tiles`. Both are Case1-only compile-time paths and otherwise exact v110.

Prediction: at least one isolate has lower MT registers than v122 and a better end-to-end result than v122. The normal candidate threshold remains at least 1.2% versus v110.

Falsifier: both isolates remain below 1.2%, regress, fail correctness, or retain their targeted generated guard.

Risks: incorrect range assumptions could permit OOB access; full padded-output correctness and generated mapping inspection are required. No async or foreign source is used.
