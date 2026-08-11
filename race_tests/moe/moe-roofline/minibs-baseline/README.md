# `minibs-baseline`: `custom_fusedmoe.py` Roofline on sc-16g

Main figure: [`custom_fusedmoe_roofline_sc-16g.svg`](./custom_fusedmoe_roofline_sc-16g.svg). A PNG rasterization of the same SVG is generated as `custom_fusedmoe_roofline_sc-16g.png` after this script. Six mcProfiler-native single-kernel PNGs are also retained.

## Measurement identity

- Machine: `sc-16g`, MetaX C500 sGPU, 16 GiB VRAM quota.
- Git HEAD: `5fabf457e951abcf365fc8fe269016ac9bb22d40`.
- `custom_fusedmoe.py` SHA256: `301b3af11673b7fed8a613d179ac2c35cd4dd42fa22e306a5c7f9cc1d1e56e09`.
- Workloads: the three exact shapes in `../../oj_benchmark.py`; `num_blocks_m=24/48/96`.
- Profiler range: three warmups, then exactly one `RoutedMoEKernel` call.
- Included device kernels: `kernel_kernel` (Step1 Gate+Up+SwiGLU) and `kernel_kernel_1` (Step2 Down).
- mcProfiler command: `--per-kernel --profile-from-start 0 --counts 2 --kernelnames kernel_kernel kernel_kernel_1 --metrics RoofLine`.
- Point coordinates use mcProfiler's processed `case_I`, `case_flops`, and `case_bandwith` fields. `all_memacs` is a raw access counter, not a byte count, so the script does not reinterpret it as bytes.

## Roofs

- HBM roof: `1843.2 GB/s` from mcProfiler.
- FP16 MMA roof: `1916.928 TFLOP/s`, reconstructed from the same native mcProfiler plot constants: `104 AP × 16384 FLOP/cycle × 1.125 GHz`.
- FP16 ridge point: `1040.0 FLOP/Byte`.
- The black envelope in the combined figure is `min(HBM × AI, FP16 MMA peak)`.

## Results

| point | kernel | AI (FLOP/B) | TFLOP/s | GB/s | region | roof efficiency |
|---|---|---:|---:|---:|---|---:|
| C1 S1 | `kernel_kernel` | 980.786 | 877.070 | 894.252 | HBM | 48.52% |
| C1 S2 | `kernel_kernel_1` | 1387.734 | 804.560 | 579.765 | compute | 41.97% |
| C2 S1 | `kernel_kernel` | 918.897 | 846.075 | 920.751 | HBM | 49.95% |
| C2 S2 | `kernel_kernel_1` | 849.580 | 749.269 | 881.929 | HBM | 47.85% |
| C3 S1 | `kernel_kernel` | 835.478 | 857.673 | 1026.565 | HBM | 55.69% |
| C3 S2 | `kernel_kernel_1` | 757.077 | 758.261 | 1001.565 | HBM | 54.34% |

Only C1 Step2 lies to the compute side of the `1040 FLOP/Byte` ridge. The other five points are on the HBM side, although all six still leave roughly half of the attainable native roof unused. This identifies memory-system utilization and tile/replay overhead as the dominant next investigation for most cases; C1 Step2 is the exception where compute-pipeline utilization is the more direct ceiling.

The mcProfiler `case_flops` coordinate is the tool's native roofline throughput estimate. It must not be substituted for OJ end-to-end latency-derived effective TFLOP/s.

## Reproduce

```bash
cd /root/tilelang-metax
bash race_tests/moe/moe-roofline/minibs-baseline/run_custom_fusedmoe_mcprofiler.sh 1
bash race_tests/moe/moe-roofline/minibs-baseline/run_custom_fusedmoe_mcprofiler.sh 2
bash race_tests/moe/moe-roofline/minibs-baseline/run_custom_fusedmoe_mcprofiler.sh 3
/opt/conda/bin/python race_tests/moe/moe-roofline/minibs-baseline/summarize_custom_fusedmoe_roofline.py
```
