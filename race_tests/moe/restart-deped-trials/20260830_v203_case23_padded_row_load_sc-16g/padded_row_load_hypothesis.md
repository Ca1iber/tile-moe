# Hypothesis: branch-free padded-row loads in the unified physical prepack

Observed evidence: v203's generated producer retains a per-vector `copy_source_row < copy_group_size` branch. Invalid rows write zeros into shared memory. Physical expert slots are padded to 128 or 256 rows, while the unified producer reads exactly 128 rows for short experts and 192 rows for long experts, so every physical address is allocated.

Verified bottleneck: Case3 producer is 0.219328 ms and 74 MT / 6 waves. Rank scheduling follow-ups are closed; any useful producer change must preserve this resource tier and reduce data-movement control work.

Proposed mechanism: only for `use_physical_expert_prepack`, always load the allocated padded input row into shared instead of branching to synthesize zero. Every consumed workspace slot is still fully overwritten on every `run_kernel` call; Step1/Step2 `actual_rows` semantics continue to mask invalid rows. Case1 and non-physical paths remain byte-for-byte unchanged.

Prediction: remove the producer row predicate/zero pack path, preserve or improve the 74 MT / 6-wave tier, reduce producer time, and improve Case2/3 end-to-end.

Falsifier: full padded-output mismatch, resource-tier regression, or no repeatable Case2/3 gain over v203.

Risks: a hidden consumer may rely on zero-filled padded A rows despite `actual_rows`; full padded-output correctness and repeated calls are mandatory. No skipped writes, cached contents, async copy, injection, compiler builtins, or disabled race checking.
