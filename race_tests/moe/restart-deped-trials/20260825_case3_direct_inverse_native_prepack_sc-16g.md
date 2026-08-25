# 2026-08-25: Case3 direct inverse native prepack rejected

- Base: qualified v101.
- Source SHA-256: `c6ed7e16d77aef688170d9c5b9e0df0f3392f5d44289e33be5fe1e6b9ba9a9f1`.
- Change: remove the 64-KiB shared bridge and bijectively map each row-major 128-bit input vector directly to its native global destination.
- OJ source validation and full padded Case3 correctness: PASS.
- AB/BA 3 rounds, warmup 20, repeat 50: `+2.889737%, +3.016060%, +2.722384%`; median `+2.889737%` regression.
- Conclusion: scattered native global stores cost more than the shared transpose bridge. Closed.
