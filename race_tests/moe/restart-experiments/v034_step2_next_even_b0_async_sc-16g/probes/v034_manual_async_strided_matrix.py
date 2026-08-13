"""Probe manual MACA async copies with MoE-like 8192-element row strides."""

import json
import re
from pathlib import Path

import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


ROWS = 256
LD = 8192
HALF_ROWS = 128
COLS = 64
THREADS = 256
COL_BASES = (0, 64, 4096, 8128)
CASES = 16
DUMP_DIR = Path("/tmp/v034_manual_async_strided_matrix")

COPY_SOURCE = r"""
__device__ __forceinline__ void probe_memcpy_async_16(
    void* dst_shared, const void* src_global, void* barrier_storage) {
  *reinterpret_cast<b128vectype*>(barrier_storage) =
      memcpy_async<16>(dst_shared, const_cast<void*>(src_global));
}
__device__ __forceinline__ void probe_wait_async_16(
    const void* barrier_storage) {
  barrier_arrive_and_wait(
      *reinterpret_cast<const b128vectype*>(barrier_storage));
}
"""


@tilelang.jit(out_idx=[1])
def make_kernel():
    @T.prim_func
    def main(
        A: T.Tensor([ROWS, LD], T.float16),
        O: T.Tensor([CASES, HALF_ROWS, COLS], T.float16),
    ):
        with T.Kernel(CASES, threads=THREADS) as pid:
            shared = T.alloc_shared([ROWS, COLS], T.float16)
            tokens = T.alloc_local([16], T.uint32)
            T.annotate_layout({shared: make_swizzled_layout(shared)})
            T.import_source(COPY_SOURCE)
            tx = T.get_thread_binding()
            dst_half = pid % 2
            src_half = (pid // 2) % 2
            col_case = pid // 4
            col_base = T.if_then_else(
                col_case == 0,
                0,
                T.if_then_else(col_case == 1, 64, T.if_then_else(col_case == 2, 4096, 8128)),
            )
            for row_batch in T.serial(4):
                logical_row = row_batch * (THREADS // 8) + tx // 8
                physical_group = tx % 8
                logical_group = physical_group ^ (logical_row % 8)
                logical_col = logical_group * 8
                T.evaluate(
                    T.call_extern(
                        "handle",
                        "probe_memcpy_async_16",
                        T.address_of(shared[dst_half * HALF_ROWS + logical_row, logical_col]),
                        T.address_of(A[src_half * HALF_ROWS + logical_row, col_base + logical_col]),
                        T.access_ptr(tokens[row_batch * 4], "w", extent=4),
                    )
                )
            for wait_slot in T.serial(4):
                T.evaluate(
                    T.call_extern(
                        "handle",
                        "probe_wait_async_16",
                        T.access_ptr(tokens[wait_slot * 4], "r", extent=4),
                    )
                )
            T.sync_threads()
            T.copy(
                shared[dst_half * HALF_ROWS : (dst_half + 1) * HALF_ROWS, 0:COLS],
                O[pid, 0:HALF_ROWS, 0:COLS],
            )

    return main


def main():
    DUMP_DIR.mkdir(parents=True, exist_ok=True)
    compiled = make_kernel()
    source = compiled.get_kernel_source()
    (DUMP_DIR / "generated.cpp").write_text(source, encoding="utf-8")
    a = torch.arange(ROWS * LD, device="cuda", dtype=torch.int32).reshape(ROWS, LD)
    a = (a % 2048).to(torch.float16)
    result = compiled(a)
    out = result[0] if isinstance(result, (tuple, list)) else result
    rows = []
    for pid in range(CASES):
        dst_half = pid % 2
        src_half = (pid // 2) % 2
        col_base = COL_BASES[pid // 4]
        expected = a[src_half * HALF_ROWS : (src_half + 1) * HALF_ROWS, col_base : col_base + COLS]
        mismatch = torch.nonzero(out[pid] != expected)
        row = {
            "pid": pid,
            "src_half": src_half,
            "dst_half": dst_half,
            "col_base": col_base,
            "passed": mismatch.numel() == 0,
            "mismatch_count": int(mismatch.shape[0]),
        }
        rows.append(row)
        print(json.dumps(row), flush=True)
    summary = {
        "all_passed": all(row["passed"] for row in rows),
        "memcpy_async_sites": len(re.findall(r"memcpy_async<16>", source)),
        "wait_sites": len(re.findall(r"barrier_arrive_and_wait", source)),
        "rows": rows,
    }
    (DUMP_DIR / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
    print(json.dumps(summary, indent=2))
    return 0 if summary["all_passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
