# v166 Case2/3 long-Step2 issue-order closure (sc-16g)

## Identity and decision

- Date: 2026-08-30
- Branch: `dorm`
- Parent: exact external-OJ-AC `v166_gateup_pairload_sc-16g`
- Parent SHA256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Target: official Case2/3 on MetaX C500 `sc-16g`
- Promotion gate: paired improvement at least 1.2% versus exact v166
- Verdict: all three executable refinements rejected; v166, `SOTA.json`, and `restart-submission` remain unchanged

All runnable sources pass the OJ source validator and full padded-output correctness at `rtol=1e-2`, `atol=1e-2`. They use TileLang primitives only: no async copy, direct MXMACA builtin, source injection, disabled race checker, or cross-call preprocessing cache.

## Starting evidence

The exact v166 Case2 unified Step2 profile reports roughly 27.5M VL1 stalls, 48K-cycle average wave life, and global reads only about 0.5% above compulsory Down plus `up_logits` bytes. Therefore these trials preserve bytes and target exposed latency/synchronization.

The official paired harness uses deterministic group sizes `[100] * (experts/2) + [184] * (experts/2)`. M192 therefore wastes only eight long rows. Existing v163-v165/v171 evidence already rejects dynamic/static tail-MFMA pruning, so this batch does not repeat ordinary `actual_rows` pruning.

## Results

Positive change means slower. Each screen is AB/BA-compatible, one round, warmup 5, repeat 20. A regression above 1% is sufficient for early rejection; no Case3 long test is spent after Case2 falsifies the mechanism.

| Probe | Exact SHA256 | Mechanism | Parent ms | Candidate ms | Change | Result |
|---|---|---|---:|---:|---:|---|
| split-A | `8d7b49c97785f554c746646c7129ef0e33bfbe9b6c4e82777bcfc172524b5949` | A96 -> full bulk Down -> A96 | 3.451046 | 3.509760 | +1.7013% | reject |
| K-pair Down staging | `69f99fc1bc8ab2a1ef082fd08e271b4edba34da2048e7a23bbb9a747311494c3` | stage even/odd Down in the existing two shared halves; consume with one A fragment | 3.447129 | 3.509376 | +1.8058% | reject |
| wave-mixed A/Down | `97c4204ecdd79c1189e6b8fe9259c9e379a2d7e16481337119906566b2327687` | waves 0-1 use Down->A, waves 2-3 use A->Down | 3.449101 | 3.741594 | +8.4803% | reject |

Before the executable split-A trial, the literal A128 -> Down -> A64 form failed TileLang layout inference because the independent 64x64 fragment subdomain does not divide the inferred M192 mapping. The executable A96/A96 form follows the natural 48-row-per-wave layout.

## Causal conclusions

1. Delaying any portion of long A until after the bulk Down copy exposes more A latency than it hides. This agrees with the earlier whole-Down-before-A v177 regression.
2. The unused second 128-row shared half cannot be profitably used for two-K Down staging with a single A fragment. Barrier count falls, but odd A moves behind even MMA and the end-to-end result regresses 1.81%.
3. Wave-uniform mixed request order is expressible, but manually partitioning Down destroys the backend's compact bulk-`T.copy` lowering. The resulting 8.48% loss closes ordinary manual producer partitioning.
4. Preserve v166's long-Step2 order: complete consumer-native A producer, compiler-recognized full Down `T.copy`, barrier, then MMA. Future work needs a different transport primitive or tile/decomposition mechanism, not another synchronous issue-order permutation.

## Reproduction notes

- Parent: `race_tests/moe/restart-submission/v166_gateup_pairload_sc-16g/submission.py`
- Harness: `race_tests/moe/restart-scripts/v166_gateup_pairload_sc-16g/run_v110_fullcheck.py`
- Raw JSON: `results/`
- The exact rejected sources were scratch probes under `/tmp/`; their source hashes and complete atomic transformations are recorded above. They are intentionally not promoted to `restart-experiments` or `restart-submission`.
