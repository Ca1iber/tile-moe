# v149 long-input prepack 512-thread trial

Observed evidence:

- v149 long prepack uses 48 KiB dynamic shared, 256 threads (4 waves), and only 16 MT / 22 ST; compiler reports an 8-wave static ceiling.
- A 48-KiB CTA is unlikely to admit two resident CTAs under a 64-KiB shared budget, so the kernel can expose only four resident waves despite its eight-wave register ceiling.
- Reusing a 24-KiB half buffer improves end to end by a stable 0.76%, supporting shared-limited prepack residency as a real but sub-threshold bottleneck.

Verified bottleneck:

- The long prepack has insufficient resident waves because its 48-KiB bridge pairs with a four-wave CTA.

Current hypothesis:

- Keeping the same 48-KiB bridge but using a single 512-thread/eight-wave CTA will fill the compiler-supported wave ceiling without phase loops or extra barriers.

Proposed mechanism:

- Long M192 prepack only: 512 threads; each thread loads six FP16x8 vectors instead of twelve.
- Split each existing native destination thread's six vectors across two producer threads, three vectors each.
- Keep the same grid, shared size, global bytes, native workspace layout, Step1, Step2, and all other cases.

Predicted metric changes:

- Dynamic shared remains 48 KiB; block size becomes 512; prepack resource ceiling remains spill-free.
- Long prepack duration should fall enough for Case3 end-to-end AB/BA to clear 1.2%.

Falsifying result:

- Lowering/resource failure, correctness/import failure, or formal Case3 improvement below 1.2%.

Correctness and resource risks:

- 512-thread block legality, destination-thread/vector partition, barrier cost across eight waves, and reduced CTA-level scheduling flexibility.
