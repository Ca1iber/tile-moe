#!/usr/bin/env python3
"""Summarize v008 final MetaX ISA instructions and resource metadata."""

from __future__ import annotations

import argparse
import json
import re
from collections import Counter
from pathlib import Path


FUNCTIONS = ("kernel_kernel", "kernel_kernel_1")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("assembly", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def function_body(text: str, name: str) -> str:
    match = re.search(
        rf"^{re.escape(name)}:.*?^\s*\.size\s+{re.escape(name)},.*?$",
        text,
        flags=re.MULTILINE | re.DOTALL,
    )
    if not match:
        raise SystemExit(f"function not found: {name}")
    return match.group(0)


def resource_block(text: str, name: str) -> dict[str, int | None]:
    size_line = re.search(rf"^\s*\.size\s+{re.escape(name)},.*?$", text, flags=re.MULTILINE)
    if not size_line:
        raise SystemExit(f"size line not found: {name}")
    following = text[size_line.end() :]
    match = re.search(r"; Function info:\s*\n(?P<block>(?:;[^\n]*\n){1,10})", following)
    if not match:
        raise SystemExit(f"resource metadata not found after {name}")
    block = match.group("block")

    def number(pattern: str, *, required: bool = True) -> int | None:
        found = re.search(pattern, block)
        if found:
            return int(found.group(1))
        if required:
            raise SystemExit(f"resource field {pattern!r} not found after {name}")
        return None

    return {
        "code": number(r"codeLenInByte\s*=\s*(\d+)"),
        "st": number(r"NumSTRegs(?:ForWarps/PEU)?\s*:\s*(\d+)"),
        "mt": number(r"NumMTRegs(?:ForWarps/PEU)?\s*:\s*(\d+)"),
        "private": number(r"PrivateSize\s*:\s*(\d+)", required=False),
        "max_warps_per_peu": number(r"MaxWarpsPerPEU\s*:\s*(\d+)", required=False),
    }


def summarize(text: str, name: str) -> dict:
    body = function_body(text, name)
    mnemonics = []
    for line in body.splitlines()[1:]:
        match = re.match(r"^\s+([a-z][a-z0-9_.]*)\b", line)
        if match and not match.group(1).startswith("."):
            mnemonics.append(match.group(1))
    counts = Counter(mnemonics)
    resources = resource_block(text, name)
    return {
        "name": name,
        "resources": {
            "code_bytes": resources["code"],
            "st_registers": resources["st"],
            "mt_registers": resources["mt"],
            "private_bytes": resources["private"],
            "max_warps_per_peu": resources["max_warps_per_peu"],
        },
        "instructions": {
            "total_static": len(mnemonics),
            "mma": sum(value for key, value in counts.items() if key.startswith("mma_")),
            "global_load": sum(value for key, value in counts.items() if key.startswith(("ldg_", "ldu_"))),
            "global_store": sum(value for key, value in counts.items() if key.startswith(("stg_", "stu_"))),
            "shared_load": sum(value for key, value in counts.items() if key.startswith("lds_")),
            "shared_store": sum(value for key, value in counts.items() if key.startswith("sts_")),
            "private_load": sum(value for key, value in counts.items() if key.startswith("ldp_")),
            "private_store": sum(value for key, value in counts.items() if key.startswith("stp_")),
            "barrier": counts["barrier"],
            "arrive": counts["arrive"],
        },
        "top_mnemonics": counts.most_common(24),
        "spill_annotations": {
            "stores": len(re.findall(r"Folded Spill", body)),
            "reloads": len(re.findall(r"Folded Reload", body)),
        },
    }


def main() -> None:
    args = parse_args()
    text = args.assembly.read_text(encoding="utf-8")
    result = {
        "assembly": str(args.assembly.resolve()),
        "functions": [summarize(text, name) for name in FUNCTIONS],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
