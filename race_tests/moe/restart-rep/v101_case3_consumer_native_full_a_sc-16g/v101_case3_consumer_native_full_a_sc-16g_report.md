# v101 Case3 consumer-native full-A report

## Outcome

The official Case3 candidate passes the OJ source/generated-code validator and full padded-output correctness. Against the exact v095 development parent, seven same-process AB/BA rounds (`warmup=100`, `repeat=100`) improve Case3 by a median **2.627427%**. Case1 and Case2 generated device sources are byte-identical to v095.

This is a submission-ready candidate, not a formal SOTA promotion. External OJ evidence is still pending, so `restart-submission/SOTA.json` remains v092.

## Change

Case3 now uses the consumer-native 128x64 A workspace already accepted in Case2. Each thread writes its four native eight-element vectors in one complete producer before Gate0. The v095 `up_logits` workspace and all Step2 behavior are retained. No async copy, foreign source, cached output, arithmetic shortcut, or grid-size change is introduced.

The split-native precursor was correct and stable but improved only 0.809%, below the 1.2% gate. Removing the duplicated split producer crossed the gate while avoiding the non-native `T.Parallel` path that made v093 unsafe on external OJ.

## Long benchmark

Case3 changes versus v095 across seven AB/BA rounds:

`-2.6754%, -2.6116%, -2.6169%, -2.7060%, -2.6274%, -2.5769%, -2.7537%`

- Median: `-2.627427%`
- Mean: `-2.652561%`
- Population standard deviation: `0.057207%`
- Correctness: full padded output PASS, `rtol=atol=1e-2`

## mcTracer attribution

Three paired traces show the expected tradeoff:

- prepack: `+3.9071%` median (slower)
- Step1: `-5.1483%` median (faster)
- Step2: `-0.7725%` median (effectively unchanged/slightly faster)
- total GPU span: `-3.0506%` median

Static Case3 resources remain Step1 `226 MT / 42 ST / 2 waves` and Step2 `222 MT / 54 ST / 2 waves`. The gain therefore comes from the A-feed/layout path rather than an occupancy-tier transition.

## Isolation and decision

- Case1 generated SHA-256: `c61cd69d...`, byte-identical to v095.
- Case2 generated SHA-256: `717d9d46...`, byte-identical to v095.
- Case3 generated SHA-256: `9f28a6b5...`, intentionally different from v095 `d627d221...`.
- OJ validator: PASS on source plus all three generated device files.
- Decision: archive as `candidate_pending_external_oj`; provide `candidate_submission.py`; keep formal SOTA at v092 until external OJ verification.
