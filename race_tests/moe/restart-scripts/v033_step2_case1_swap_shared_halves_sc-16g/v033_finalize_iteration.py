#!/usr/bin/env python3
"""Finalize v033 derived artifacts without changing kernel or benchmark logic."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v033_step2_case1_swap_shared_halves_sc-16g"
PARENT_ID = "v032_step2_case1_hybrid_half_b_sc-16g"
SUBMISSION = MOE / "restart-submission" / ID / "submission.py"
ROOTS = ["moe-roofline", "restart-experiments", "restart-rep", "restart-scripts", "restart-submission"]


def sha256(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def write(path, text):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text.rstrip() + "\n", encoding="utf-8")


def copy_native(tag, scope):
    src = MOE / "restart-rep" / ID / "profiler" / "mcprofiler" / "raw" / scope / "mcprofiler_output"
    dst = MOE / "moe-roofline" / ID / "native" / tag
    if dst.exists():
        shutil.rmtree(dst)
    shutil.copytree(src, dst)


def main():
    roof = MOE / "moe-roofline" / ID
    exp = MOE / "restart-experiments" / ID
    rep = MOE / "restart-rep" / ID
    scripts = MOE / "restart-scripts" / ID
    submission_dir = MOE / "restart-submission" / ID

    submission_hash = sha256(SUBMISSION)
    parent_hash = sha256(MOE / "restart-submission" / PARENT_ID / "submission.py")
    write(submission_dir / "submission.sha256", f"{submission_hash}  submission.py")

    copy_native("v032", "baseline_roofline_v032_case1_step2_roofline")
    copy_native("v033", "candidate_roofline_v033_case1_step2_roofline")

    points = """label,ai_flop_per_byte,tflops
v032 Case1 Step2,84.45360824742268,94.67509616741125
v033 Case1 Step2,84.45360824742268,98.23205269577946
"""
    write(roof / "v033_schedule_roofline_points.csv", points)

    render_command = [
        "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
        "--points", str(roof / "v033_schedule_roofline_points.csv"),
        "--output-prefix", str(roof / "v033_case1_step2_schedule_roofline"),
        "--compute-roof-tflops", "479.232",
        "--bandwidth-roof", "sc16_measured_conservative=1400",
        "--bandwidth-roof", "physical_theoretical=1843.2",
        "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
        "--title", "v033 Case1 Step2 schedule-aware Roofline (sc-16g)",
    ]
    subprocess.run(render_command, cwd=REPO, check=True)

    native_note = """# v033 Roofline notes

- `native/v032` and `native/v033` preserve mcProfiler's raw Roofline output.
- Native replay work differs (`during` and aggregate ops/memacs differ), so native candidate-vs-parent performance comparison is quarantined.
- The schedule-aware plot uses a common algorithm model: 103,079,215,104 FLOPs, 1,220,542,464 bytes, AI 84.453608 FLOP/B.
- mcTracer medians provide the elapsed-time authority: 1.088768 ms (v032) and 1.049344 ms (v033), or 94.6751 and 98.2321 TFLOP/s.
- At both 1400 GB/s measured-conservative and 1843.2 GB/s physical-theoretical bandwidth sensitivities, both points remain on the memory side of the explicitly declared 479.232 TFLOP/s compute roof.
"""
    write(roof / "v033_roofline_readme.md", native_note)

    subprocess.run(
        ["git", "diff", "--no-index", "--", str(MOE / "restart-submission" / PARENT_ID / "submission.py"), str(SUBMISSION)],
        cwd=REPO, text=True, stdout=(exp / f"{ID}.patch").open("w", encoding="utf-8"), check=False,
    )

    experiment = """# v033 Step2 shared-half address swap

## Observed evidence

v032's hybrid half-B Step2 uses one 32 KiB shared tile split into two 128x64 halves. The lower physical half is synchronously filled/consumed for B0 and the upper half is asynchronously filled/consumed for B1. The instruction skeleton is fixed, but shared addresses differ by 8192 FP16 elements (16 KiB).

## Verified bottleneck and hypothesis

mcTracer identifies Step2 as the changed stage. Hypothesis: placing the async-fed B1 half at the lower shared address and the sync-fed B0 half at the upper address changes the shared-to-fragment operand-feed/address path enough to reduce Step2 time without changing traffic, synchronization count, register pressure, or occupancy. Falsifier: correctness failure, generated code canonicalization, paired result within noise, or Step2 not improving.

## Single coherent change

Swap the physical shared halves only:

- B0 sync copy and B0 `ldmatrix_b` move from rows 0:128 to 128:256.
- B1 async copy and B1 `ldmatrix_b` move from rows 128:256 to 0:128.
- Math, global addresses, tile shape, four async sites, waits, barriers, MMA count, 32 KiB shared allocation, and output layout remain unchanged.

