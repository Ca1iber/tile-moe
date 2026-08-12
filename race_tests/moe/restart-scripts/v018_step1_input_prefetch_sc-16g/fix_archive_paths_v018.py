#!/usr/bin/env python3
"""Repair archived absolute paths after v018 evidence directory normalization."""

from __future__ import annotations

from pathlib import Path


ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep/v018_step1_input_prefetch_sc-16g")
REPLACEMENTS = {
    "/restart-rep/v018_step1_input_prefetch_sc-16g/benchmarks/":
        "/restart-rep/v018_step1_input_prefetch_sc-16g/benchmark/",
    "/restart-rep/v018_step1_input_prefetch_sc-16g/mctracer/":
        "/restart-rep/v018_step1_input_prefetch_sc-16g/profiler/mctracer/",
}


def main() -> None:
    changed = []
    for path in sorted(item for item in ROOT.rglob("*") if item.is_file()):
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        updated = text
        for before, after in REPLACEMENTS.items():
            updated = updated.replace(before, after)
        if updated != text:
            path.write_text(updated, encoding="utf-8")
            changed.append(str(path))
    print(f"updated_paths={len(changed)}")
    for path in changed:
        print(path)


if __name__ == "__main__":
    main()
