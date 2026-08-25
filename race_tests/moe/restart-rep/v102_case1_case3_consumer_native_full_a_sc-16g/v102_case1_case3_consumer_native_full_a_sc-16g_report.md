# v102 Case1 + Case3 consumer-native full-A report

## Outcome

v102 extends v101's consumer-native full-A feed to official Case1. It passes the OJ source/generated-code validator and full padded-output correctness. Seven Case1 AB/BA rounds against v101 improve latency by a median **3.565378%**; Case2 and Case3 generated device files remain byte-identical to v101, so v102 also inherits v101's qualified Case3 improvement.

The exact candidate SHA-256 `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801` passed all three external OJ cases. Compared with incumbent v092, every score ratio is non-regressing and all three are strictly higher, so v102 is promoted as the formal global SOTA.

## External OJ SOTA gate

| Case | v092 latency (ms) | v102 latency (ms) | latency change | v092 score ratio | v102 score ratio | Display |
|---|---:|---:|---:|---:|---:|---:|
| 1 | 2.419 | 2.332 | -3.5965% | 0.823043 | 0.828315 | 82 |
| 2 | 3.977 | 3.974 | -0.0754% | 0.823925 | 0.824035 | 82 |
| 3 | 8.014 | 7.690 | -4.0430% | 0.817403 | 0.823482 | 82 |

OJ baseline latencies are `[11.251, 18.610, 35.875] ms`; v102 speedups are `[4.825, 4.683, 4.665]x`. All cases report `Pass: OK`.

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
- Decision: `accepted`; archive the exact OJ-tested bytes under `restart-submission/v102_case1_case3_consumer_native_full_a_sc-16g/submission.py` and promote v102 in `restart-submission/SOTA.json`.
