#!/usr/bin/env python3
import argparse
import hashlib
import json
import re
from collections import Counter
from pathlib import Path


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def function_lines(text, name):
    start = re.search(rf"^{re.escape(name)}:\s", text, re.M)
    if not start:
        raise RuntimeError(f"missing function {name}")
    end = re.search(
        rf"^\s*\.size\s+{re.escape(name)},",
        text[start.end() :],
        re.M,
    )
    if not end:
        raise RuntimeError(f"missing end for {name}")
    return text[start.end() : start.end() + end.start()].splitlines()


def summarize(lines):
    opcodes = Counter()
    for raw in lines:
        line = raw.strip()
        if not line or line.startswith((".", ";")) or line.endswith(":"):
            continue
        line = line.split(";", 1)[0].strip()
        if line:
            opcodes[line.split(None, 1)[0]] += 1
    groups = {
        "global_load": sum(v for k, v in opcodes.items() if k.startswith("ldg")),
        "global_store": sum(v for k, v in opcodes.items() if k.startswith("stg")),
        "shared_load": sum(v for k, v in opcodes.items() if k.startswith("lds")),
        "shared_store": sum(v for k, v in opcodes.items() if k.startswith("sts")),
        "mma": sum(v for k, v in opcodes.items() if k.startswith("mma")),
        "barrier": opcodes["barrier"],
        "arrive": opcodes["arrive"],
        "snop": opcodes["snop"],
        "branch": sum(
            v for k, v in opcodes.items() if k.startswith(("br", "sbranch", "cbranch"))
        ),
    }
    return {
        "instruction_count": sum(opcodes.values()),
        "groups": groups,
        "top_opcodes": opcodes.most_common(24),
    }


def describe(path, kernels):
    text = path.read_text(encoding="utf-8")
    return {
        "path": str(path),
        "bytes": path.stat().st_size,
        "sha256": sha256(path),
        "kernels": {
            name: summarize(function_lines(text, name)) for name in kernels
        },
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--baseline", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    result = {
        "schema_version": 1,
        "baseline": describe(
            args.baseline.resolve(),
            ("kernel_kernel", "kernel_kernel_1", "kernel_kernel_2"),
        ),
        "candidate": describe(
            args.candidate.resolve(),
            (
                "kernel_kernel",
                "kernel_kernel_1",
                "kernel_kernel_2",
            ),
        ),
    }
    args.output.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
