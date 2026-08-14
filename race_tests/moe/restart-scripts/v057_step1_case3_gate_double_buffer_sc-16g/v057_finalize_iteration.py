#!/usr/bin/env python3
"""Finalize the rejected v057 Case3 gate double-buffer experiment."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v057-work")
ID = "v057_step1_case3_gate_double_buffer_sc-16g"
PARENT_ID = "v056_step1_case3_half_a_gate_overlap_sc-16g"
PARENT_COMMIT = "0a1afac1"
SOURCE_HASH = "006a36d32b66348d0532e7478c2ae1f20fcc20c9fc4edac98e2ebe59a75eb0c9"


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def write(path, content):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content.rstrip() + "\n", encoding="utf-8")


def copy_file(src, dst):
    src = Path(src)
    if not src.is_file():
        raise FileNotFoundError(src)
    dst = Path(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def copy_tree(src, dst):
    src = Path(src)
    if not src.is_dir():
        raise FileNotFoundError(src)
    shutil.copytree(src, dst, dirs_exist_ok=True)


def make_diff(left, right, output):
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(left), str(right)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )


def normalize_generated_text(path):
    path = Path(path)
    lines = path.read_text(encoding="utf-8").splitlines()
    path.write_text("\n".join(line.rstrip() for line in lines).rstrip() + "\n", encoding="utf-8")


def normalize_mctracer(src, dst):
    payload = json.loads(Path(src).read_text(encoding="utf-8"))
    mapping = {"v049": "v056_parent", "v050": "v057_candidate"}
    payload["legacy_tag_mapping"] = mapping
    payload["sources"] = {
        "v056_parent": str(MOE / "restart-submission" / PARENT_ID / "submission.py"),
        "v057_candidate": str(WORK / "v057_submission.py"),
    }
    for row in payload["rows"]:
        row["legacy_tag"] = row["tag"]
        row["tag"] = mapping[row["tag"]]
    payload["aggregate"] = {
        "v056_parent": payload["aggregate"]["v049"],
        "v057_candidate": payload["aggregate"]["v050"],
    }
    write(dst, json.dumps(payload, ensure_ascii=False, indent=2))


def inventory(root):
    rows = []
    for path in sorted(root.rglob("*")):
        if path.is_file() and path.name != "artifact_inventory.sha256":
            rows.append(f"{sha256(path)}  {path.relative_to(root)}")
    write(root / "artifact_inventory.sha256", "\n".join(rows))


def capture_mxsmi(path):
    path.parent.mkdir(parents=True, exist_ok=True)
    result = subprocess.run(["mx-smi"], text=True, capture_output=True, check=False)
    write(path, result.stdout + result.stderr)


def main():
    roots = {
        name: MOE / name / ID
        for name in ("moe-roofline", "restart-experiments", "restart-rep", "restart-scripts")
    }
    for path in roots.values():
        path.mkdir(parents=True, exist_ok=True)
    roof = roots["moe-roofline"]
    exp = roots["restart-experiments"]
    rep = roots["restart-rep"]
    scripts = roots["restart-scripts"]
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    parent_rep = MOE / "restart-rep" / PARENT_ID
    parent_scripts = MOE / "restart-scripts" / PARENT_ID

    if sha256(WORK / "v057_submission.py") != SOURCE_HASH:
        raise SystemExit("candidate source hash changed before finalization")
    copy_file(WORK / "v057_submission.py", exp / f"{ID}_custom_fusedmoe.py")
    make_diff(parent_submission, WORK / "v057_submission.py", exp / f"{ID}.patch")
    write(
        exp / f"{ID}_experiment.md",
        f"""# v057 Case3 Step1 gate double-buffer experiment

Status: rejected. Parent `{PARENT_ID}` / `{PARENT_COMMIT}` remains the best. Candidate SHA-256 `{SOURCE_HASH}`. No `restart-submission/{ID}` directory is created because the candidate failed the performance/resource gate.

