#!/usr/bin/env python3
"""Compare static Step1 MetaX ISA opcodes for v052 and its parent."""

import argparse
import collections
import json
import re
from pathlib import Path


OPCODE = re.compile(r"^\t([a-z][a-z0-9_]*)\b")


def step1_lines(path):
    lines = Path(path).read_text(encoding="utf-8", errors="replace").splitlines()
    start = next(i for i, line in enumerate(lines) if line.startswith("kernel_kernel:"))
    end = next(i for i, line in enumerate(lines[start:], start) if line.startswith("\t.size\tkernel_kernel,"))
    return lines[start : end + 1]


def counts(lines):
    result = collections.Counter()
    for line in lines:
        match = OPCODE.match(line)
        if match:
            result[match.group(1)] += 1
    return result


def write_counts(path, values):
    Path(path).write_text("".join(f"{name} {values[name]}\n" for name in sorted(values)), encoding="utf-8")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--output-dir", required=True)
    args = parser.parse_args()

    output = Path(args.output_dir)
    output.mkdir(parents=True, exist_ok=True)
    parent_lines = step1_lines(args.parent)
    candidate_lines = step1_lines(args.candidate)
    parent = counts(parent_lines)
    candidate = counts(candidate_lines)
    write_counts(output / "parent_step1_opcodes.txt", parent)
    write_counts(output / "candidate_step1_opcodes.txt", candidate)

    delta_lines = []
    for name in sorted(set(parent) | set(candidate)):
        delta = candidate[name] - parent[name]
        if delta:
            delta_lines.append(f"{name:30s} {parent[name]:6d} {candidate[name]:6d} {delta:+6d}\n")
    (output / "step1_opcode_delta.txt").write_text("".join(delta_lines), encoding="utf-8")
    summary = {
        "parent": str(Path(args.parent).resolve()),
        "candidate": str(Path(args.candidate).resolve()),
        "parent_step1_static_instructions": sum(parent.values()),
        "candidate_step1_static_instructions": sum(candidate.values()),
        "instruction_change_percent": (sum(candidate.values()) / sum(parent.values()) - 1.0) * 100.0,
        "selected_opcodes": {
            name: {"parent": parent[name], "candidate": candidate[name], "delta": candidate[name] - parent[name]}
            for name in ("mma_16x16x16f16", "ldg_b128", "lds_b128", "sts_b128", "barrier", "arrive", "snop")
        },
    }
    (output / "step1_isa_summary.json").write_text(json.dumps(summary, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
