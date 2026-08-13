"""Map MoE correctness failures by expert, row block, and output-column tile."""

import argparse
import importlib.util
import json
from pathlib import Path

import torch


def load(path, name):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", required=True)
    parser.add_argument("--helpers", required=True)
    args = parser.parse_args()
    helper = load(args.helpers, "validation_helpers")
    candidate = load(args.submission, "candidate_under_map")
    cfg, total_padded, values = helper.build_inputs(1)
    candidate.run_kernel(*values[:9], values[9])
    torch.cuda.synchronize()
    expected = helper.reference(values)
    actual = values[9]
    mask = helper.valid_mask(values)
    abs_diff = (actual.float() - expected.float()).abs()
    bad = abs_diff > (0.01 + 0.01 * expected.float().abs())
    bad &= mask[:, None]
    rows = []
    for expert in range(cfg["experts"]):
        count = int(values[5][expert].item())
        start = int(values[7][expert].item())
        region = bad[start : start + count]
        diff = abs_diff[start : start + count]
        rows.append(
            {
                "expert": expert,
                "valid_rows": count,
                "bad": int(region.sum().item()),
                "rate": float(region.float().mean().item()),
                "bad_rows": int(region.any(dim=1).sum().item()),
                "max_abs": float(diff.max().item()),
            }
        )
    col_tiles = []
    for begin in range(0, cfg["hidden"], 128):
        region = bad[:, begin : begin + 128]
        col_tiles.append(
            {
                "begin": begin,
                "bad": int(region.sum().item()),
                "rate_valid": float(region[mask].float().mean().item()),
            }
        )
    row_blocks = []
    for begin in range(0, total_padded, 128):
        valid_region = mask[begin : begin + 128]
        region = bad[begin : begin + 128]
        row_blocks.append(
            {
                "begin": begin,
                "valid_rows": int(valid_region.sum().item()),
                "bad": int(region.sum().item()),
                "rate_valid": float(region[valid_region].float().mean().item()) if valid_region.any() else 0.0,
            }
        )
    summary = {
        "submission": str(Path(args.submission).resolve()),
        "cfg": cfg,
        "total_bad": int(bad.sum().item()),
        "total_valid_elements": int(mask.sum().item() * cfg["hidden"]),
        "rate": float(bad[mask].float().mean().item()),
        "max_abs": float(abs_diff[mask].max().item()),
        "experts": rows,
        "column_tiles_128": col_tiles,
        "row_blocks_128": row_blocks,
    }
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
