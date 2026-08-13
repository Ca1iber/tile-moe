"""Isolate MACA manual 16-byte async-copy behavior by source/destination half."""

import argparse
import json
import re
from pathlib import Path

import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


ROWS = 256
COLS = 64
HALF_ROWS = 128
THREADS = 256

COPY_SOURCE = r"""
__device__ __forceinline__ void probe_memcpy_async_16(
    void* dst_shared, const void* src_global, void* barrier_storage) {
  *reinterpret_cast<b128vectype*>(barrier_storage) =
      memcpy_async<16>(dst_shared, const_cast<void*>(src_global));
}
__device__ __forceinline__ void probe_memcpy_sync_16(
    void* dst_shared, const void* src_global, void* barrier_storage) {
  *reinterpret_cast<uint4*>(dst_shared) =
      *reinterpret_cast<const uint4*>(src_global);
}
__device__ __forceinline__ void probe_wait_async_16(
    const void* barrier_storage) {
  barrier_arrive_and_wait(
      *reinterpret_cast<const b128vectype*>(barrier_storage));
}
"""


def make_kernel(kind: str, src_half: int, dst_half: int):
    if kind not in {"sync", "async"}:
        raise ValueError(kind)

    @tilelang.jit(out_idx=[1])
    def kernel():
        @T.prim_func
        def main(
            A: T.Tensor([ROWS, COLS], T.float16),
            O: T.Tensor([HALF_ROWS, COLS], T.float16),
        ):
            with T.Kernel(threads=THREADS):
                shared = T.alloc_shared([ROWS, COLS], T.float16)
                tokens = T.alloc_local([16], T.uint32)
                T.annotate_layout({shared: make_swizzled_layout(shared)})
                T.import_source(COPY_SOURCE)
                tx = T.get_thread_binding()
                for row_batch in T.serial(4):
                    logical_row = row_batch * (THREADS // 8) + tx // 8
                    physical_group = tx % 8
                    logical_group = physical_group ^ (logical_row % 8)
                    logical_col = logical_group * 8
                    T.evaluate(
                        T.call_extern(
                            "handle",
                            "probe_memcpy_async_16" if kind == "async" else "probe_memcpy_sync_16",
                            T.address_of(shared[dst_half * HALF_ROWS + logical_row, logical_col]),
                            T.address_of(A[src_half * HALF_ROWS + logical_row, logical_col]),
                            T.access_ptr(tokens[row_batch * 4], "w", extent=4),
                        )
                    )
                if kind == "async":
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
                    O,
                )

        return main

    return kernel


def run_one(kind: str, src_half: int, dst_half: int, dump_dir: Path):
    compiled = make_kernel(kind, src_half, dst_half)()
    source = compiled.get_kernel_source()
    dump_dir.mkdir(parents=True, exist_ok=True)
    (dump_dir / f"{kind}_src{src_half}_dst{dst_half}.cpp").write_text(source)

    a = torch.arange(ROWS * COLS, device="cuda", dtype=torch.float32).reshape(ROWS, COLS)
    a = a.to(torch.float16)
    result = compiled(a)
    out = result[0] if isinstance(result, (tuple, list)) else result
    expected = a[src_half * HALF_ROWS : (src_half + 1) * HALF_ROWS]
    mismatch = torch.nonzero(out != expected)
    row = {
        "kind": kind,
        "src_half": src_half,
        "dst_half": dst_half,
        "passed": mismatch.numel() == 0,
        "mismatch_count": int(mismatch.shape[0]),
        "memcpy_async_sites": len(re.findall(r"memcpy_async<16>", source)),
        "wait_sites": len(re.findall(r"barrier_arrive_and_wait", source)),
    }
    if mismatch.numel():
        first = mismatch[:8]
        row["first_indices"] = first.cpu().tolist()
        row["first_got"] = out[first[:, 0], first[:, 1]].cpu().tolist()
        row["first_expected"] = expected[first[:, 0], first[:, 1]].cpu().tolist()
    return row


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--dump-dir", type=Path, default=Path("/tmp/v034_manual_async_half_matrix"))
    args = parser.parse_args()
    rows = []
    for kind in ("sync", "async"):
        for src_half in (0, 1):
            for dst_half in (0, 1):
                try:
                    row = run_one(kind, src_half, dst_half, args.dump_dir)
                except Exception as error:
                    row = {
                        "kind": kind,
                        "src_half": src_half,
                        "dst_half": dst_half,
                        "passed": False,
                        "error": f"{type(error).__name__}: {error}",
                    }
                rows.append(row)
                print(json.dumps(row, ensure_ascii=False), flush=True)
    (args.dump_dir / "summary.json").write_text(
        json.dumps(rows, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    return 0 if all(row.get("passed") for row in rows) else 1


if __name__ == "__main__":
    raise SystemExit(main())
