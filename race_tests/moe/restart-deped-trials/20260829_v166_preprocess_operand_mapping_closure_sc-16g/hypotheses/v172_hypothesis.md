# v172 short-input prepack dual-panel / 512-thread hypothesis

Observed evidence:
- Exact v166 Case2/3 still launches a short-input prepack CTA for every
  `(expert, 256-column)` panel with 256 threads and a 64-KiB shared bridge.
- Exact v151 proved the homologous long-input transformation: halving CTA count,
  using 512 producer threads, and reusing shared across two panels reduced the
  long prepack stage by about 39.14% and end-to-end Case3 by 1.4867%.
- Repository history contains no short-input dual-panel/512-thread trial.

Verified bottleneck:
- Input prepack is a small but material scored stage.  It preserves cross-N CTA
  reuse and cannot be removed, but its launch/work decomposition can change.

Current hypothesis:
- Two adjacent 256-column short panels can share one 512-thread CTA and the same
  64-KiB synchronous bridge.  Total bytes and total waves remain unchanged,
  while CTA count halves and global-to-shared producer concurrency doubles.

Proposed mechanism:
- Change short prepack grid-x from ceil(hidden/256) to ceil(hidden/512).
- Launch 512 threads.
- Serially process two 256-column panels, reusing the same shared allocation.
- Only the original 256 consumer threads write native workspace slots.

Predicted metric changes:
- Short-prepack CTA count halves; bytes and native layout unchanged.
- Short-prepack duration falls by enough to save roughly 35-50 us.
- Main Step1/Step2 generated paths remain unchanged.

Falsifying result:
- OJ/correctness failure, resource/spill cliff, or formal paired end-to-end
  improvement below the mandatory 1.2% floor.

Correctness and resource risks:
- A barrier is required before shared reuse by panel 1.
- Threads 256-511 must never index the 256-thread native workspace dimension.
- No async copy, foreign source, direct MXMACA builtin, or cached contents.

