# v105 hypothesis: stagger weight requests without breaking cooperative copies

## Parent

`v102_case1_case3_consumer_native_full_a_sc-16g`, SHA-256 `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`, external OJ AC.

## Hypothesis

Adjacent Case3 N-tile CTAs currently issue the same K phase concurrently. Starting odd N tiles halfway through the 56 K pairs may distribute weight requests across VL1 partitions while retaining eight-way A-tile reuse in each phase group and preserving the original four-wave cooperative copies.

## Controlled change

Only the accumulation order for odd Case3 N tiles changes: pairs 28..55 then 0..27. The same FP32 terms are accumulated once; even N tiles and Cases1/2 remain unchanged. No async copy or injection is used.

## Result

Correctness passes, resources remain in the same 2-wave class, but Case3 regresses 13.098% median. The K-phase synchronization was providing more cache reuse than the attempted partition dispersion could recover. This mechanism is closed.
