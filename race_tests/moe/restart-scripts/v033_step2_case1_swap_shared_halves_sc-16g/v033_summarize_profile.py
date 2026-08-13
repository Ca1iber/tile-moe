#!/usr/bin/env python3
"""Create concise v033 mcProfiler, mcTracer, mx-smi and ISA summaries."""

import json
import re
import statistics
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2] / "restart-rep" / "v033_step2_case1_swap_shared_halves_sc-16g"


def load(path):
    return json.loads(path.read_text(encoding="utf-8"))


def flatten(report):
    return {item["name"]: item["value"] for section in report.values() for item in section}


def change(parent, candidate):
    return (candidate / parent - 1.0) * 100.0


def number(value):
    if isinstance(value, (int, float)):
        return float(value)
    return float(value.split("(", 1)[0].replace(",", "").replace("%", "").replace("byte", ""))


def main():
    raw = ROOT / "profiler" / "mcprofiler" / "raw"
    parent = flatten(load(raw / "baseline_v032_case1_step2_targeted" / "mcprofiler_output" / "report.txt.json"))
    candidate = flatten(load(raw / "candidate_v033_case1_step2_targeted" / "mcprofiler_output" / "report.txt.json"))
    p_isu = parent["ISU stall cycles layout"]["data"]
    c_isu = candidate["ISU stall cycles layout"]["data"]
    p_vl1 = parent["VL1 partition stall cycles layout"]["data"]
    c_vl1 = candidate["VL1 partition stall cycles layout"]["data"]
    p_dispatched = number(parent["Dispatched waves"])
    c_dispatched = number(candidate["Dispatched waves"])
    replay_comparable = p_dispatched == c_dispatched

    profiler = {
        "authority": "directional replay counters only; clean benchmark and mcTracer own elapsed time",
        "replay_identity": {
            "v032_achieved_waves": number(parent["Achieved waves"]),
            "v033_achieved_waves": number(candidate["Achieved waves"]),
            "v032_dispatched_waves": p_dispatched,
            "v033_dispatched_waves": c_dispatched,
            "raw_accumulator_comparable": replay_comparable,
            "note": "Raw stall, wave-life and traffic accumulators are quarantined when dispatched-wave replay counts differ.",
        },
        "ap_active_cycles": {
            "v032": number(parent["AP active cycles"]),
            "v033": number(candidate["AP active cycles"]),
            "change_percent": change(number(parent["AP active cycles"]), number(candidate["AP active cycles"])),
        },
        "wsm_stall": {"v032": p_isu["wsm_stall"], "v033": c_isu["wsm_stall"], "change_percent": change(p_isu["wsm_stall"], c_isu["wsm_stall"])},
        "vls_pipeline_stall": {"v032": p_isu["vls_pipeline_stall"], "v033": c_isu["vls_pipeline_stall"], "change_percent": change(p_isu["vls_pipeline_stall"], c_isu["vls_pipeline_stall"])},
        "vl1_partition_stall": {key: {"v032": p_vl1[key], "v033": c_vl1[key], "change_percent": change(p_vl1[key], c_vl1[key])} for key in sorted(p_vl1)},
        "global_read_bytes_replay_proxy": {"v032": parent["Global Memory Read bytes"], "v033": candidate["Global Memory Read bytes"]},
        "shared_memory_access_efficiency": {"v032": parent["shared memory access efficiency"], "v033": candidate["shared memory access efficiency"]},
        "private_read_instructions": {"v032": parent["Private Read Instructions"], "v033": candidate["Private Read Instructions"]},
        "private_write_instructions": {"v032": parent["Private Write Instructions"], "v033": candidate["Private Write Instructions"]},
        "mma_duty": {"v032": parent["AP MMA Duty ratio"], "v033": candidate["AP MMA Duty ratio"]},
        "mte_duty": {"v032": parent["AP MTE Duty ratio"], "v033": candidate["AP MTE Duty ratio"]},
    }
    (ROOT / "profiler" / "mcprofiler" / "summary.json").write_text(json.dumps(profiler, indent=2) + "\n", encoding="utf-8")

    trace = load(ROOT / "profiler" / "mctracer" / "raw" / "v033_vs_v032_case1_mctracer_summary.json")
    (ROOT / "profiler" / "mctracer" / "summary.json").write_text(json.dumps(trace, indent=2) + "\n", encoding="utf-8")

    sample_path = ROOT / "profiler" / "mxsmi" / "v033_step2_case1_swap_shared_halves_sc-16g_hbm_ap_samples.txt"
    samples = []
    for block in sample_path.read_text(encoding="utf-8").split("sample_time_utc=")[1:]:
        match = re.search(r"throughput\s*:\s*(\d+) MBytes/s", block)
        values = []
        for line in block.splitlines():
            if re.match(r"dpc\d+\s", line):
                values.extend(int(value) for value in line.split()[1:])
        if match and values:
            samples.append({"hbm_mbytes_s": int(match.group(1)), "ap_values": values})
    steady = [sample for sample in samples if sample["hbm_mbytes_s"] > 100000 and statistics.median(sample["ap_values"]) >= 90]
    mxsmi = {
        "all_sample_count": len(samples),
        "steady_selection": "HBM > 100000 MB/s and median AP >= 90%; excludes startup/shutdown transients",
        "steady_sample_count": len(steady),
        "steady_hbm_mbytes_s": [sample["hbm_mbytes_s"] for sample in steady],
        "steady_hbm_median_mbytes_s": statistics.median(sample["hbm_mbytes_s"] for sample in steady),
        "steady_hbm_mean_mbytes_s": statistics.fmean(sample["hbm_mbytes_s"] for sample in steady),
        "steady_hbm_range_mbytes_s": [min(sample["hbm_mbytes_s"] for sample in steady), max(sample["hbm_mbytes_s"] for sample in steady)],
        "steady_nonzero_ap_entries": [sum(value > 0 for value in sample["ap_values"]) for sample in steady],
        "steady_ap_median_percent": [statistics.median(sample["ap_values"]) for sample in steady],
    }
    (ROOT / "profiler" / "mxsmi" / "summary.json").write_text(json.dumps(mxsmi, indent=2) + "\n", encoding="utf-8")

    counts = {}
    for tag in ("v032", "v033"):
        text = (ROOT / "codegen" / f"isa_{tag}" / f"{tag}_case1_generated_device.metax.s").read_text(encoding="utf-8", errors="replace")
        counts[tag] = {name: len(re.findall(pattern, text, re.I)) for name, pattern in {"mma": "MMA", "bsm": "BSM", "barrier_like": "BAR", "wait": "WAIT", "ldg": "LDG", "stg": "STG"}.items()}
    isa = {"caveat": "static assembly text-pattern counts, not dynamic executed instructions", "counts": counts}
    (ROOT / "codegen" / "isa_static_pattern_summary.json").write_text(json.dumps(isa, indent=2) + "\n", encoding="utf-8")

    print(json.dumps({"mcprofiler": profiler, "mxsmi": mxsmi, "isa": isa}, indent=2))


if __name__ == "__main__":
    main()
