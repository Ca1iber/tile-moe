"""Launch one exact-v197 Case-2/3 call inside its proven public envelope.

This helper is for matched C500 profiling only.  The expert counts preserve
the official aggregate totals, exactly half short/half long experts, and the
``max_rows <= 192`` specialization used by v191/v197.  Keeping the complete
call intact preserves the real prepack -> Stage-1 -> Stage-2 cache state.
"""

from __future__ import annotations

import argparse
import importlib.util
import math
from pathlib import Path

import torch


BASE_COUNTS = (
    150,
    160,
    170,
    175,
    180,
    80,
    90,
    100,
    110,
    115,
    187,
    190,
    192,
    120,
    125,
    128,
)
CASES = {
    2: (2, 4544, 6144),
    3: (4, 9088, 12288),
}
HIDDEN = 7168
INTERMEDIATE = 2048


def load(path: Path):
    spec = importlib.util.spec_from_file_location("d212_v197_submission", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def make_inputs(case_id: int):
    repeats, expected_valid, expected_padded = CASES[case_id]
    counts = BASE_COUNTS * repeats
    raw_offsets = [0]
    padded_offsets = [0]
    block_to_expert: list[int] = []
    for expert_id, count in enumerate(counts):
        raw_offsets.append(raw_offsets[-1] + count)
        padded_rows = math.ceil(count / 128) * 128
        padded_offsets.append(padded_offsets[-1] + padded_rows)
        block_to_expert.extend([expert_id] * (padded_rows // 128))

    assert raw_offsets[-1] == expected_valid
    assert padded_offsets[-1] == expected_padded
    assert sum(count <= 128 for count in counts) == len(counts) // 2
    assert max(counts) == 192

    device = torch.device("cuda")
    dtype = torch.float16
    tokens = torch.zeros((expected_padded, HIDDEN), device=device, dtype=dtype)
    gate = torch.zeros(
        (len(counts), INTERMEDIATE, HIDDEN), device=device, dtype=dtype
    )
    up = torch.zeros_like(gate)
    down = torch.zeros(
        (len(counts), HIDDEN, INTERMEDIATE), device=device, dtype=dtype
    )
    routed = torch.ones((expected_valid,), device=device, dtype=torch.float32)
    sizes = torch.tensor(counts, device=device, dtype=torch.int32)
    offsets = torch.tensor(raw_offsets, device=device, dtype=torch.int32)
    padded = torch.tensor(padded_offsets, device=device, dtype=torch.int32)
    owners = torch.tensor(block_to_expert, device=device, dtype=torch.int32)
    out = torch.empty_like(tokens)
    return tokens, gate, up, down, routed, sizes, offsets, padded, owners, out


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--submission", type=Path, required=True)
    parser.add_argument("--case", type=int, choices=tuple(CASES), required=True)
    parser.add_argument("--replays", type=int, default=2)
    args = parser.parse_args()

    module = load(args.submission.resolve())
    kernel_args = make_inputs(args.case)
    for _ in range(args.replays):
        module.run_kernel(*kernel_args)
    torch.cuda.synchronize()
    print(
        f"d212 profile driver complete: case={args.case} "
        f"replays={args.replays} submission={args.submission.resolve()}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