The probe adds a dedicated 16 KiB swizzled shared buffer for the next gate tile. Initial gate/up weights still use the accepted combined one-wave loader. During each current tile, wave 0 stages the following gate tile into the alternate buffer while the CTA executes current gate/up MMA; after the current computation, wave 1 stages only the following up tile into the reusable up buffer. The intent was to hide roughly half the serialized weight transfer without adding barriers or changing A bytes, weight bytes, MMA work, grids, or numerical semantics.

Correctness and OJ-import validation pass, but the extra buffer increases Step1 dynamic shared memory 32,768 -> 49,152 B. Address/buffer state also raises resources from 234 MT/40 ST and zero stack to 256 MT/52 ST with a 52-byte stack frame. The five-pair alternating W20/R100 test is decisive: 9.769572 -> 16.294639 ms, paired median +66.815759%, mean +66.768599%, 0/5 wins.

mcTracer localizes the entire failure to Step1: median 6.443776 -> 12.979200 ms, paired median +101.422272%; unchanged Step2 is +0.193768%. Trace metadata repeats 49,152 B dynamic shared, 256 registers/thread, and private-total/stack metadata 52 B. Static ISA grows only 4952 -> 4982 instructions (+0.6058%), with unchanged MMA/shared-load/barrier counts, but two extra `ldg_b128`, twelve extra `arrive`, and 42 extra `snop`. The near-2x Step1 slowdown is therefore not explained by a 0.6% static instruction increase; it is strong evidence that 48 KiB crosses a shared-memory residency tier, compounded by the register ceiling and stack state. Explicit 48 KiB gate double buffering is not viable on this 25% C500 slice.
""",
    )

    benchmark = rep / "benchmark"
    copy_file(WORK / "pair_case3_screen5_w20_r100.log", benchmark / "case3_pair5_w20_r100.log")
    write(benchmark / "candidate.sha256", f"{SOURCE_HASH}  v057_submission.py")

    correctness = rep / "correctness"
    copy_file(WORK / "validate_case3.log", correctness / "case3_reference.log")
    copy_file(WORK / "oj_import_validation.log", correctness / "oj_import_validation.log")
    write(
        correctness / "summary.md",
        """# Correctness summary

The changed exact OJ Case3 shape passes FP32 reference validation with maximum absolute error 0.001953125 and zero padding. The OJ import validator passes. Case1/2 are compile-time outside the changed specialization. Correctness does not override the decisive performance/resource rejection.
""",
    )

    codegen = rep / "codegen"
    copy_tree(WORK / "codegen_candidate_case3", codegen / "candidate" / "case3")
    copy_tree(WORK / "isa_candidate_case3", codegen / "isa_case3" / "candidate_v057")
    copy_tree(WORK / "isa_analysis", codegen / "isa_analysis")
    copy_tree(parent_rep / "codegen" / "candidate" / "case3", codegen / "parent_v056" / "case3")
    copy_tree(parent_rep / "codegen" / "isa_case3" / "candidate_v056", codegen / "isa_case3" / "parent_v056")
    make_diff(
        parent_rep / "codegen" / "candidate" / "case3" / "v056b_candidate_case3_generated_device.cpp",
        WORK / "codegen_candidate_case3" / "v057_candidate_case3_generated_device.cpp",
        codegen / "case3_parent_vs_candidate_cpp.diff",
    )
    write(
        codegen / "summary.json",
        json.dumps(
            {
                "candidate_sha256": SOURCE_HASH,
                "case3_step2_source_unchanged": True,
                "dynamic_work": "A/weight source bytes, MMA work, barriers, and grids unchanged",
                "dynamic_shared_bytes": {"v056_parent": 32768, "v057_candidate": 49152},
                "step1_resources": {
                    "v056_parent": "234 MT / 40 ST / zero stack",
                    "v057_candidate": "256 MT / 52 ST / 52-byte stack frame",
                },
                "step2_resources": "234 MT / 52 ST / zero stack; unchanged",
                "generated_cpp_bytes": {"v056_parent": 35216, "v057_candidate": 37945},
                "step1_static_instructions": {"v056_parent": 4952, "v057_candidate": 4982},
                "selected_static_opcode_delta": {
                    "mma_16x16x16f16": 0,
                    "ldg_b128": 2,
                    "lds_b128": 0,
                    "barrier": 0,
                    "arrive": 12,
                    "snop": 42,
                },
                "interpretation": "near-2x Step1 slowdown points to the 48 KiB shared-memory residency tier plus register/stack pressure, not the 0.6% static ISA growth",
            },
            ensure_ascii=False,
            indent=2,
        ),
    )

    mctracer = rep / "profiler" / "mctracer"
    copy_tree(WORK / "mctracer_case3", mctracer / "raw" / "case3")
    normalize_mctracer(
        WORK / "mctracer_case3" / "v050_vs_v049_case3_mctracer_summary.json",
        mctracer / "v056_vs_v057_case3_mctracer_summary.json",
    )
    write(
        mctracer / "README.md",
        """# mcTracer stage timing

