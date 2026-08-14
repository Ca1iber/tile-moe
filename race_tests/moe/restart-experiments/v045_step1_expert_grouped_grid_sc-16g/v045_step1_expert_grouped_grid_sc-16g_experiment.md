# v045 Case1 Step1 expert-grouped CTA scheduling

Parent/current best: `v043_step1_vector_fast_rcp_sc-16g` at `cdbeb24ab52aa4686fe9b22d6de6a0cab07b68cf`. Submission SHA-256: `cd66baca76d1e33b046e3322bbf30f71a0b411310a2d22569b0a29913dca88de`.

v001's transposed grid made all 64 column tiles for one row block adjacent, which improved input reuse but separated the two row blocks of every 184-row expert by 64 CTAs. Each intervening expert-weight working set is far larger than the measured 8 MiB L2. v045 keeps the physical 64x24 grid and the first eight one-block experts unchanged, then interleaves the two row blocks of each of the last eight experts for every column tile. Two 512 KiB input tiles remain a small working set while each 1 MiB gate/up weight tile receives an adjacent second consumer.

The TileLang math, tile sizes, MMA sequence, async path, barriers, shared memory, CTA count, and Step2 are unchanged. Generated C++ materializes one CTA-entry mapping branch; final ISA preserves 128 MMA, 51 128-bit global loads, 32 LDS, and two barriers. Step1 remains two static waves with no private/stack spill.

The memory-locality mechanism is directly observed in a wave-matched mcProfiler replay: L2 hit rate improves by 6.813 percentage points, DNOC read requests fall 19.215%, and global read bytes fall 16.262%, while L2 read instructions and total memory instructions remain unchanged.
