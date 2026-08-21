# Benchmark evidence notes

- `v085_case1_archived_exact_steady.json` is the authoritative Case1 archived-source verdict. It uses warmup 1000/repeat 300 to eliminate idle-clock ramp.
- `v085_case2_archived_exact_final.json` and `v085_case3_archived_exact_final.json` are the authoritative Case2/3 archived-source verdicts.
- `v085_case1_archived_exact_final.json` is retained as a DVFS diagnostic only: its first parent timing was 5.37 ms and the following rounds were still settling. It must not be aggregated into the version verdict.
- The earlier `v084_up_logits_ldpad128_case*_final.json` files tested byte-identical temporary staging source and independently reproduce the same 4.3%--4.6% gain.
