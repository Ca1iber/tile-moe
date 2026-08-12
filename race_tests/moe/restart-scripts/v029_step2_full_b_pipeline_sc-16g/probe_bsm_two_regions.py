#!/usr/bin/env python3
"""Check whether two sequential 16 KiB inverse-swizzle BSM regions coexist."""

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
def make_copy_kernel(stage_start: int, two_tokens: bool, sync_between: bool):
    @T.prim_func
    def copy_kernel(
        first: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        second: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        first_out: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
        second_out: T.Tensor((BLOCKS, ROWS, COLS), T.float16),
    ):
        with T.Kernel(BLOCKS, threads=THREADS) as bx:
            shared = T.alloc_shared((SHARED_ROWS, COLS), T.float16)
            barrier_0 = T.alloc_maca_barrier()
            barrier_1 = T.alloc_maca_barrier()
            T.annotate_layout({shared: make_swizzled_layout(shared)})
            tx = T.get_thread_binding()

            for row_batch_0 in T.serial(ROWS // (THREADS // 8)):
                row_0 = row_batch_0 * (THREADS // 8) + tx // 8
                physical_group_0 = tx % 8
                logical_group_0 = physical_group_0 ^ ((stage_start + row_0) % 8)
                col_0 = logical_group_0 * 8
                T.evaluate(
                    tir.call_intrin(
                        "float16",
                        tir.op.Op.get("tl.maca_memcpy_async"),
                        T.access_ptr(shared[stage_start + row_0, col_0], "w", 8),
                        T.access_ptr(first[bx, row_0, col_0], "r", 8),
                        16,
                        barrier_0[0],
                        annotations={"barrier_type": tir.StringImm("b128vectype")},
                    )
                )
            T.maca_barrier_arrive_and_wait(barrier_0)
            if sync_between:
                T.sync_threads()

            second_start = stage_start + ROWS
            for row_batch_1 in T.serial(ROWS // (THREADS // 8)):
                row_1 = row_batch_1 * (THREADS // 8) + tx // 8
                physical_group_1 = tx % 8
                logical_group_1 = physical_group_1 ^ ((second_start + row_1) % 8)
                col_1 = logical_group_1 * 8
                T.evaluate(
                    tir.call_intrin(
                        "float16",
                        tir.op.Op.get("tl.maca_memcpy_async"),
                        T.access_ptr(shared[second_start + row_1, col_1], "w", 8),
                        T.access_ptr(second[bx, row_1, col_1], "r", 8),
                        16,
                        (barrier_1[0] if two_tokens else barrier_0[0]),
                        annotations={"barrier_type": tir.StringImm("b128vectype")},
                    )
                )
            if two_tokens:
                T.maca_barrier_arrive_and_wait(barrier_1)
            else:
                T.maca_barrier_arrive_and_wait(barrier_0)
            T.sync_threads()
            T.copy(shared[stage_start : stage_start + ROWS, 0:COLS], first_out[bx, 0:ROWS, 0:COLS])
            T.copy(shared[second_start : second_start + ROWS, 0:COLS], second_out[bx, 0:ROWS, 0:COLS])

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260812)
    first = torch.randn((BLOCKS, ROWS, COLS), device="cuda", dtype=torch.float16, generator=generator)
    second = torch.randn((BLOCKS, ROWS, COLS), device="cuda", dtype=torch.float16, generator=generator)
    failures = 0
    for stage_start in (0, 256):
        for two_tokens, sync_between in ((False, False), (True, False), (False, True)):
            first_out = torch.empty_like(first)
            second_out = torch.empty_like(second)
            kernel = make_copy_kernel(stage_start, two_tokens, sync_between)
            kernel(first, second, first_out, second_out)
            torch.cuda.synchronize()
            first_diff = (first_out.float() - first.float()).abs()
            second_diff = (second_out.float() - second.float()).abs()
            result = {
                "stage_start": stage_start,
                "two_tokens": two_tokens,
                "sync_between": sync_between,
                "first_mismatched": int((first_diff != 0).sum().item()),
                "first_max_abs": float(first_diff.max().item()),
                "second_mismatched": int((second_diff != 0).sum().item()),
                "second_max_abs": float(second_diff.max().item()),
            }
            failures += int(result["first_mismatched"] != 0 or result["second_mismatched"] != 0)
            print(json.dumps(result), flush=True)
    # The probe intentionally contains expected-failure configurations; report
    # every result without treating those configurations as a process failure.
    print(json.dumps({"configurations_with_mismatch": failures}), flush=True)


if __name__ == "__main__":
    main()
