#!/usr/bin/env python3
"""Identify which Step2 K-tile contributions are missing in v029h Case2."""

import importlib.util
import json
import sys

import numpy as np
import torch
import torch.nn.functional as F

sys.path.insert(0, "/root/tilelang-metax/race_tests/moe")
SOURCE = "/root/moe_runs/v029h_swap_accumulator_roles.py"
spec = importlib.util.spec_from_file_location("custom_fusedmoe", SOURCE)
module = importlib.util.module_from_spec(spec)
sys.modules["custom_fusedmoe"] = module
assert spec.loader is not None
spec.loader.exec_module(module)

import oj_benchmark  # noqa: E402


def error(candidate: torch.Tensor, reference: torch.Tensor) -> dict[str, float | int]:
    diff = (candidate.float() - reference.float()).abs()
    return {
        "mismatched_at_1e-2": int((diff > 1e-2).sum().item()),
        "max_abs": float(diff.max().item()),
        "mean_abs": float(diff.mean().item()),
    }


@torch.no_grad()
def main() -> None:
    metadata, kernel, args = oj_benchmark.build_case(2)
    kernel(*args)
    torch.cuda.synchronize()
    candidate_all = args[-1]
    up_all = args[-2]
    down_all = args[3]
    routed_weights = args[4]

    # Case2 experts 0..15 each own 100 rows; the global max-error row 995 is expert 9.
    expert = 9
    start = expert * 100
    end = start + 100
    up = up_all[start:end]
    down = down_all[expert]
    weights = routed_weights[start:end, None]
    candidate = candidate_all[start:end]

    full = F.linear(up, down) * weights
    even = torch.zeros_like(full)
    odd = torch.zeros_like(full)
    first = torch.zeros_like(full)
    tile_contributions = []
    for k_tile, k_start in enumerate(range(0, metadata["intermediate"], 64)):
        contribution = F.linear(up[:, k_start : k_start + 64], down[:, k_start : k_start + 64])
        if k_tile % 2 == 0:
            even.add_(contribution)
        else:
            odd.add_(contribution)
        if k_tile == 0:
            first.copy_(contribution)
        tile_contributions.append(contribution * weights)
    even.mul_(weights)
    odd.mul_(weights)
    first.mul_(weights)

    candidate_first_halves = candidate.reshape(100, 28, 256)[:, :, :128].reshape(-1)
    first_half_diff_by_row = (
        candidate.reshape(100, 28, 256)[:, :, :128].float()
        - full.reshape(100, 28, 256)[:, :, :128].float()
    ).abs().reshape(100, -1)
    sample_stride = 16
    design = np.stack(
        [
            contribution.reshape(100, 28, 256)[:, :, :128].reshape(-1)[::sample_stride].float().cpu().numpy()
            for contribution in tile_contributions
        ],
        axis=1,
    )
    target = candidate_first_halves[::sample_stride].float().cpu().numpy()
    coefficients, residuals, rank, singular_values = np.linalg.lstsq(design, target, rcond=None)

    result = {
        "expert": expert,
        "rows": [start, end],
        "candidate_vs_full": error(candidate, full),
        "candidate_vs_even_only": error(candidate, even),
        "candidate_vs_odd_only": error(candidate, odd),
        "candidate_vs_first_tile_only": error(candidate, first),
        "mod256_halves": {
            "first_128": error(candidate.reshape(100, 28, 256)[:, :, :128], full.reshape(100, 28, 256)[:, :, :128]),
            "second_128": error(candidate.reshape(100, 28, 256)[:, :, 128:], full.reshape(100, 28, 256)[:, :, 128:]),
        },
        "tile_contribution_fit_first_128": {
            "sample_stride": sample_stride,
            "samples": int(design.shape[0]),
            "rank": int(rank),
            "coefficients": [float(value) for value in coefficients],
            "residual_sum_squares": [float(value) for value in residuals],
            "singular_value_min": float(singular_values.min()),
            "singular_value_max": float(singular_values.max()),
        },
        "first_128_error_by_row": [
            {
                "local_row": row,
                "mismatched_at_1e-2": int((first_half_diff_by_row[row] > 1e-2).sum().item()),
                "max_abs": float(first_half_diff_by_row[row].max().item()),
                "mean_abs": float(first_half_diff_by_row[row].mean().item()),
            }
            for row in range(100)
        ],
    }
    print(json.dumps(result, indent=2), flush=True)


if __name__ == "__main__":
    main()
