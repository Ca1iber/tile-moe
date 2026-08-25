# v137 Step1 valid-row SiLU predicate report

## Verdict

- Status: `rejected_below_candidate_gate`.
- Parent/SOTA: v110, SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Candidate: v137, SHA256 `c0516d26ef1a35ba9eba052f030073601b256655f13d02f98e9dfa03db282ed3`.
- Stable Case1 end-to-end improvement: **0.5256% mean**, **0.5067% median**, `0.0725%` population standard deviation.
- User gate: at least 1.2%; therefore no three-case promotion, no mcProfiler campaign, and no `restart-submission` directory.

## Evidence

| Round | Order | v110 ms | v137 ms | candidate change |
|---:|:---:|---:|---:|---:|
| 1 | A→B | 2.181672 | 2.170347 | -0.5191% |
| 2 | B→A | 2.180282 | 2.169504 | -0.4943% |
| 3 | A→B | 2.180512 | 2.170782 | -0.4462% |
| 4 | B→A | 2.181589 | 2.167567 | -0.6428% |

- Correctness: Case1 full padded output PASS, `rtol=1e-2`, `atol=1e-2`.
- OJ validation: source PASS; captured generated device C++ PASS.
- Forbidden mechanisms: zero async-copy sites and zero `barrier_arrive_and_wait` sites.
- Generated resources: prepack `70 MT / 11 ST / 7 waves`; Step1 `226 MT / 42 ST / 2 waves`; Step2 `202 MT / 52 ST / 2 waves`.
- Step1 resource footprint is unchanged from the v110 rebaseline. The optimization only removes dynamically predicated activation work.

## Interpretation

The four tightly clustered rounds prove that padding-row SiLU is real overhead, not merely noise. However, removing 26.04% of epilogue row activations improves the whole operator by only about 0.53%. Using the v110 Case1 Step1 share of 65.65%, the implied Step1 gain is about 0.80%; therefore the entire padding activation tail is too small to be a standalone candidate.

This closes the narrow direction “predicate only the Step1 activation/writeback epilogue.” Future work must reduce K-loop cost, global traffic, or improve load/MMA overlap; stacking this sub-gate change into another candidate is only justified when that candidate independently clears the gate and the combination is remeasured.

## Raw evidence

- Runtime scratch: `/root/moe_runs/v137_step1_valid_row_silu/`.
- Paired benchmark: `case1_abba.json`.
- Resource snapshot: `v137_case1_resource_usage.json`.
- Parent profile context: `restart-rep/v130_v110_rebaseline_sc-16g/`.

