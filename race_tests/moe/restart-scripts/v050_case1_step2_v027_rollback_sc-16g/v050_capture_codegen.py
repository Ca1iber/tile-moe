#!/usr/bin/env python3
"""Capture generated device C++, compiler resource output, and code counts."""

import argparse
import contextlib
import importlib
import importlib.util
import io
import json
import math
import re
from pathlib import Path

import torch
import tilelang


def load_module(path, tag):
    spec = importlib.util.spec_from_file_location(f"submission_{tag}", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load submission: {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def make_random(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


CASES = {
    1: (16, 2048, 8192, 2272),
    2: (32, 7168, 2048, 4544),
    3: (64, 7168, 2048, 9088),
}


def build_case(case_id):
    experts, hidden, intermediate, valid_tokens = CASES[case_id]
    counts = [100] * (experts // 2) + [184] * (experts // 2)
    offsets = [0]
    padded_offsets = [0]
    group_idx = []
    for expert_id, count in enumerate(counts):
        offsets.append(offsets[-1] + count)
        blocks = math.ceil((count + 1) / 128)
        padded_offsets.append(padded_offsets[-1] + blocks * 128)
        group_idx.extend([expert_id] * blocks)
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260717 + case_id)
    total_padded = padded_offsets[-1]
    return (
        make_random((total_padded, hidden), 1.0, generator),
        make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator),
        make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator),
        make_random((experts, hidden, intermediate), 1.0 / math.sqrt(intermediate), generator),
        torch.rand((valid_tokens,), device="cuda", dtype=torch.float32, generator=generator),
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
        torch.empty((total_padded, hidden), device="cuda", dtype=torch.float16),
    )


def parse_resources(log):
    pattern = re.compile(
        r"Function properties for\s+(?P<name>\S+).*?"
        r"Used\s+(?P<mt>\d+)\s+MTregisters,\s+"
        r"(?P<st>\d+)\s+STregisters,\s+"
        r"(?P<shared>\d+)\s+bytes shared mem.*?"
        r"staticMaxWarps/PEU\s*:\s*(?P<warps>\d+)",
        re.S,
    )
    return [
        {
            "name": match.group("name"),
            "mt_registers": int(match.group("mt")),
            "st_registers": int(match.group("st")),
            "reported_static_shared_bytes": int(match.group("shared")),
            "static_max_warps_per_peu": int(match.group("warps")),
        }
        for match in pattern.finditer(log)
    ]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", type=Path, required=True)
    parser.add_argument("--source-tag", required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--case", type=int, choices=sorted(CASES), default=1)
    args = parser.parse_args()
    source = args.submission.resolve()
    out = args.output_dir.resolve()
    out.mkdir(parents=True, exist_ok=True)
    module = load_module(source, args.source_tag)
    lower = importlib.import_module("tilelang.engine.lower")
    original = lower.mxcc.compile_maca

    def compile_with_resources(code, target_format="mcbin", arch=None, options=None, path_target=None, verbose=False):
        resource_options = list(options or [])
        if "-resource-usage" not in resource_options:
            resource_options.append("-resource-usage")
        return original(
            code,
            target_format=target_format,
            arch=arch,
            options=resource_options,
            path_target=path_target,
            verbose=True,
        )

    lower.mxcc.compile_maca = compile_with_resources
    stream = io.StringIO()
    tilelang.disable_cache()
    try:
        values = build_case(args.case)
        with contextlib.redirect_stdout(stream), contextlib.redirect_stderr(stream):
            module.run_kernel(*values)
            torch.cuda.synchronize()
        kernel = next(iter(module._KERNEL_CACHE.values()))
        generated = kernel.get_kernel_source()
    finally:
        lower.mxcc.compile_maca = original

    prefix = f"{args.source_tag}_case{args.case}"
    generated_path = out / f"{prefix}_generated_device.cpp"
    log_path = out / f"{prefix}_compiler.log"
    result_path = out / f"{prefix}_resource_usage.json"
    generated_path.write_text(generated, encoding="utf-8")
    log = stream.getvalue()
    log_path.write_text(log, encoding="utf-8")
    result = {
        "source_tag": args.source_tag,
        "submission": str(source),
        "case": args.case,
        "resources": parse_resources(log),
        "codegen": {
            "source_bytes": len(generated.encode()),
            "mma_sites": len(re.findall(r"__builtin_mxc_mma", generated)),
            "memcpy_async_sites": len(re.findall(r"memcpy_async", generated)),
            "barrier_wait_sites": len(re.findall(r"barrier_arrive_and_wait", generated)),
            "syncthreads_sites": len(re.findall(r"__syncthreads", generated)),
            "ldg128_sites": len(re.findall(r"LDG|reinterpret_cast<const uint4", generated)),
        },
    }
    result_path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
