# v090 OJ-safe per-case composition report

## Identity

- Machine: MetaX C500 `sc-16g`, branch `dorm`.
- Parent/current SOTA: v088, SHA-256 `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`.
- Candidate: `race_tests/moe/restart-experiments/v090_oj_safe_case_dispatch_sc-16g/candidate_submission.py`.
- Candidate SHA-256: `6e28d4446cb79b9bbcd440b39ccfda61c2d82792f23987bc15d7ebfe5923b8d7`.
- OJ benchmark SHA-256: `1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`.
- Official benchmark SHA-256: `adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`.

## Correctness and compliance

- Exact source OJ validator: PASS.
- Generated source validators, Cases1/2/3: PASS.
- Full padded-output correctness, Cases1/2/3: PASS, `rtol=1e-2`, `atol=1e-2`.
- Async-copy and foreign-code marker scan: no hits.
- External OJ Case2: AC, user-provided SPJ report: baseline `18.610 ms`,
  candidate `4.133 ms`, speedup `4.503x`, score ratio `0.818274`, display `81`.
- External OJ Cases1/3: user reports AC/unchanged but did not provide their exact
  per-case latency and score-ratio fields. The complete monotonic SOTA vector is
  therefore still unavailable for ledger promotion.

## Code-generation identity

| Case | v090 generated C++ SHA-256 | Reference | Identity |
|---|---|---|---|
| 1 | `c61cd69d820fd112dbefde907f8ac8346bf80c225c8eb218f302eb51cd9d64a7` | v088 | byte-identical |
| 2 | `72a73cd01d988d24c86cfcf075032a4d3b43e027a4a02e8c086da25656c08c53` | teammate | byte-identical |
| 3 | `10eb2d621f2fd998511b795fd2f2609a52c0a3e130e7e045ef09057a27c0ffaa` | v088 | byte-identical |

Case2 resource report is also identical to the teammate reference: prepack
MT/ST `78/11`, Step1 `214/42`, Step2 `222/54`; no generated async site.

## Performance

Case2 paired device-event long run versus v088, five AB/BA rounds,
`warmup=100`, `repeat=100`:

- Changes: `-2.422078%`, `-2.416647%`, `-2.455549%`, `-2.475055%`, `-2.441584%`.
- Median: `-2.441584%`.
- Population standard deviation: `0.021522%`.

This exceeds the user-defined 1.2% candidate threshold. Case1/3 are deliberately
device-code identical to v088 and are expected to remain neutral; their one-shot
correctness screens measured only noise and are not used as performance verdicts.

## Causal conclusion

The meaningful Case2 gain comes from the teammate consumer-native input layout,
not v089's extra Gate0-early native load: removing the latter gives up about
0.68% but restores exact teammate Case2 code. Restoring v088 host semantics for
Cases1/3 directly addresses the only cross-case difference left after v089's OJ
WA.

## Verdict

`inconclusive` for formal global promotion. The exact candidate is externally
AC and Case2 improves v088 from `4.227 ms / 0.814906` to
`4.133 ms / 0.818274`: latency falls `2.22380%` and score ratio rises
`0.003368`. However, Cases1/3 exact OJ fields are absent, so the machine-readable
monotonic vector cannot be completed. v090 is the current development baseline;
the formal SOTA ledger remains v088 until those fields are supplied.
