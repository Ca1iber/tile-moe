#!/usr/bin/env python3
import json
from pathlib import Path

import torch
import tilelang
import tilelang.language as T
from tvm import tir
from tilelang.layout import make_swizzled_layout


def maca_memcpy_async_16(dst, src, barrier):
    """Issue one 16-byte BSM transfer using layout-lowered BufferLoad addresses."""
    return T.evaluate(
        tir.call_intrin(
            "handle",
            tir.op.Op.get("tl.maca_memcpy_async"),
            T.access_ptr(dst, "w", extent=8),
            T.access_ptr(src, "r", extent=8),
            16,
            barrier[0],
            annotations={"barrier_type": tir.StringImm("b128vectype")},
        )
    )


@tilelang.jit(out_idx=[-1])
def make_copy_kernel(rows: int, cols: int, direct_swizzle: bool):
    @T.prim_func
    def copy_kernel(A: T.Tensor((rows, cols), T.float16), B: T.Tensor((rows, cols), T.float16)):
        with T.Kernel(1, threads=256):
            shared = T.alloc_shared((rows, cols), T.float16)
            bar = T.alloc_maca_barrier()
            T.annotate_layout({shared: make_swizzled_layout(shared)})
            if direct_swizzle:
                tx = T.get_thread_binding()
                for chunk in T.serial(rows * cols // (256 * 8)):
                    linear = chunk * 256 * 8 + tx * 8
                    row = linear // cols
                    col = linear % cols
                    maca_memcpy_async_16(shared[row, col], A[row, col], bar)
            else:
                T.maca_async_copy(A, shared, barrier=bar)
            T.maca_barrier_arrive_and_wait(bar)
            T.sync_threads()
            T.copy(shared, B)

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    for rows in (32, 64, 128):
        for direct_swizzle in (False, True):
            kernel = make_copy_kernel(rows, 64, direct_swizzle)
            source = kernel.get_kernel_source()
            mode = "manual" if direct_swizzle else "tileop"
            Path(f"/tmp/probe_direct_swizzle_{mode}_rows{rows}.cpp").write_text(source)
            src = torch.arange(rows * 64, device="cuda", dtype=torch.float16).reshape(rows, 64)
            dst = kernel(src)
            torch.cuda.synchronize()
            diff = (dst.float() - src.float()).abs()
            print(
                json.dumps(
                    {
                        "rows": rows,
                        "mode": mode,
                        "max_abs": float(diff.max().item()),
                        "mismatched": int((diff != 0).sum().item()),
                        "memcpy_async_sites": source.count("memcpy_async"),
                    }
                ),
                flush=True,
            )


if __name__ == "__main__":
    main()