Three alternating AB/BA pairs with five warmups were captured. Historical tags v049/v050 map to v056/v057. Step1 medians are 6.443776/12.979200 ms and paired median changes +101.422272%. Unchanged Step2 changes +0.193768%. Candidate Step1 metadata is 49,152 B dynamic shared, 256 registers/thread, and private-total 52 B, versus 32,768 B, 234 registers, and zero for the parent.
""",
    )
    write(
        rep / "profiler" / "mcprofiler" / "NOT_RUN.md",
        """# mcProfiler not run

The candidate was rejected before counter replay: five clean timing pairs lose by +66.82%, mcTracer places +101.42% in the changed Step1, and final ISA/resource evidence shows 49,152 B shared, 256 MT registers, and a 52-byte stack frame. A four-batch mcProfiler replay cannot change this decision and would add no proportional value. The available stage/resource/ISA evidence is sufficient for this rejected experiment.
""",
    )
    capture_mxsmi(rep / "profiler" / "mxsmi" / "snapshot_after_profiling.txt")

    script_mapping = {
        parent_scripts / "v056_capture_codegen.py": "v057_capture_codegen.py",
        parent_scripts / "v056_pair_benchmark.py": "v057_pair_benchmark.py",
        parent_scripts / "v056_run_paired_mctracer_used.py": "v057_run_paired_mctracer_used.py",
        parent_scripts / "profile_submission.py": "profile_submission.py",
        parent_scripts / "validate_submission.py": "validate_submission.py",
        parent_scripts / "validate_oj_submission.py": "validate_oj_submission.py",
        parent_scripts / "validate_iteration.py": "validate_iteration.py",
        parent_scripts / "render_roofline.py": "render_roofline.py",
        parent_scripts / "extract_metax_isa.sh": "extract_metax_isa.sh",
        parent_scripts / "v056_analyze_isa.py": "v057_analyze_isa.py",
    }
    for source, destination in script_mapping.items():
        copy_file(source, scripts / destination)
    copy_file(Path(__file__), scripts / "v057_finalize_iteration.py")
    write(
        scripts / f"{ID}_scripts.md",
        """# v057 scripts

- `v057_pair_benchmark.py`: alternating correctness and W20/R100 performance gate.
- `validate_submission.py` and `validate_oj_submission.py`: changed-shape numerical and import gates.
- `v057_run_paired_mctracer_used.py` plus `profile_submission.py`: paired stage/resource capture; historical tags are normalized in the archive.
- `v057_capture_codegen.py`, `extract_metax_isa.sh`, and `v057_analyze_isa.py`: generated C++, resource, final ISA, and opcode evidence.
- `render_roofline.py`: diagnostic fixed-work Roofline rendering.
- `validate_iteration.py` and `v057_finalize_iteration.py`: strict structure and hashed four-directory archive.

