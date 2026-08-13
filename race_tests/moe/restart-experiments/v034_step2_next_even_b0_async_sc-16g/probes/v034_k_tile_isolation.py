"""Compare v033 and a candidate with only one 64-wide intermediate tile active."""

import argparse
import importlib.util
import json

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
    parser.add_argument("--baseline", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--helpers", required=True)
    parser.add_argument("--tiles", default="0,1,2,3,4,5,63,64,126,127")
    args = parser.parse_args()
    helper = load(args.helpers, "isolation_helpers")
    baseline = load(args.baseline, "isolation_baseline")
    candidate = load(args.candidate, "isolation_candidate")
    cfg, _, values = helper.build_inputs(1)
    stacked, gate, up, down, routed, sizes, offsets, padded_offsets, group_idx, _ = values
    gate.zero_()
    up.zero_()
    out_base = torch.empty_like(stacked)
    out_cand = torch.empty_like(stacked)
    mask = helper.valid_mask(values)
    gen = torch.Generator(device="cuda")
    gen.manual_seed(20260813)
    previous = None
    rows = []
    for k_tile in [int(item) for item in args.tiles.split(",") if item]:
        if previous is not None:
            gate[:, previous * 64 : (previous + 1) * 64].zero_()
            up[:, previous * 64 : (previous + 1) * 64].zero_()
        gate_slice = gate[:, k_tile * 64 : (k_tile + 1) * 64]
        up_slice = up[:, k_tile * 64 : (k_tile + 1) * 64]
        gate_slice.normal_(generator=gen)
        gate_slice.mul_(1.0 / (cfg["hidden"] ** 0.5))
        up_slice.normal_(generator=gen)
        up_slice.mul_(1.0 / (cfg["hidden"] ** 0.5))
        baseline.run_kernel(
            stacked, gate, up, down, routed, sizes, offsets, padded_offsets, group_idx, out_base
        )
        candidate.run_kernel(
            stacked, gate, up, down, routed, sizes, offsets, padded_offsets, group_idx, out_cand
        )
        torch.cuda.synchronize()
        diff = (out_cand.float() - out_base.float()).abs()
        bad = diff > (0.01 + 0.01 * out_base.float().abs())
        bad &= mask[:, None]
        col_bad = []
        for begin in range(0, cfg["hidden"], 128):
            col_bad.append(int(bad[mask, begin : begin + 128].sum().item()))
        row = {
            "k_tile": k_tile,
            "bad": int(bad.sum().item()),
            "rate": float(bad[mask].float().mean().item()),
            "max_abs": float(diff[mask].max().item()),
            "column_tiles_128_bad": col_bad,
        }
        rows.append(row)
        print(json.dumps(row), flush=True)
        previous = k_tile
    print(json.dumps({"rows": rows}, indent=2))


if __name__ == "__main__":
    main()
