# v017 Step1 BN occupancy/ILP panel on sc-16g

## Hypothesis card

- Current v013 case-3 Step1: `198 MT / 28 ST`, 32 KiB dynamic shared, no spill, two static waves/PEU, and roughly 7.02 ms versus 3.55 ms for Step2.
- Candidate A mechanism: halve only the long-shape Step1 BN from 128 to 64, targeting lower accumulator/shared pressure and higher residency.
- Prediction: Step1 should cross to at least three waves; it is accepted only if the higher residency beats the doubled N grid and input-tile repetition in both case 2 and case 3.
- Falsifier: no occupancy crossing, or paired long-case runtime does not improve repeatably.

## Candidate A: BN64

- Source SHA-256: `0ade71e4eb8f23e1a2d1f2bff465d1791e0a01ca18dc613cf1103d33cd1c88ea`.
- MXCC: Step1 changes from `198 MT / 28 ST / 2 waves` to `118 MT / 52 ST / 4 waves`; dynamic shared changes from 32 KiB to 16 KiB; no stack/private spill.
- Correctness: all OJ cases pass with maximum absolute error `0.001953125`.
- Screen OJ: case 2 `5.413538 -> 9.418871 ms` (`+73.987%`); case 3 `10.616858 -> 18.211192 ms` (`+71.531%`). Case 1 source path is unchanged; its one-pair timing difference is process noise and is not claimed as a gain.
- mcTracer case 3: Step1 grid `16x96 -> 32x96`; Step1 `7.062528 -> 14.614784 ms` (`+106.934%`); Step2 `3.553280 -> 3.550464 ms` (`-0.079%`, unchanged).
- ISA per CTA: MMA `256 -> 128`, shared loads `64 -> 32`, shared stores `16 -> 8`, code bytes `24472 -> 13184`; static barriers remain `3`. No spill appears in either source.
- mcProfiler direction: average wave life `4999.81 -> 8266.22` cycles (`+65.331%`), VLS pipeline stall `+175.339%`, global read bytes `+27.852%`, AP active cycles `+39.266%`, MMA duty `24.91% -> 17.89%`, and MTE duty `38.24% -> 28.04%`.

## Candidate B: BN256 counter-panel

- Source SHA-256: `2942cec6406076ca672387735822db3cad7783349f670ce4758e81386a9c6ab6`.
- Intent: test the opposite tradeoff—halve N-grid/input repetition and increase column MMA ILP.
- Resource gate: `256 MT / 38 ST / 2 waves` plus a `1240-byte` stack frame in Step1. Rejected before runtime measurement due to severe spill.

## Causal conclusion

BN64 successfully raises static occupancy, but obtains it by halving per-CTA column work and reuse. Its CTA count doubles, while input/metadata/barrier work does not halve; column-direction MMA ILP also falls. The visible Step1 time therefore nearly follows the doubled grid even though each CTA has half the static MMA. BN256 confirms that recovering more ILP through a larger tile exceeds the register file and spills. BN128 remains the non-spilling balance point on this axis.

## Decision

Reject both candidates. Do not modify `custom_fusedmoe.py`; v013 remains current best at SHA-256 `7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`.
