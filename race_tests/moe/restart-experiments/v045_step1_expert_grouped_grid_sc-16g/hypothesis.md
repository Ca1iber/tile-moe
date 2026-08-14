# v045 hypothesis: Case1 expert-grouped Step1 CTA order

- Parent: `v043_step1_vector_fast_rcp_sc-16g`
- Scope: exact OJ Case1 only (`E=16, H=2048, I=8192, padded=3072, valid=2272, blocks=24`).
- Observation: v001's transposed Step1 grid makes all 64 column tiles of one row block adjacent. This improves input reuse, but the two row blocks belonging to each 184-row expert are separated by 64 CTAs, so their identical gate/up weight tiles may not remain resident in the 8 MiB L2.
- Change: preserve the physical 64x24 launch grid but remap logical `(bx, by)`. Keep the first eight one-block experts unchanged. For each of the last eight two-block experts, schedule its two row blocks adjacently for every output-column tile.
- Expected mechanism: retain expert-group input locality while making the two consumers of each gate/up weight tile adjacent, reducing redundant weight traffic for the eight 184-row experts.
- Invariants: same CTA count, tile sizes, shared memory, MMA sequence, numerical path, Step2 code, and OJ import surface.
- Primary metric: paired Case1 end-to-end latency versus exact v043, W20/R100.
- Supporting evidence: generated C++/ISA mapping, unchanged resource counts, Step1 mcTracer duration and memory counters if the paired benchmark is positive.
- Falsifier: correctness failure, resource/codegen regression beyond the intended address mapping, or no stable paired latency gain.
