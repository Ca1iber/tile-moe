"""Require every decoded kernel in one or more C500 mcbins to have no spill."""

from __future__ import annotations

import argparse
from pathlib import Path

from inspect_mcbin_metadata import read_resource_occurrences


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("mcbin", type=Path, nargs="+")
    args = parser.parse_args()
    for path in args.mcbin:
        resources = read_resource_occurrences(path)
        private = resources["private_memory_size"]
        if not private:
            raise RuntimeError(f"no private-memory metadata decoded from {path}")
        if any(value != 0 for value in private):
            raise RuntimeError(f"private-memory spill in {path}: {private}")
        print(
            f"resource_gate=PASS path={path} kernels={len(private)} "
            f"private_memory={private} mtreg={resources['mtreg_count']} "
            f"shared={resources['shared_memory_size']}"
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
