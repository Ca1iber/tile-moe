#!/usr/bin/env python3
"""Map v029g Case2 error by 256-column tile position."""

import importlib.util
import json
import sys

import torch
import torch.nn.functional as F

sys.path.insert(0, "/root/tilelang-metax/race_tests/moe")
SOURCE = "/root/moe_runs/v029g_swap_output0_stage_bases.py"
spec = importlib.util.spec_from_file_location("custom_fusedmoe", SOURCE)
module = importlib.util.module_from_spec(spec)
sys.modules["custom_fusedmoe"] = module
assert spec.loader is not None
spec.loader.exec_module(module)

import oj_benchmark  # noqa: E402


@torch.no_grad()
def main() -> None:
    metadata, kernel, args = oj_benchmark.build_case(2)
    kernel(*args)
    torch.cuda.synchronize()

    expert = 9
    start = expert * 100
    end = start + 100
    up = args[-2][start:end]
    down = args[3][expert]
    weights = args[4][start:end, None]
    candidate = args[-1][start:end]
    reference = F.linear(up, down) * weights
    diff = (candidate.float() - reference.float()).abs().reshape(100, 28, 256)

    by_column = []
    for column in range(256):
        column_diff = diff[:, :, column]
        mismatched = int((column_diff > 1e-2).sum().item())
        if mismatched:
            by_column.append(
                {
                    "column_mod_256": column,
                    "mismatched": mismatched,
                    "max_abs": float(column_diff.max().item()),
                    "mean_abs": float(column_diff.mean().item()),
                }
            )

    groups = []
    for width in (8, 16, 32):
        for begin in range(0, 256, width):
            group_diff = diff[:, :, begin : begin + width]
            groups.append(
                {
                    "width": width,
                    "columns": [begin, begin + width],
                    "mismatched": int((group_diff > 1e-2).sum().item()),
                    "elements": int(group_diff.numel()),
                    "max_abs": float(group_diff.max().item()),
                    "mean_abs": float(group_diff.mean().item()),
                }
            )

    by_output_tile = []
    for tile in range(28):
        tile_diff = diff[:, tile]
        by_output_tile.append(
            {
                "tile": tile,
                "first_128_mismatched": int((tile_diff[:, :128] > 1e-2).sum().item()),
                "second_128_mismatched": int((tile_diff[:, 128:] > 1e-2).sum().item()),
                "first_128_max_abs": float(tile_diff[:, :128].max().item()),
            }
        )

    print(
        json.dumps(
            {
                "expert": expert,
                "shape": metadata,
                "columns_with_mismatch": len(by_column),
                "by_column": by_column,
                "groups": groups,
                "by_output_tile": by_output_tile,
            },
            indent=2,
        ),
        flush=True,
    )


if __name__ == "__main__":
    main()
