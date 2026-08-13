#!/usr/bin/env python3
"""Run the repository official fusedmoe benchmark through an exact submission."""

import argparse
import importlib.util
import json
import math
import sys
import types
from pathlib import Path

import torch


def load_submission(path):
    spec = importlib.util.spec_from_file_location("submission_under_test", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load submission: {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


class RoutedMoESubmissionAdapter:
    submission = None

    def __init__(self, hidden, intermediate, experts, group_sum, group_count):
        self.hidden = int(hidden)
        self.intermediate = int(intermediate)
        self.experts = int(experts)
        self.group_sum = int(group_sum)
        self.group_count = int(group_count)
        self.cache = {}

    def _buffers(self, stacked, group_idx):
        total_padded = int(group_idx.numel()) * 128
        key = (total_padded, stacked.device.index, stacked.dtype)
        buffers = self.cache.get(key)
        if buffers is None:
            padded_input = torch.empty(
                (total_padded, self.hidden), device=stacked.device, dtype=stacked.dtype
            )
            padded_output = torch.empty_like(padded_input)
            buffers = (padded_input, padded_output)
            self.cache[key] = buffers
        return buffers

    @torch.no_grad()
    def __call__(
        self,
        stacked,
        gate,
        up,
        down,
        routed,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx,
        up_logits,
        output,
    ):
        padded_input, padded_output = self._buffers(stacked, group_idx)
        padded_input.zero_()
        routed_float = routed.float()
        for expert_id in range(self.experts):
            count = int(group_sizes[expert_id].item())
            if count == 0:
                continue
            raw_start = int(group_offsets[expert_id].item())
            padded_start = int(group_padded_offsets[expert_id].item())
            padded_input[padded_start : padded_start + count].copy_(
                stacked[raw_start : raw_start + count]
            )
        self.submission.run_kernel(
            padded_input,
            gate,
            up,
            down,
            routed_float,
            group_sizes,
            group_offsets,
            group_padded_offsets,
            group_idx,
            padded_output,
        )
        for expert_id in range(self.experts):
            count = int(group_sizes[expert_id].item())
            if count == 0:
                continue
            raw_start = int(group_offsets[expert_id].item())
            padded_start = int(group_padded_offsets[expert_id].item())
            output[raw_start : raw_start + count].copy_(
                padded_output[padded_start : padded_start + count]
            )
        return output


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", required=True)
    parser.add_argument("--benchmark", required=True)
    parser.add_argument("--config", required=True)
    parser.add_argument("--test-type", choices=("all", "functional", "performance"), default="all")
    parser.add_argument("--config-index", type=int)
    args = parser.parse_args()

    submission = load_submission(args.submission)
    RoutedMoESubmissionAdapter.submission = submission
    shim = types.ModuleType("custom_fusedmoe")
    shim.RoutedMoEKernel = RoutedMoESubmissionAdapter
    sys.modules["custom_fusedmoe"] = shim

    benchmark_path = Path(args.benchmark).resolve()
    sys.path.insert(0, str(benchmark_path.parent))
    spec = importlib.util.spec_from_file_location("official_fusedmoe_benchmark", benchmark_path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load official benchmark: {args.benchmark}")
    benchmark = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(benchmark)
    if args.test_type == "all":
        benchmark.run_from_config_file(args.config)
        return
    with open(args.config, "r", encoding="utf-8") as stream:
        configs = json.load(stream)[args.test_type]
    selected = range(len(configs)) if args.config_index is None else (args.config_index,)
    print(f"\n=== Running {args.test_type} tests ===")
    for index in selected:
        benchmark.run_moe_test(configs[index], args.test_type)


if __name__ == "__main__":
    main()
