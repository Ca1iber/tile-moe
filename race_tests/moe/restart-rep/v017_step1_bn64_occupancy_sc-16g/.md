# v017 Step1 BN occupancy/ILP evidence report

## Verdict

- Run type: resource gate + paired OJ screen + causal trace/profile/ISA diagnosis.
- Decision: rejected; current best unchanged.
- One-line cause: BN64 doubles theoretical residency but also doubles the grid/input reuse cost and cuts column MMA ILP, while BN256 spills 1240 bytes per thread context.

## Correctness and benchmark

- All cases in the parent/candidate screen pass; maximum absolute error is `0.001953125`.
- Candidate A case 2: `+73.987%` runtime.
- Candidate A case 3: `+71.531%` runtime.
- The regression is far outside any paired noise band, so more OJ pairs are unnecessary.
- Official benchmark was not run because neither candidate passed the OJ/resource gate and neither was installed.

## Phase attribution

Case-3 mcTracer localizes the regression to Step1: `7.062528 -> 14.614784 ms` (`+106.934%`). Step2 is unchanged within `-0.079%`. The Step1 grid doubles from `16x96` to `32x96`; dynamic shared halves from 32 KiB to 16 KiB and reported private memory remains zero.

## Lowering, resources, and ISA

- Parent BN128 Step1: `198 MT / 28 ST / 2 waves`; 24,472 code bytes; 256 static MMA; 3 static barriers; no spill.
- Candidate A BN64 Step1: `118 MT / 52 ST / 4 waves`; 13,184 code bytes; 128 static MMA; 3 static barriers; no spill.
- Candidate B BN256 Step1: `256 MT / 38 ST / 2 waves`; `1240-byte` stack frame. Runtime profiling is disallowed by the resource gate.

Per-CTA arithmetic roughly halves at BN64, but the grid doubles. Input tiles, CTA metadata, and synchronization do not receive the same N-direction reuse as weights/MMA, and the number of independent column fragments falls. This is why four-wave residency does not improve throughput.

## mcProfiler boundary and direction

The performance authority is OJ timing plus mcTracer. Counter replay totals are treated directionally because replay aggregation is not identical to elapsed kernel time. The mutually consistent directions are: wave life `+65.331%`, VLS pipeline stall `+175.339%`, global read bytes `+27.852%`, AP active cycles `+39.266%`, MMA duty `-28.181%` relative, and MTE duty `-26.674%` relative. Both sources report zero private read/write instructions and 100% non-conflicting shared access.

## Decision

Keep BN128 and preserve the v013 kernel byte-for-byte. Future register work must lower live state without reducing the N tile or creating a global/shared staging round-trip.
