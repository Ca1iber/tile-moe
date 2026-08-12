# Fused MoE single-kernel experiment on MetaX C500

This branch is an experiment derived from `moe-minibs` at
`70c51e5250fb5304615fa50c8e7d906590e423e2`. It tests whether the two TileLang
kernel scopes in `custom_fusedmoe.py` can profitably be combined into one
device kernel.

## Design

The implementation uses one cooperative persistent grid:

1. 104 resident CTAs process all gate/up GEMM tiles with a grid-stride loop.
2. `T.sync_grid()` makes every `up_logits` write globally visible.
3. The same CTAs process all down-projection tiles with a second grid-stride
   loop.

This is a real device-kernel fusion: generated MetaX source contains one
cooperative kernel launch and one `cooperative_groups::this_grid().sync()`.
The implementation has no per-test-case dispatch. The emitter import also
supports both the maintained public MetaX module path and the historical
private `moe-minibs` path.

The best tested fused configuration keeps the Step-1 N tile at 128 and reduces
the Step-2 N tile from 256 to 128. Other configurations are recorded below.

## Test environment

- MetaX C500, 25% sGPU compute slice, 16 GB VRAM quota
- MACA 3.7.1.5
- PyTorch 2.8.0+metax3.7.1.3
- TileLang `/opt/tilelang-metax-v0.1.10`
- Benchmark: `race_tests/moe/oj_benchmark.py`
- Correctness tolerance: `rtol=1e-2`, `atol=1e-2`
- Stable timing: 5 warmups and 20 measured iterations

Run the fused candidate with:

```bash
export PYTHONPATH=/opt/tilelang-metax-v0.1.10
cd race_tests/moe
/opt/conda/bin/python oj_benchmark.py --cases 1,2,3 --warmup 5 --repeat 20
```

## Stable results

| Case | `moe-minibs` baseline | Single-kernel candidate | Candidate / baseline | Max abs error |
|---|---:|---:|---:|---:|
| 1 | 3.161 ms | 5.462 ms | 1.728x | 0.001953125 |
| 2 | 5.655 ms | 9.945 ms | 1.759x | 0.001953125 |
| 3 | 11.072 ms | 19.351 ms | 1.748x | 0.001953125 |

All three cases pass the PyTorch reference check. The fused implementation is
therefore functionally correct, but it is consistently slower and must not
replace the two-kernel baseline as a performance optimization.

## Screening evidence

On case 2, changing the persistent grid from 16 to 26, 32, 52, and 104 CTAs
gave 68.756, 43.174, 35.093, 22.481, and 12.174 ms respectively. The largest
valid grid was best, so the regression was not caused by choosing 104 CTAs.

With 104 CTAs, Step-1/Step-2 N-tile pairs produced:

| N tiles | Time |
|---|---:|
| 128 / 256 | 12.100 ms |
| 64 / 256 | 11.445 ms |
| 128 / 128 | **9.884 ms** |
| 64 / 128 | 11.260 ms |
| 128 / 64 | 11.869 ms |
| 64 / 64 | 13.135 ms |

A second design explicitly reused one accumulator by serializing gate and up.
It was correct, but measured 11.647 ms with 128/128 tiles and 13.517 ms with
256/256 tiles, because the extra data movement and reduced tile parallelism
outweighed the smaller live buffer set.

Generated code already aliases the two stages' dynamic shared-memory regions,
but it declares the Step-1 gate/up FP32 accumulators and the Step-2 output FP32
accumulator in the same device function. This larger local working set, plus
persistent grid scheduling, costs much more than the single eliminated launch.

## Conclusion

For these GEMM-dominated C500 workloads, a device-wide barrier is necessary
between the two stages, while kernel-launch overhead is too small to pay for
the fused kernel's resource cost. Continue optimizing the two kernels
independently unless the backend gains reliable cross-barrier fragment/register
lifetime reuse or the intermediate can be consumed without a grid-wide phase
boundary.