The path is shared by all three fixed OJ cases even though the first probe targeted Case1.

## Probe trajectory

- v033a full-half async: incorrect, about 11.8% mismatch.
- v033b disjoint async tokens: still incorrect; token alias is excluded.
- v033c remove explicit async waits: correct but paired median about -0.02%, noise.
- v033d B0-only async: incorrect; B0 async reuse is the unsafe mechanism.
- v033e shift the original hybrid window by 128 rows: correct.
- v033f shifted window plus full async: incorrect; low shared base is not the correctness cause.
- v033g swap physical halves while preserving B0 sync/B1 async: correct and reproducibly faster; promoted to v033.

All probe sources are archived under `probes/`.

## Result

Accepted. Two independent Case1 paired reproductions are 7/7 wins with median changes -1.3290% and -1.2866%. Case2 and Case3 are also 7/7 wins at -1.2482% and -1.2088%. mcTracer assigns the gain to Step2 (-3.2570% paired median); Step1 is noise (-0.2229%).
"""
    write(exp / f"{ID}_experiment.md", experiment)

    report = f"""# v033 evidence report

Status: accepted

Parent: v032 (`12b04f6a70f3599caf8ea4c7ac448aee8a6afd84`)

OJ submission SHA256: `{submission_hash}`

## Verdict evidence

| Evidence | v032 | v033 | Result |
|---|---:|---:|---:|
| Case1 paired reproduction 1 median | 3.158341 ms | 3.116467 ms | -1.3290%, 7/7 wins |
| Case1 paired reproduction 2 median | 3.157307 ms | 3.116129 ms | -1.2866%, 7/7 wins |
| Case2 paired median | 5.054943 ms | 4.991544 ms | -1.2482%, 7/7 wins |
| Case3 paired median | 10.873469 ms | 10.740769 ms | -1.2088%, 7/7 wins |
| mcTracer Step1 median | 2.055936 ms | 2.057728 ms | -0.2229% paired median; noise |
| mcTracer Step2 median | 1.088768 ms | 1.049344 ms | -3.2570% paired median |
| Step2 MT/ST registers | 234 / 52 | 234 / 52 | unchanged |
| Step2 dynamic shared/private | 32768 / 0 bytes | 32768 / 0 bytes | unchanged |

Exact OJ W20/R100 v033: Case1 3.114877 ms, Case2 4.985833 ms, Case3 10.744589 ms. All pass with max absolute error 0.001953125 and zero padding error. Compared with separate exact v032 runs, they change by -1.3049%, -1.0041%, and -1.1300%; paired runs are the acceptance authority.

Against restart v000's separate-run medians (3.121774/5.738880/11.211986 ms), v033 is -0.2209%/-13.1218%/-4.1687%. The Case1 cross-version delta is below v000's historical ~0.25% separate-process noise and is reported without overclaiming; current-vs-parent paired evidence is decisive.

Official adapter functional: both fallback configurations PASS. Separate-process performance is 86.741758 ms and 28.276494 ms; those shapes do not use the fixed OJ half-B specialization and serve only as compatibility checks.

## mcTracer and code generation

Case1 Step2 falls from 1.088768 to 1.049344 ms while Step1 is unchanged within noise. Grid remains 8x24, registers remain 234 per thread, dynamic shared remains 32 KiB, private memory remains zero, and the resource report remains two static resident waves per PEU.

Generated C++ differs only by moving the 8192-element FP16 shared offset between sync/async copies and the four shared-to-fragment reads. Static sites remain: 8 MMA, 4 async copies, 1 wait wrapper, and 8 `__syncthreads`. Final MetaX ISA static patterns are identical: MMA 512, BSM 153, barrier-like 18, wait 2, LDG 58, STG 57. These are static text counts, not dynamic instructions.

## mcProfiler

mcProfiler is directional replay evidence only. Achieved waves match at 1,626,148, but v032 dispatched waves are 3,252,296 versus v033's 1,626,148. Therefore raw cumulative WSM/VL1 stalls, wave lifetime, and traffic are quarantined rather than used causally. AP active cycles move -0.783%; MMA duty 24.68% -> 24.87%, MTE duty 37.94% -> 38.52%; shared access remains 100% and private reads/writes remain zero.

Native Roofline replay also has unequal sampled work (`during` and aggregate operations differ). Raw native images/JSON are preserved but do not own the version verdict.

## Roofline and hardware

Common schedule model: 103,079,215,104 FLOPs, 1,220,542,464 bytes, AI 84.453608 FLOP/B. mcTracer medians give 94.6751 -> 98.2321 TFLOP/s and logical traffic 1121.03 -> 1163.15 GB/s. With a declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities, both points remain HBM-side.