All in-flight outputs are under `/tmp/tile-moe-scratch-20260814/v057-work`.
""",
    )

    copy_file(WORK / "v057_case3_step1_roofline_points.csv", roof / "v057_case3_step1_roofline_points.csv")
    copy_file(WORK / "roofline" / "v057_case3_step1_gate_double_buffer_roofline.svg", roof / "v057_case3_step1_gate_double_buffer_roofline.svg")
    copy_file(WORK / "roofline" / "v057_case3_step1_gate_double_buffer_roofline_render.json", roof / "v057_case3_step1_gate_double_buffer_roofline_render.json")
    write(
        roof / "v057_roofline_readme.md",
        """# v057 rejected Case3 Step1 Roofline

- Fixed declared work/traffic remain 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- mcTracer medians are 6.443776 ms for v056 and 12.979200 ms for v057: 111.9770 -> 55.5931 TFLOP/s.
- Equivalent declared-schedule traffic falls 499.90 -> 248.18 GB/s; this is not measured HBM bandwidth.
- AI stays fixed, so the vertical drop at identical AI visualizes lost execution efficiency/residency, not an algorithmic byte increase.
- The candidate is rejected; this figure is diagnostic and not a new performance point.
""",
    )

    write(
        rep / f"{ID}_report.md",
        f"""# v057 report: rejected Case3 gate double buffer

Status: rejected; v056 remains best. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Candidate SHA-256 `{SOURCE_HASH}`.

The candidate attempts to overlap the next gate-weight transfer with current MMA using an extra 16 KiB shared buffer. It passes Case3 numerical and import checks, but raises Step1 shared memory 32,768 -> 49,152 B, resources 234 MT/40 ST -> 256 MT/52 ST, and creates a 52-byte stack frame.

Five-pair W20/R100 timing is 9.769572 -> 16.294639 ms, paired median +66.815759%, 0/5 wins. mcTracer shows Step1 6.443776 -> 12.979200 ms (+101.422272%) and unchanged Step2 +0.193768%. Static ISA grows only +0.6058%, though `snop` rises by 42. The evidence supports a shared-memory residency cliff compounded by register/stack pressure. Do not use this candidate as a submission or optimization base.
""",
    )

    manifest = {
        "iteration_id": ID,
        "status": "rejected",
        "decision": "reject-keep-v056",
        "machine": "sc-16g",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "candidate_sha256": SOURCE_HASH,
        "change": "Case3 Step1 16 KiB alternate gate shared buffer with split gate/up producers",
        "correctness": "Case3 reference and OJ import validation pass",
        "performance": {
            "parent_median_ms": 9.769572143554688,
            "candidate_median_ms": 16.294638671875,
            "paired_median_change_percent": 66.81575926087655,
            "paired_mean_change_percent": 66.76859937728406,
            "wins": "0/5",
            "mctracer_step1_median_ms": {"v056_parent": 6.443776, "v057_candidate": 12.9792},
            "mctracer_step1_paired_median_change_percent": 101.42227166183307,
        },
        "resources": {
            "dynamic_shared_bytes": [32768, 49152],
            "mt_registers": [234, 256],
            "st_registers": [40, 52],
            "stack_frame_bytes": [0, 52],
        },
        "conclusion": "48 KiB gate double buffering crosses a likely shared-memory residency tier and is decisively non-viable",
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for root in roots.values():
        write(root / f"{ID}_manifest.json", manifest_text)

    write(rep / ".gitattributes", "*.bc binary\n*.mcfb binary\n*.bin binary\n*.elf binary\n*.pdf binary\n*.png binary\n*.log binary\n*.csv binary\ncodegen/**/*.cpp -text")
    write(roof / ".gitattributes", "*.png binary\n*.pdf binary\n*.log binary\n*.csv binary")
    write(rep / "source_hashes.sha256", f"{SOURCE_HASH}  restart-experiments/{ID}/{ID}_custom_fusedmoe.py")
    for path in list(exp.glob("*.patch")) + list(rep.rglob("*.cpp")) + list(rep.rglob("*.diff")):
        normalize_generated_text(path)
    for root in roots.values():
        inventory(root)
    print(json.dumps(manifest, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
