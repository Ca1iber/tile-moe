#!/usr/bin/env python3
import json
from pathlib import Path

import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


@tilelang.jit(out_idx=[-1])
def make_copy_kernel(rows: int, cols: int, use_swizzle: bool, use_async: bool):
    @T.prim_func
    def copy_kernel(A: T.Tensor((rows, cols), T.float16), B: T.Tensor((rows, cols), T.float16)):
        with T.Kernel(1, threads=256):
            shared = T.alloc_shared((rows, cols), T.float16)
            bar = T.alloc_maca_barrier()
            if use_swizzle:
                T.annotate_layout({shared: make_swizzled_layout(shared)})
            if use_async:
                T.maca_async_copy(A, shared, barrier=bar)
                T.maca_barrier_arrive_and_wait(bar)
            else:
                T.copy(A, shared)
            T.sync_threads()
            T.copy(shared, B)

    return copy_kernel


def main() -> None:
    tilelang.disable_cache()
    results = []
    for rows in (32, 128):
        for use_swizzle in (False, True):
            for use_async in (False, True):
                kernel = make_copy_kernel(rows, 64, use_swizzle, use_async)
                source = kernel.get_kernel_source()
                Path(f"/tmp/probe_{'async' if use_async else 'sync'}_rows{rows}_swizzle{int(use_swizzle)}.cpp").write_text(source)
                src = torch.arange(rows * 64, device="cuda", dtype=torch.float16).reshape(rows, 64)
                dst = kernel(src)
                torch.cuda.synchronize()
                diff = (dst.float() - src.float()).abs()
                result = {
                    "rows": rows,
                    "cols": 64,
                    "swizzle": use_swizzle,
                    "async": use_async,
                    "max_abs": float(diff.max().item()),
                    "mismatched": int((diff != 0).sum().item()),
                    "memcpy_async_sites": source.count("memcpy_async"),
                    "wait_sites": source.count("barrier_arrive_and_wait"),
                    "syncthreads_sites": source.count("__syncthreads"),
                }
                print(json.dumps(result), flush=True)
                results.append(result)
    if any(item["mismatched"] for item in results):
        raise SystemExit(1)


if __name__ == "__main__":
    main()
