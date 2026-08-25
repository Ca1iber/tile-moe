# v098 Case3 four-way A/weight interleave

Observed evidence: v097 32/96 is slower because the post-Gate0 96-row burst is too large, while v59 history showed value in alternating input and gate/up producers.

Hypothesis: `A0 -> Gate0 -> A1 -> Gate1 -> A2 -> Up0 -> A3 -> Up1`, each A chunk 32 rows, should sustain requests and shorten fragment lifetimes.

Falsifier: full correctness failure, resource/occupancy regression, or less than 1.2% paired improvement over v095.

Outcome: full padded-output FAIL with 45.8% mismatches. Step1 resources ballooned from v095 `226 MT / 54 ST` to `247 MT / 108 ST`. Rejected before timing/profile; no OJ candidate.
