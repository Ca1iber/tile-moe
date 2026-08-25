# v102 Case1 + Case3 consumer-native full-A report

## Outcome

v102 extends v101's consumer-native full-A feed to official Case1. It passes the OJ source/generated-code validator and full padded-output correctness. Seven Case1 AB/BA rounds against v101 improve latency by a median **3.565378%**; Case2 and Case3 generated device files remain byte-identical to v101, so v102 also inherits v101's qualified Case3 improvement.

This is submission-ready but still pending external OJ. The formal SOTA ledger remains v092.

## Isolated change

Case1 now uses the same `[block, K64, 4 vectors, 256 threads, 8 fp16]` consumer-native input workspace as Cases2/3 and issues one complete direct native A producer before Gate0. Gate/Up scheduling, MMA count, CTA grids, Step2, `up_logits` pitch, and arithmetic are unchanged. No async copy, foreign source, cached output, or arithmetic shortcut is introduced.

## Long benchmark

Case1 changes versus v101 over seven AB/BA rounds (`warmup=100`, `repeat=100`):

`-3.7087%, -3.6720%, -3.5654%, -3.6401%, -3.5612%, -3.5451%, -3.4587%`

- Median: `-3.565378%`
- Mean: `-3.593023%`
- Population standard deviation: `0.079246%`
- Full padded-output correctness: PASS, `rtol=atol=1e-2`

## mcTracer attribution

Three Case1 pairs show:

- prepack: `+12.1622%` median, but only about `+0.002 ms` absolute;
- Step1: `-6.4968%` median;
- Step2: `-0.3032%` median, effectively unchanged;
- total GPU span: `-4.3552%` median.

Case1 prepack changes from `94 MT / 5 waves` to `70 MT / 7 waves` while adding the 64-KiB shared bridge. Step1 changes from `224 MT / 42 ST / 2 waves` to `226 MT / 42 ST / 2 waves`; the occupancy tier is unchanged. The speedup is therefore from the consumer-native A-feed path, not higher Step1 occupancy.

## Isolation and decision

- Case1 generated SHA-256: `1cd46135...`, intentionally changed.
- Case2 generated SHA-256: `717d9d46...`, byte-identical to v101/v095.
- Case3 generated SHA-256: `9f28a6b5...`, byte-identical to v101.
- OJ validator: PASS on source plus all three generated device files.
- Decision: archive as `candidate_pending_external_oj`; provide `candidate_submission.py`; retain v092 in `restart-submission/SOTA.json` until external OJ verification.
