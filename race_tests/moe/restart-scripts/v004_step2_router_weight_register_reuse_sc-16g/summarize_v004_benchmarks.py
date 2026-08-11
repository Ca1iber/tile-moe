#!/usr/bin/env python3
"""Summarize three clean official and OJ v004 candidate process runs."""

from __future__ import annotations

import ast
import json
import re
import statistics
from pathlib import Path


IID = "v004_step2_router_weight_register_reuse_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")
REP = MOE / "restart-rep" / IID
BENCH = REP / "benchmark"
CORRECTNESS = REP / "correctness"
OFFICIAL_RE = re.compile(r"Performance test:\s*([0-9.]+)ms for config:\s*(\{.*\})")


def stats(values: list[float]) -> dict[str, float]:
    return {
        "values_ms": values,
        "mean_ms": statistics.fmean(values),
        "median_ms": statistics.median(values),
        "min_ms": min(values),
        "max_ms": max(values),
        "stdev_ms": statistics.stdev(values) if len(values) > 1 else 0.0,
        "relative_range_pct": (max(values) - min(values)) / statistics.fmean(values) * 100.0,
    }


def main() -> None:
    official: dict[str, dict] = {}
    functional_passes = 0
    functional_expected = 0
    for path in sorted(BENCH.glob(f"{IID}_official_run*.log")):
        text = path.read_text(encoding="utf-8", errors="replace")
        functional_passes += text.count("Functional test passed")
        functional_expected += 2
        for match in OFFICIAL_RE.finditer(text):
            latency = float(match.group(1))
            config = ast.literal_eval(match.group(2))
            key = (
                f"h{config['dhidden']}_i{config['dexpert']}_e{config['nroutedexperts']}_"
                f"top{config['nexpertspertoken']}_bs{config['bs']}_seq{config['seqlen']}"
            )
            entry = official.setdefault(key, {"config": config, "values": []})
            entry["values"].append(latency)

    oj: dict[str, dict] = {}
    for path in sorted(BENCH.glob(f"{IID}_oj_run*.log")):
        for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
            if not line.startswith('{"case"'):
                continue
            result = json.loads(line)
            key = f"case{result['case']}"
            entry = oj.setdefault(key, {"metadata": {k: v for k, v in result.items() if k != "average_ms"}, "values": []})
            entry["values"].append(float(result["average_ms"]))

    if functional_passes != functional_expected or not official or not oj:
        raise RuntimeError(
            f"incomplete candidate: functional {functional_passes}/{functional_expected}, "
            f"official={list(official)}, oj={list(oj)}"
        )
    for entry in official.values():
        entry["statistics"] = stats(entry.pop("values"))
    for entry in oj.values():
        entry["statistics"] = stats(entry.pop("values"))

    summary = {
        "iteration_id": IID,
        "machine": "sc-16g",
        "run_type": "verdict",
        "official_process_runs": 3,
        "oj_process_runs": 3,
        "warmup": 10,
        "repeat": 100,
        "functional": {"passed": functional_passes, "expected": functional_expected, "status": "PASS"},
        "official": official,
        "oj": oj,
    }
    (BENCH / f"{IID}_benchmark_summary.json").write_text(
        json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    (CORRECTNESS / f"{IID}_correctness_summary.json").write_text(
        json.dumps(summary["functional"], ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    lines = [
        f"# {IID} clean benchmark summary",
        "",
        f"Functional: {functional_passes}/{functional_expected} PASS.",
        "",
        "| suite | case | values (ms) | median (ms) | mean (ms) | range % |",
        "|---|---|---:|---:|---:|---:|",
    ]
    for suite, mapping in (("official", official), ("OJ", oj)):
        for key, entry in mapping.items():
            value = entry["statistics"]
            rendered = ", ".join(f"{item:.6f}" for item in value["values_ms"])
            lines.append(
                f"| {suite} | {key} | {rendered} | {value['median_ms']:.6f} | "
                f"{value['mean_ms']:.6f} | {value['relative_range_pct']:.3f}% |"
            )
    (BENCH / f"{IID}_benchmark_summary.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
