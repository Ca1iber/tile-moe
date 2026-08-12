#!/usr/bin/env python3
"""Replay v029g's 32-tile/64-KiB BSM ping-pong without MMA."""

import json

import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout
from tvm import tir

ROWS_HALF = 128
ROWS = 256
COLS = 64
SOURCE_COLS = 2048
K_TILES = SOURCE_COLS // COLS
THREADS = 256
SHARED_ROWS = 512
BLOCKS = 48


@tilelang.jit
def make_copy_kernel():
    @T.prim_func
    def copy_kernel(
        source: T.Tensor((BLOCKS, ROWS, SOURCE_COLS), T.float16),
        output: T.Tensor((BLOCKS, K_TILES, ROWS, COLS), T.float16),
    ):
        with T.Kernel(BLOCKS, threads=THREADS) as bx:
            shared = T.alloc_shared((SHARED_ROWS, COLS), T.float16)
            barrier = T.alloc_maca_barrier()
            T.annotate_layout({shared: make_swizzled_layout(shared)})
            tx = T.get_thread_binding()

            # v029g stage mapping:
            # output0/even=128, output0/odd=0,
            # output1/even=256, output1/odd=384.
            T.copy(source[bx, 0:ROWS_HALF, 0:COLS], shared[ROWS_HALF:ROWS, 0:COLS])
            T.copy(source[bx, ROWS_HALF:ROWS, 0:COLS], shared[ROWS : ROWS + ROWS_HALF, 0:COLS])
            T.sync_threads()

            for k_pair in T.serial(K_TILES // 2):
                k_even = k_pair * 2
                k_odd = k_even + 1

                for row_batch_0 in T.serial(ROWS_HALF // (THREADS // 8)):
                    row_0 = row_batch_0 * (THREADS // 8) + tx // 8
                    physical_group_0 = tx % 8
                    logical_group_0 = physical_group_0 ^ (row_0 % 8)
                    col_0 = logical_group_0 * 8
                    T.evaluate(
                        tir.call_intrin(
                            "float16",
                            tir.op.Op.get("tl.maca_memcpy_async"),
                            T.access_ptr(shared[row_0, col_0], "w", 8),
                            T.access_ptr(source[bx, row_0, k_odd * COLS + col_0], "r", 8),
                            16,
                            barrier[0],
                            annotations={"barrier_type": tir.StringImm("b128vectype")},
                        )
                    )
                T.maca_barrier_arrive_and_wait(barrier)

                for row_batch_1 in T.serial(ROWS_HALF // (THREADS // 8)):
                    row_1 = row_batch_1 * (THREADS // 8) + tx // 8
                    physical_group_1 = tx % 8
                    logical_group_1 = physical_group_1 ^ (row_1 % 8)
                    col_1 = logical_group_1 * 8
                    T.evaluate(
                        tir.call_intrin(
                            "float16",
                            tir.op.Op.get("tl.maca_memcpy_async"),
                            T.access_ptr(shared[ROWS + ROWS_HALF + row_1, col_1], "w", 8),
                            T.access_ptr(
                                source[bx, ROWS_HALF + row_1, k_odd * COLS + col_1],
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

                T.copy(shared[ROWS_HALF:ROWS, 0:COLS], output[bx, k_even, 0:ROWS_HALF, 0:COLS])
                T.copy(
                    shared[ROWS : ROWS + ROWS_HALF, 0:COLS],
                    output[bx, k_even, ROWS_HALF:ROWS, 0:COLS],
                )
                T.sync_threads()

                k_next_even = k_odd + 1
                if k_pair + 1 < K_TILES // 2:
                    for row_batch_2 in T.serial(ROWS_HALF // (THREADS // 8)):
                        row_2 = row_batch_2 * (THREADS // 8) + tx // 8
                        physical_group_2 = tx % 8
                        logical_group_2 = physical_group_2 ^ (row_2 % 8)
                        col_2 = logical_group_2 * 8
                        T.evaluate(
                            tir.call_intrin(
                                "float16",
                                tir.op.Op.get("tl.maca_memcpy_async"),
                                T.access_ptr(shared[ROWS_HALF + row_2, col_2], "w", 8),
                                T.access_ptr(source[bx, row_2, k_next_even * COLS + col_2], "r", 8),
                                16,
                                barrier[0],
                                annotations={"barrier_type": tir.StringImm("b128vectype")},
                            )
                        )
                    T.maca_barrier_arrive_and_wait(barrier)

                    for row_batch_3 in T.serial(ROWS_HALF // (THREADS // 8)):
                        row_3 = row_batch_3 * (THREADS // 8) + tx // 8
                        physical_group_3 = tx % 8
                        logical_group_3 = physical_group_3 ^ (row_3 % 8)
                        col_3 = logical_group_3 * 8
                        T.evaluate(
                            tir.call_intrin(
                                "float16",
                                tir.op.Op.get("tl.maca_memcpy_async"),
                                T.access_ptr(shared[ROWS + row_3, col_3], "w", 8),
                                T.access_ptr(
                                    source[bx, ROWS_HALF + row_3, k_next_even * COLS + col_3],
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

                T.copy(shared[0:ROWS_HALF, 0:COLS], output[bx, k_odd, 0:ROWS_HALF, 0:COLS])
                T.copy(
                    shared[ROWS + ROWS_HALF : SHARED_ROWS, 0:COLS],
                    output[bx, k_odd, ROWS_HALF:ROWS, 0:COLS],
                )
                T.sync_threads()

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260812)
    source = torch.randn(
        (BLOCKS, ROWS, SOURCE_COLS),
        device="cuda",
        dtype=torch.float16,
        generator=generator,
    )
    output = torch.empty(
        (BLOCKS, K_TILES, ROWS, COLS),
        device="cuda",
        dtype=torch.float16,
    )
    kernel = make_copy_kernel()
    kernel(source, output)
    torch.cuda.synchronize()

    failures = 0
    for k_tile in range(K_TILES):
        reference = source[:, :, k_tile * COLS : (k_tile + 1) * COLS]
        for half, row_start in (("output0", 0), ("output1", ROWS_HALF)):
            diff = (
                output[:, k_tile, row_start : row_start + ROWS_HALF].float()
                - reference[:, row_start : row_start + ROWS_HALF].float()
            ).abs()
            mismatched = int((diff != 0).sum().item())
            failures += int(mismatched != 0)
            print(
                json.dumps(
                    {
                        "k_tile": k_tile,
                        "parity": "even" if k_tile % 2 == 0 else "odd",
                        "half": half,
                        "mismatched": mismatched,
                        "max_abs": float(diff.max().item()),
                    }
                ),
                flush=True,
            )
    print(json.dumps({"tile_halves_with_mismatch": failures}), flush=True)


if __name__ == "__main__":
    main()
