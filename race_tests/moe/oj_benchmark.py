import argparse
import gc
import json
import math
from typing import Dict, List, Tuple

import torch
import torch.nn.functional as F

from custom_fusedmoe import RoutedMoEKernel


BLOCK_TOKEN = 128
CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def make_random(shape: Tuple[int, ...], scale: float, generator: torch.Generator) -> torch.Tensor:
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def build_group_metadata(experts: int, valid_tokens: int) -> Tuple[List[int], List[int], List[int], List[int]]:
    # The known OJ diagnostic uses one 100-row and one 184-row half.
    counts = [100] * (experts // 2) + [184] * (experts // 2)
    if sum(counts) != valid_tokens:
        raise ValueError(f"group sizes sum to {sum(counts)}, expected {valid_tokens}")

    group_offsets = []
    group_padded_offsets = []
    group_idx_for_bx = []
    raw_offset = 0
    padded_offset = 0
    for expert_id, count in enumerate(counts):
        group_offsets.append(raw_offset)
        group_padded_offsets.append(padded_offset)
        padded_blocks = math.ceil((count + 1) / BLOCK_TOKEN)
        group_idx_for_bx.extend([expert_id] * padded_blocks)
        raw_offset += count
        padded_offset += padded_blocks * BLOCK_TOKEN

    return counts, group_offsets, group_padded_offsets, group_idx_for_bx


def build_case(case_id: int) -> Tuple[Dict[str, int], RoutedMoEKernel, Tuple[torch.Tensor, ...]]:
    cfg = CASES[case_id]
    experts = cfg["experts"]
    hidden = cfg["hidden"]
    intermediate = cfg["intermediate"]
    valid_tokens = cfg["valid_tokens"]
    counts, offsets, padded_offsets, group_idx = build_group_metadata(experts, valid_tokens)

    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260717 + case_id)
    stacked = make_random((valid_tokens, hidden), 1.0, generator)
    gate = make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator)
    up = make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator)
    down = make_random((experts, hidden, intermediate), 1.0 / math.sqrt(intermediate), generator)
    routed_weights = torch.rand((valid_tokens,), device="cuda", dtype=torch.float16, generator=generator)
    group_sizes = torch.tensor(counts, device="cuda", dtype=torch.int32)
    group_offsets = torch.tensor(offsets, device="cuda", dtype=torch.int32)
    group_padded_offsets = torch.tensor(padded_offsets, device="cuda", dtype=torch.int32)
    group_idx_for_bx = torch.tensor(group_idx, device="cuda", dtype=torch.int32)
    up_logits = torch.empty((valid_tokens, intermediate), device="cuda", dtype=torch.float16)
    output = torch.empty_like(stacked)

    # RoutedMoEKernel currently computes M as ceil(group_sum / block_token) +
    # group_count. Only that static M uses group_count, so pass the exact padding
    # overhead to reproduce the OJ diagnostic's 24/48/96 M-block grids without
    # modifying custom_fusedmoe.py.
    num_blocks_m = len(group_idx)
    static_grid_padding = num_blocks_m - math.ceil(valid_tokens / BLOCK_TOKEN)
    if static_grid_padding < 0:
        raise ValueError("exact OJ grid is smaller than the compact-row lower bound")
    routed_kernel = RoutedMoEKernel(
        hidden,
        intermediate,
        experts,
        group_sum=valid_tokens,
        group_count=static_grid_padding,
    )

    args = (
        stacked,
        gate,
        up,
        down,
        routed_weights,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx_for_bx,
        up_logits,
        output,
    )
    metadata = {
        **cfg,
        "num_blocks_m": num_blocks_m,
        "total_padded": num_blocks_m * BLOCK_TOKEN,
        "static_grid_padding": static_grid_padding,
    }
    return metadata, routed_kernel, args


@torch.no_grad()
def reference_output(args: Tuple[torch.Tensor, ...]) -> torch.Tensor:
    stacked, gate, up, down, routed_weights, group_sizes, group_offsets = args[:7]
    reference = torch.empty_like(stacked)
    for expert_id in range(int(group_sizes.numel())):
        start = int(group_offsets[expert_id].item())
        count = int(group_sizes[expert_id].item())
        end = start + count
        expert_input = stacked[start:end]
        gate_logits = F.silu(F.linear(expert_input, gate[expert_id]))
        up_logits = F.linear(expert_input, up[expert_id])
        expert_output = F.linear(gate_logits * up_logits, down[expert_id])
        reference[start:end] = expert_output * routed_weights[start:end, None]
    return reference


def elapsed_ms(kernel: RoutedMoEKernel, args: Tuple[torch.Tensor, ...], warmup: int, repeat: int) -> float:
    for _ in range(warmup):
        kernel(*args)
    torch.cuda.synchronize()

    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        kernel(*args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def run_case(case_id: int, warmup: int, repeat: int) -> Dict[str, object]:
    metadata, kernel, args = build_case(case_id)

    # Compile and allocate before correctness and performance measurements.
    kernel(*args)
    torch.cuda.synchronize()
    reference = reference_output(args)
    torch.cuda.synchronize()
    candidate = args[-1]
    torch.testing.assert_close(candidate.float(), reference.float(), rtol=1e-2, atol=1e-2)
    max_abs = float((candidate.float() - reference.float()).abs().max().item())
    del reference

    average_ms = elapsed_ms(kernel, args, warmup, repeat)
    result = {
        "case": case_id,
        **metadata,
        "warmup": warmup,
        "repeat": repeat,
        "average_ms": average_ms,
        "max_abs": max_abs,
        "status": "PASS",
    }
    print(json.dumps(result, ensure_ascii=False), flush=True)

    del args, kernel
    gc.collect()
    torch.cuda.empty_cache()
    return result


def main() -> None:
    parser = argparse.ArgumentParser(description="OJ-shape benchmark for the current custom_fusedmoe.py")
    parser.add_argument("--cases", default="1,2,3")
    parser.add_argument("--warmup", type=int, default=10)
    parser.add_argument("--repeat", type=int, default=100)
    args = parser.parse_args()

    case_ids = [int(value) for value in args.cases.split(",") if value]
    unknown = [case_id for case_id in case_ids if case_id not in CASES]
    if unknown:
        raise ValueError(f"unknown case ids: {unknown}")

    results = [run_case(case_id, args.warmup, args.repeat) for case_id in case_ids]
    print(json.dumps({"results": results}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
