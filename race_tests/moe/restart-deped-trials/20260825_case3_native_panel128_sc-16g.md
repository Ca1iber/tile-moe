# 2026-08-25: Case3 128-column native bridge below threshold

- Base: qualified v101.
- Source SHA-256: `9e62176b83794288ab80eb5270bc6734237ffc47ea617eadd4deafbd560dfc84`.
- Change: halve native prepack panel from 256 to 128 columns, reducing dynamic shared from 64 KiB to 32 KiB and doubling grid-x.
- OJ source validation and full padded Case3 correctness: PASS.
- AB/BA 3 rounds, warmup 20, repeat 50: `-0.136921%, -0.105919%, -0.234847%`; median `-0.136921%`.
- Conclusion: the 64-KiB bridge is not an end-to-end occupancy bottleneck; gain is far below the 1.2% gate. Do not sweep 64/512 panels.
