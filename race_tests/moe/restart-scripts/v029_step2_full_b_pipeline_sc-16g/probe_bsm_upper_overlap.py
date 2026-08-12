#!/usr/bin/env python3
"""Test concurrent lower-half LDS while inverse-swizzle BSM targets upper shared."""

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


@tilelang.jit
def make_copy_kernel(offset_rows: int):
    @T.prim_func
    def copy_kernel(
        current: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        upcoming: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        current_out: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        upcoming_out: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
    ):
        with T.Kernel(BLOCKS, threads=THREADS) as bx:
            shared = T.alloc_shared((SHARED_ROWS, COLS), T.float16)
            barrier = T.alloc_maca_barrier()
            T.annotate_layout({shared: make_swizzled_layout(shared)})

            T.copy(current[bx, 0:ROWS, 0:COLS], shared[0:ROWS, 0:COLS])
            T.sync_threads()

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
                        T.access_ptr(upcoming[bx, local_row, logical_col], "r", 8),
                        16,
                        barrier[0],
                        annotations={"barrier_type": tir.StringImm("b128vectype")},
                    )
                )

            # This lower-half load intentionally overlaps the upper-stage BSM.
            T.copy(shared[0:ROWS, 0:COLS], current_out[bx, 0:ROWS, 0:COLS])
            T.maca_barrier_arrive_and_wait(barrier)
            T.sync_threads()
            T.copy(
                shared[offset_rows : offset_rows + ROWS, 0:COLS],
                upcoming_out[bx, 0:ROWS, 0:COLS],
            )

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260812)
    current = torch.randn((BLOCKS, ROWS, COLS), device="cuda", dtype=torch.float16, generator=generator)
    upcoming = torch.randn((BLOCKS, ROWS, COLS), device="cuda", dtype=torch.float16, generator=generator)
    failures = 0
    for offset_rows in (128, 256, 384):
        current_out = torch.empty_like(current)
        upcoming_out = torch.empty_like(upcoming)
        kernel = make_copy_kernel(offset_rows)
        kernel(current, upcoming, current_out, upcoming_out)
        torch.cuda.synchronize()
        current_diff = (current_out.float() - current.float()).abs()
        upcoming_diff = (upcoming_out.float() - upcoming.float()).abs()
        result = {
            "offset_rows": offset_rows,
            "offset_bytes": offset_rows * COLS * 2,
            "current_mismatched": int((current_diff != 0).sum().item()),
            "current_max_abs": float(current_diff.max().item()),
            "upcoming_mismatched": int((upcoming_diff != 0).sum().item()),
            "upcoming_max_abs": float(upcoming_diff.max().item()),
        }
        failures += int(result["current_mismatched"] != 0 or result["upcoming_mismatched"] != 0)
        print(json.dumps(result), flush=True)
    raise SystemExit(int(failures != 0))


if __name__ == "__main__":
    main()
