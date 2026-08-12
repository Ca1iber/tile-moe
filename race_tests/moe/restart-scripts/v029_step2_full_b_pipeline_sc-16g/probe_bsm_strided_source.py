#!/usr/bin/env python3
"""Cross-test 2048-stride BSM sources against low/high swizzled shared regions."""

import json

import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout
from tvm import tir

ROWS = 128
SOURCE_ROWS = 256
SOURCE_COLS = 2048
COLS = 64
THREADS = 256
SHARED_ROWS = 512
BLOCKS = 48


@tilelang.jit
def make_copy_kernel(source_row_start: int, source_col_start: int, shared_row_start: int):
    @T.prim_func
    def copy_kernel(
        source: T.Tensor((BLOCKS, SOURCE_ROWS, SOURCE_COLS), T.float16),
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
                logical_group = physical_group ^ ((shared_row_start + local_row) % 8)
                logical_col = logical_group * 8
                T.evaluate(
                    tir.call_intrin(
                        "float16",
                        tir.op.Op.get("tl.maca_memcpy_async"),
                        T.access_ptr(shared[shared_row_start + local_row, logical_col], "w", 8),
                        T.access_ptr(
                            source[bx, source_row_start + local_row, source_col_start + logical_col],
                            "r",
                            8,
                        ),
                        16,
                        barrier[0],
                        annotations={"barrier_type": tir.StringImm("b128vectype")},
                    )
                )
            T.maca_barrier_arrive_and_wait(barrier)
            T.sync_threads()
            T.copy(shared[shared_row_start : shared_row_start + ROWS, 0:COLS], output[bx, 0:ROWS, 0:COLS])

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260812)
    source = torch.randn(
        (BLOCKS, SOURCE_ROWS, SOURCE_COLS),
        device="cuda",
        dtype=torch.float16,
        generator=generator,
    )
    configurations = (
        (0, 64, 0),
        (0, 64, 256),
        (128, 64, 128),
        (128, 64, 384),
        (0, 128, 0),
        (0, 128, 256),
    )
    failures = 0
    for source_row_start, source_col_start, shared_row_start in configurations:
        output = torch.empty((BLOCKS, ROWS, COLS), device="cuda", dtype=torch.float16)
        kernel = make_copy_kernel(source_row_start, source_col_start, shared_row_start)
        kernel(source, output)
        torch.cuda.synchronize()
        reference = source[
            :, source_row_start : source_row_start + ROWS, source_col_start : source_col_start + COLS
        ]
        diff = (output.float() - reference.float()).abs()
        result = {
            "source_row_start": source_row_start,
            "source_col_start": source_col_start,
            "shared_row_start": shared_row_start,
            "mismatched": int((diff != 0).sum().item()),
            "max_abs": float(diff.max().item()),
        }
        failures += int(result["mismatched"] != 0)
        print(json.dumps(result), flush=True)
    print(json.dumps({"configurations_with_mismatch": failures}), flush=True)


if __name__ == "__main__":
    main()
