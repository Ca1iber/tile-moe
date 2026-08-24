# v089 post-OJ WA diagnostic summary

This is a diagnostic stress test, not an official/OJ verdict.

- Exact Case1 tensor shape: `(3072, 2048)` output, 2272 valid rows, 24 M blocks.
- Sources: OJ-accepted v088, archived teammate reference, exact v089 candidate.
- Distributions: fixed `100/184`, its reverse, and 12 legal randomized expert-tail
  distributions preserving both 2272 valid rows and 24 padded blocks.
- Values: 8 input seeds per distribution.
- Repetition: teammate and v089 each ran 5 times against the v088 output.
- Total comparisons: 1120.
- Result: all outputs matched v088 exactly (`max_abs=0`) in this environment.

The OJ WA was not reproduced. Together with the archived byte-identical Case1
device C++ versus v088, this shifts suspicion from the Case1 `actual_rows`
arithmetic toward host-level workspace/cache semantics under the OJ sandbox or
another OJ-specific runtime condition. External OJ remains authoritative, so
v089 is rejected regardless of this local result.
