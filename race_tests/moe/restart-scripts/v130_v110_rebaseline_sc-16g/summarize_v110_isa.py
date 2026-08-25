#!/usr/bin/env python3
"""Count selected MetaX ISA instructions per generated v110 kernel."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
from collections import Counter
from pathlib import Path


KERNELS = ("kernel_kernel", "kernel_kernel_1", "kernel_kernel_2")


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def function_lines(text: str, name: str) -> list[str]:
    start_match = re.search(rf"^{re.escape(name)}:\s", text, re.M)
    if not start_match:
        raise RuntimeError(f"missing function {name}")
    end_match = re.search(rf"^\s*\.size\s+{re.escape(name)},", text[start_match.end():], re.M)
    if not end_match:
        raise RuntimeError(f"missing end for {name}")
    return text[start_match.end():start_match.end() + end_match.start()].splitlines()


def summarize_function(lines: list[str]) -> dict:
    opcodes = Counter()
    for raw in lines:
        line = raw.strip()
        if not line or line.startswith((".", ";")) or line.endswith(":"):
            continue
        line = line.split(";", 1)[0].strip()
        if not line:
            continue
        opcode = line.split(None, 1)[0]
        opcodes[opcode] += 1
    groups = {
        "global_load": sum(count for op, count in opcodes.items() if op.startswith("ldg")),
        "global_store": sum(count for op, count in opcodes.items() if op.startswith("stg")),
        "shared_load": sum(count for op, count in opcodes.items() if op.startswith("lds")),
        "shared_store": sum(count for op, count in opcodes.items() if op.startswith("sts")),
        "mma": sum(count for op, count in opcodes.items() if op.startswith("mma")),
        "barrier": opcodes["barrier"],
        "arrive": opcodes["arrive"],
        "snop": opcodes["snop"],
        "branch": sum(count for op, count in opcodes.items() if op.startswith(("br", "sbranch", "cbranch"))),
    }
    return {
        "instruction_count": sum(opcodes.values()),
        "groups": groups,
        "selected_opcodes": {
            op: count
            for op, count in sorted(opcodes.items())
            if op.startswith(("ldg", "stg", "lds", "sts", "mma")) or op in ("barrier", "arrive", "snop")
        },
        "top_opcodes": opcodes.most_common(20),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--codegen-root", type=Path, required=True)
    args = parser.parse_args()
    root = args.codegen_root.resolve()
    cases = {}
    for case_id in (1, 2, 3):
        path = root / f"isa_case{case_id}" / f"v130_case{case_id}_generated_device.metax.s"
        text = path.read_text(encoding="utf-8")
        cases[str(case_id)] = {
            "assembly": str(path),
            "bytes": path.stat().st_size,
            "sha256": sha256(path),
            "kernels": {
                name: summarize_function(function_lines(text, name)) for name in KERNELS
            },
        }
    result = {"schema_version": 1, "cases": cases}
    json_path = root / "v130_v110_isa_summary.json"
    json_path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    lines = [
        "# v130 v110 ISA summary",
        "",
        "| Case | Kernel | Inst | LDG | STG | LDS | STS | MMA | barrier | arrive | snop |",
        "|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for case_id, case in cases.items():
        for name, data in case["kernels"].items():
            g = data["groups"]
            lines.append(
                f"| {case_id} | {name} | {data['instruction_count']} | {g['global_load']} | "
                f"{g['global_store']} | {g['shared_load']} | {g['shared_store']} | {g['mma']} | "
                f"{g['barrier']} | {g['arrive']} | {g['snop']} |"
            )
    lines.extend(["", "Assembly SHA-256:", ""])
    for case_id, case in cases.items():
        lines.append(f"- Case {case_id}: `{case['sha256']}`")
    lines.append("")
    md_path = root / "v130_v110_isa_summary.md"
    md_path.write_text("\n".join(lines), encoding="utf-8")
    print(md_path.read_text(encoding="utf-8"))


if __name__ == "__main__":
    main()
