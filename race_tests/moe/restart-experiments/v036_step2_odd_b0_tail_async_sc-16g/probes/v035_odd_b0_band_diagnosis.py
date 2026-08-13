"""Identify which down-weight tile the broken odd-B0 async path actually consumes."""

import argparse
import importlib.util
import json

import torch
import torch.nn.functional as F


def load(path, name):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def metrics(actual, expected):
    actual = actual.float().reshape(-1)
    expected = expected.float().reshape(-1)
    diff = actual - expected
    centered_actual = actual - actual.mean()
    centered_expected = expected - expected.mean()
    denom = torch.sqrt((centered_actual.square().sum()) * (centered_expected.square().sum()))
    corr = float((centered_actual * centered_expected).sum().div(denom).item()) if denom > 0 else 0.0
    scale = float((actual * expected).sum().div(expected.square().sum()).item())
    return {
        "mean_abs": float(diff.abs().mean().item()),
        "max_abs": float(diff.abs().max().item()),
        "rmse": float(diff.square().mean().sqrt().item()),
        "correlation": corr,
        "zero_intercept_scale": scale,
    }


@torch.no_grad()
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--helpers", required=True)
    parser.add_argument("--k-tile", type=int, default=1)
    args = parser.parse_args()
    helper = load(args.helpers, "stale_helpers")
    candidate = load(args.candidate, "stale_candidate")
    cfg, _, values = helper.build_inputs(1)
    stacked, gate, up, down, routed, sizes, offsets, padded_offsets, group_idx, output = values
    k_tile = args.k_tile
    k_start = k_tile * 64
    generator = torch.Generator(device="cuda")
    generator.manual_seed(2026081401 + k_tile)
    gate.zero_()
    up.zero_()
    gate[:, k_start : k_start + 64].normal_(generator=generator)
    gate[:, k_start : k_start + 64].mul_(1.0 / (cfg["hidden"] ** 0.5))
    up[:, k_start : k_start + 64].normal_(generator=generator)
    up[:, k_start : k_start + 64].mul_(1.0 / (cfg["hidden"] ** 0.5))
    candidate.run_kernel(stacked, gate, up, down, routed, sizes, offsets, padded_offsets, group_idx, output)
    torch.cuda.synchronize()
    up_logits = next(iter(candidate._WORKSPACE_CACHE.values()))

    actual_parts = []
    counterfactuals = {"correct_same_k": [], "previous_k": [], "next_k": [], "zero": []}
    per_expert = []
    for expert in range(cfg["experts"]):
        count = int(sizes[expert].item())
        raw_start = int(offsets[expert].item())
        padded_start = int(padded_offsets[expert].item())
        u = up_logits[padded_start : padded_start + count, k_start : k_start + 64].float()
        weight = routed[raw_start : raw_start + count, None].float()
        actual_full = output[padded_start : padded_start + count].float()
        actual = actual_full.reshape(count, cfg["hidden"] // 256, 256)[:, :, :128].reshape(count, -1)
        actual_parts.append(actual)
        expert_cf = {}
        for label, source_tile in (
            ("correct_same_k", k_tile),
            ("previous_k", k_tile - 1),
            ("next_k", k_tile + 1),
        ):
            source_start = source_tile * 64
            full = F.linear(u, down[expert, :, source_start : source_start + 64].float()) * weight
            first_half = full.reshape(count, cfg["hidden"] // 256, 256)[:, :, :128].reshape(count, -1)
            counterfactuals[label].append(first_half)
            expert_cf[label] = metrics(actual, first_half)
        zeros = torch.zeros_like(actual)
        counterfactuals["zero"].append(zeros)
        expert_cf["zero"] = metrics(actual, zeros)
        per_expert.append({"expert": expert, "rows": count, "comparisons": expert_cf})

    actual_all = torch.cat(actual_parts)
    comparisons = {
        label: metrics(actual_all, torch.cat(parts)) for label, parts in counterfactuals.items()
    }
    correct_all = torch.cat(counterfactuals["correct_same_k"])
    # The flattened region is [row, output_tile_256, first_half_128].  Resolve
    # fixed sub-bands inside every logical B0 half to see whether one of the
    # four row_batch transactions is systematically absent.
    actual_banded = actual_all.reshape(-1, cfg["hidden"] // 256, 128)
    correct_banded = correct_all.reshape(-1, cfg["hidden"] // 256, 128)
    subbands = {}
    for width in (16, 32):
        subbands[str(width)] = [
            {
                "begin": begin,
                "end": begin + width,
                **metrics(
                    actual_banded[:, :, begin : begin + width],
                    correct_banded[:, :, begin : begin + width],
                ),
            }
            for begin in range(0, 128, width)
        ]
    best = min(comparisons, key=lambda label: comparisons[label]["rmse"])
    print(
        json.dumps(
            {
                "k_tile": k_tile,
                "compared_region": "logical B0: first 128 columns of every 256-wide output tile",
                "candidate": args.candidate,
                "comparisons": comparisons,
                "best_rmse_match": best,
                "correct_same_k_subbands": subbands,
                "per_expert": per_expert,
            },
            indent=2,
        ),
        flush=True,
    )


if __name__ == "__main__":
    main()
