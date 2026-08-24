#!/usr/bin/env python3
"""Diagnostic-only differential correctness stress for v089 Case 1.

This intentionally does not replace the official/OJ correctness verdict.  It
uses the exact Case-1 tensor shapes and compares v089 and the teammate source
against the externally OJ-accepted v088 source over repeated executions and
several legal expert-tail distributions.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
import math
import random
import sys
from pathlib import Path

import torch


EXPERTS = 16
HIDDEN = 2048
INTERMEDIATE = 8192
VALID = 2272
BLOCK = 128
NUM_BLOCKS = 24
PADDED = NUM_BLOCKS * BLOCK


def load_module(path: Path, tag: str):
    spec = importlib.util.spec_from_file_location(tag, path.resolve())
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[tag] = module
    spec.loader.exec_module(module)
    return module


def metadata(counts):
    if len(counts) != EXPERTS or sum(counts) != VALID:
        raise ValueError(counts)
    offsets, padded_offsets, group_idx = [], [], []
    raw = padded = 0
    for expert, count in enumerate(counts):
        blocks = math.ceil((count + 1) / BLOCK)
        offsets.append(raw)
        padded_offsets.append(padded)
        group_idx.extend([expert] * blocks)
        raw += count
        padded += blocks * BLOCK
    if len(group_idx) != NUM_BLOCKS or padded != PADDED:
        raise ValueError((counts, len(group_idx), padded))
    return offsets, padded_offsets, group_idx


def random_counts(seed):
    rng = random.Random(seed)
    blocks = [1] * EXPERTS
    for _ in range(NUM_BLOCKS - EXPERTS):
        blocks[rng.randrange(EXPERTS)] += 1
    counts = [(value - 1) * BLOCK for value in blocks]
    remaining = VALID - sum(counts)
    order = list(range(EXPERTS))
    while remaining:
        rng.shuffle(order)
        progressed = False
        for expert in order:
            room = blocks[expert] * BLOCK - 1 - counts[expert]
            if room <= 0:
                continue
            add = min(room, remaining, rng.randint(1, min(room, remaining)))
            counts[expert] += add
            remaining -= add
            progressed = True
            if not remaining:
                break
        if not progressed:
            raise RuntimeError("cannot distribute counts")
    return counts


def mismatch(actual, expected, rtol=0.05, atol=0.05):
    a = actual.float()
    e = expected.float()
    diff = (a - e).abs()
    bad = diff > (atol + rtol * e.abs())
    count = int(bad.sum().item())
    if count == 0:
        return {"pass": True, "bad": 0, "max_abs": float(diff.max().item())}
    coord = bad.nonzero()[0]
    row, col = int(coord[0].item()), int(coord[1].item())
    return {
        "pass": False,
        "bad": count,
        "max_abs": float(diff.max().item()),
        "coord": [row, col],
        "actual": float(a[row, col].item()),
        "expected": float(e[row, col].item()),
        "abs": float(diff[row, col].item()),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--v088", type=Path, required=True)
    parser.add_argument("--mate", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--value-seeds", type=int, default=8)
    parser.add_argument("--distribution-seeds", type=int, default=12)
    parser.add_argument("--repeats", type=int, default=5)
    parser.add_argument("--output", type=Path, required=True)
    opts = parser.parse_args()

    modules = {
        "v088": load_module(opts.v088, "diag_v088"),
        "mate": load_module(opts.mate, "diag_mate"),
        "v089": load_module(opts.candidate, "diag_v089"),
    }
    gen = torch.Generator(device="cuda")
    gen.manual_seed(20260824)
    gate = torch.randn((EXPERTS, INTERMEDIATE, HIDDEN), device="cuda", dtype=torch.float16, generator=gen) / math.sqrt(HIDDEN)
    up = torch.randn((EXPERTS, INTERMEDIATE, HIDDEN), device="cuda", dtype=torch.float16, generator=gen) / math.sqrt(HIDDEN)
    down = torch.randn((EXPERTS, HIDDEN, INTERMEDIATE), device="cuda", dtype=torch.float16, generator=gen) / math.sqrt(INTERMEDIATE)
    stacked = torch.empty((PADDED, HIDDEN), device="cuda", dtype=torch.float16)
    weights = torch.empty((VALID,), device="cuda", dtype=torch.float32)
    outputs = {
        name: torch.empty((PADDED, HIDDEN), device="cuda", dtype=torch.float16)
        for name in modules
    }

    fixed = [100] * 8 + [184] * 8
    distributions = [("fixed", fixed), ("fixed_reversed", list(reversed(fixed)))]
    distributions.extend(
        (f"random_{seed}", random_counts(9100 + seed))
        for seed in range(opts.distribution_seeds)
    )
    rows = []
    stopped = False
    for distribution_name, counts in distributions:
        offsets, padded_offsets, group_idx = metadata(counts)
        meta_tensors = (
            torch.tensor(counts, device="cuda", dtype=torch.int32),
            torch.tensor(offsets, device="cuda", dtype=torch.int32),
            torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
            torch.tensor(group_idx, device="cuda", dtype=torch.int32),
        )
        for value_seed in range(opts.value_seeds):
            value_gen = torch.Generator(device="cuda")
            value_gen.manual_seed(33000 + value_seed)
            stacked.normal_(generator=value_gen)
            weights.uniform_(generator=value_gen)
            common = (stacked, gate, up, down, weights, *meta_tensors)

            outputs["v088"].fill_(7.0)
            modules["v088"].run_kernel(*common, outputs["v088"])
            torch.cuda.synchronize()
            expected = outputs["v088"].clone()

            for name in ("mate", "v089"):
                for repeat in range(opts.repeats):
                    outputs[name].fill_(7.0)
                    modules[name].run_kernel(*common, outputs[name])
                    torch.cuda.synchronize()
                    result = mismatch(outputs[name], expected)
                    row = {
                        "distribution": distribution_name,
                        "counts": counts,
                        "value_seed": value_seed,
                        "source": name,
                        "repeat": repeat,
                        **result,
                    }
                    rows.append(row)
                    print(json.dumps(row, ensure_ascii=False), flush=True)
                    if not result["pass"]:
                        stopped = True
                        break
                if stopped:
                    break
            if stopped:
                break
        if stopped:
            break

    summary = {
        "kind": "diagnostic differential stress; not official/OJ verdict",
        "shape": [PADDED, HIDDEN],
        "valid": VALID,
        "num_blocks": NUM_BLOCKS,
        "rows": len(rows),
        "pass": not stopped,
        "first_failure": next((row for row in rows if not row["pass"]), None),
    }
    opts.output.write_text(json.dumps({"summary": summary, "rows": rows}, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2), flush=True)
    raise SystemExit(0 if not stopped else 2)


if __name__ == "__main__":
    main()
