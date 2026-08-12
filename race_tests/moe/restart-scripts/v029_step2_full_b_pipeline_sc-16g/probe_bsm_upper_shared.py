#!/usr/bin/env python3
"""Probe MACA BSM writes at 0/16/32/48 KiB dynamic-shared offsets."""

import json

import torch
import tilelang
import tilelang.language as T


ROWS = 128
COLS = 64


@tilelang.jit(out_idx=[-1])
def make_copy_kernel(offset_rows: int):
    shared_rows = offset_rows + ROWS

    @T.prim_func
    def copy_kernel(
        source: T.Tensor((ROWS, COLS), T.float16),
        output: T.Tensor((ROWS, COLS), T.float16),
    ):
        with T.Kernel(1, threads=256):
            shared = T.alloc_shared((shared_rows, COLS), T.float16)
            barrier = T.alloc_maca_barrier()
            T.maca_async_copy(
                source,
                shared[offset_rows : offset_rows + ROWS, 0:COLS],
                barrier=barrier,
            )
            T.maca_barrier_arrive_and_wait(barrier)
            T.sync_threads()
            T.copy(shared[offset_rows : offset_rows + ROWS, 0:COLS], output)

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    source = torch.arange(ROWS * COLS, device="cuda", dtype=torch.float16).reshape(ROWS, COLS)
    failures = 0
    for offset_rows in (0, 128, 256, 384):
        kernel = make_copy_kernel(offset_rows)
        output = kernel(source)
        torch.cuda.synchronize()
        diff = (output.float() - source.float()).abs()
        generated = kernel.get_kernel_source()
        result = {
            "offset_rows": offset_rows,
            "offset_bytes": offset_rows * COLS * 2,
            "dynamic_shared_bytes": (offset_rows + ROWS) * COLS * 2,
            "mismatched": int((diff != 0).sum().item()),
            "max_abs": float(diff.max().item()),
            "memcpy_async_sites": generated.count("memcpy_async"),
            "wait_sites": generated.count("barrier_arrive_and_wait"),
        }
        failures += int(result["mismatched"] != 0)
        print(json.dumps(result), flush=True)
    raise SystemExit(int(failures != 0))


if __name__ == "__main__":
    main()
