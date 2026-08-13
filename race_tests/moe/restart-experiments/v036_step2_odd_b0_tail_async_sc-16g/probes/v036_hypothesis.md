# v036 hypothesis: keep row1 batch 0 synchronous and overlap batches 1-3

- Baseline: `v034_step2_next_even_b0_async_sc-16g` (`b289fb0dfd074ca8b30daf1be40088e2104485af`).
- Localization evidence: with only odd K tile 1 active, the broken all-async row1 path is essentially zero/uncorrelated for logical B0 output columns 0:32, while columns 32:128 match the correct output nearly exactly. The four 32-column bands correspond to the four `row_batch_1` copy batches. Thus batch 0 is unsafe and batches 1-3 are proven numerically correct.
- Change: copy row1 batch 0 synchronously; issue batches 1-3 with the existing 16-byte async primitive before the current even-B1 MMA; wait only for token slots 1-3 after that MMA and before the CTA shared-reuse fence. Keep v034 row3 fully asynchronous.
- Mechanism: overlap 75% of odd-B0 global-to-shared traffic with independent even-B1 MMA while bypassing the one localized bad transaction batch.
- Prediction: all three OJ cases remain correct; Step2 improves beyond v034; registers/private memory/static waves remain unchanged or no worse.
- Falsification: any mismatch, backend rejection, a different failed output band, resource/occupancy regression, or non-repeatable paired performance closes the candidate.
- Risk: the output-band mapping may not generalize across Case2/3 specialization; correctness must be checked on all three shapes.