mx-smi synchronized 5000-run workload passes correctness at 3.113813 ms. Nine steady samples selected by HBM >100 GB/s and median AP >=90% report 783.574-790.906 GB/s, median 787.330 GB/s, with 104/104 AP entries active at 95% median usage. This is workload-observed physical-counter throughput, not a platform bandwidth roof. The first accidentally collected default-summary sample set is retained as `initial_default` and explicitly excluded.

## Decision

Accepted as the new OJ-compliant best. The measured improvement is stable in all three fixed OJ cases, belongs to Step2, changes no math or resource footprint, and is represented by the exact self-contained allowlisted submission.
"""
    write(rep / f"{ID}_report.md", report)

    scripts_doc = f"""# v033 scripts

- `v033_pair_benchmark.py`: exact AB/BA OJ paired benchmark; used for Case1 two reproductions and Case2/3 verdicts.
- `v033_archive_benchmarks.sh`: fixed commands and destinations for paired benchmark logs.
- `validate_submission.py`: numerical and padding correctness for the exact archived submission.
- `validate_oj_submission.py`: OJ root/import allowlist gate.
- `oj_submission_benchmark.py`: exact OJ W20/R100 and long workload runner.
- `official_submission_benchmark.py`: adapter for the repository official functional/performance benchmark.
- `profile_submission.py`: one selected case for mcTracer/mcProfiler.
- `v033_run_paired_mctracer.py`: three AB/BA Case1 Step1/Step2 trace pairs.
- `v033_capture_submission_codegen.py`: generated device C++ plus compiler resource report.
- `v033_run_mcprofiler_submission.sh`: targeted and native Roofline Case1 Step2 replay.
- `extract_metax_isa.sh`: final xcore1000 MetaX ISA extraction.
- `collect_mxsmi.sh` and `v033_collect_mxsmi.sh`: synchronized read-only HBM/AP sampling and the exact 5000-run workload.
- `v033_summarize_profile.py`: replay-aware mcProfiler, mcTracer, mx-smi, and ISA summaries; quarantines unequal dispatched-wave accumulators.
- `render_roofline.py`: schedule-aware SVG Roofline renderer with explicit roof labels.
- `v033_finalize_iteration.py`: derives docs, patch, native copies, points, and manifest inputs; does not modify kernel/benchmark logic.
- `summarize_iteration.py` and `validate_iteration.py`: artifact hash inventory and strict layout validation.

All acceptance measurements use byte-identical `restart-submission/{ID}/submission.py` (`{submission_hash}`). Parent comparisons use v032 (`{parent_hash}`).
"""
    write(scripts / f"{ID}_scripts.md", scripts_doc)

    source_hashes = [
        SUBMISSION,
        MOE / "restart-submission" / PARENT_ID / "submission.py",
        MOE / "fusedmoe_benchmark.py",
        MOE / "oj_benchmark.py",
        scripts / "oj_submission_benchmark.py",
        scripts / "v033_pair_benchmark.py",
    ]
    write(rep / f"{ID}_source_hashes.sha256", "\n".join(f"{sha256(p)}  {p.relative_to(REPO)}" for p in source_hashes))

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "parent_iteration": PARENT_ID,
        "parent_commit": "12b04f6a70f3599caf8ea4c7ac448aee8a6afd84",
        "machine": "sc-16g",
        "submission_sha256": submission_hash,
        "decision": "accepted-new-best",
        "acceptance_authority": "all-case clean AB/BA paired benchmarks on exact final OJ submission",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "primary_change": "swap physical shared halves used by synchronous B0 and asynchronous B1 in the common half-B Step2 path",
        "primary_result": {
            "case1_pair_repro1_median_change_percent": -1.3290071838565454,
            "case1_pair_repro2_median_change_percent": -1.2865743692134113,
            "case2_pair_median_change_percent": -1.2481894918985104,
            "case3_pair_median_change_percent": -1.2087675448238189,
            "mctracer_step2_median_change_percent": -3.2570214774604644,
        },
        "profiler_caveat": "mcProfiler dispatched-wave replay counts differ; cumulative counters and native Roofline candidate comparison are quarantined",
        "kernel_update": "restart-submission only; root submission.py is pre-existing user work and custom_fusedmoe.py is a non-OJ private-emitter line",
        "artifact_roots": ROOTS,
    }
    manifest_text = json.dumps(manifest, indent=2) + "\n"
    write(rep / f"{ID}_manifest.json", manifest_text)
    write(roof / f"{ID}_manifest.json", manifest_text)
    write(exp / f"{ID}_manifest.json", manifest_text)

    print(json.dumps({"submission_sha256": submission_hash, "render_command": render_command, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
