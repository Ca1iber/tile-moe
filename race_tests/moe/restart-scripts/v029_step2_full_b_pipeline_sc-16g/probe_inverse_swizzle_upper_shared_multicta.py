#!/usr/bin/env python3
"""Probe manual inverse-swizzle BSM into each quarter of 64 KiB shared."""

import json

import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout
from tvm import tir

ROWS = 128
COLS = 64
THREADS = 256
SHARED_ROWS = 512
BLOCKS = 48


@tilelang.jit(out_idx=[-1])
def make_copy_kernel(offset_rows: int):
    @T.prim_func
    def copy_kernel(
        source: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        output: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
    ):
        with T.Kernel(BLOCKS, threads=THREADS) as bx:
            shared = T.alloc_shared((SHARED_ROWS, COLS), T.float16)
            barrier = T.alloc_maca_barrier()
            T.annotate_layout({shared: make_swizzled_layout(shared)})

            tx = T.get_thread_binding()
            for row_batch in T.serial(ROWS // (THREADS // 8)):
                local_row = row_batch * (THREADS // 8) + tx // 8
                physical_group = tx % 8
                logical_group = physical_group ^ ((offset_rows + local_row) % 8)
                logical_col = logical_group * 8
                T.evaluate(
                    tir.call_intrin(
                        "float16",
                        tir.op.Op.get("tl.maca_memcpy_async"),
                        T.access_ptr(shared[offset_rows + local_row, logical_col], "w", 8),
                        T.access_ptr(source[bx, local_row, logical_col], "r", 8),
                        16,
                        barrier[0],
                        annotations={"barrier_type": tir.StringImm("b128vectype")},
                    )
                )
            T.maca_barrier_arrive_and_wait(barrier)
            T.sync_threads()
            T.copy(shared[offset_rows : offset_rows + ROWS, 0:COLS], output[bx, 0:ROWS, 0:COLS])

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260812)
    source = torch.randn((BLOCKS, ROWS, COLS), device="cuda", dtype=torch.float16, generator=generator)
    failures = 0
    for offset_rows in (0, 128, 256, 384):
        kernel = make_copy_kernel(offset_rows)
        output = kernel(source)
        torch.cuda.synchronize()
        diff = (output.float() - source.float()).abs()
        result = {
            "offset_rows": offset_rows,
            "offset_bytes": offset_rows * COLS * 2,
            "blocks": BLOCKS,
            "mismatched": int((diff != 0).sum().item()),
            "max_abs": float(diff.max().item()),
            "memcpy_async_sites": kernel.get_kernel_source().count("memcpy_async"),
        }
        failures += int(result["mismatched"] != 0)
        print(json.dumps(result), flush=True)
    raise SystemExit(int(failures != 0))


if __name__ == "__main__":
    main()
