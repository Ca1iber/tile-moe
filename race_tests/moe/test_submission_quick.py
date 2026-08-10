import math
import sys

import torch

from fusedmoe_benchmark import generate_input
from submission import run_kernel


def build_grouped_inputs(data):
    input_tensor, weights, config = data
    hidden = config["d_hidden"]
    expert_dim = config["d_expert"]
    num_experts = config["n_routed_experts"]
    top_k = config["n_experts_per_token"]
    block_token = 128

    x_flat = input_tensor.view(-1, hidden)
    router_w = weights["router.weight"].t()
    scores = (x_flat @ router_w).softmax(dim=-1)
    topk_scores, topk_indices = torch.topk(scores, k=top_k, dim=-1, sorted=False)

    flat_expert_indices = topk_indices.reshape(-1)
    flat_expert_weights = topk_scores.reshape(-1).to(torch.float32)
    idxs = flat_expert_indices.argsort()
    counts = flat_expert_indices.bincount(minlength=num_experts).to(torch.int32)
    offsets = torch.empty((num_experts + 1,), device="cuda", dtype=torch.int32)
    offsets[0] = 0
    offsets[1:] = torch.cumsum(counts, dim=0)

    counts_cpu = counts.cpu().tolist()
    padded_offsets_cpu = [0]
    for c in counts_cpu:
        padded_offsets_cpu.append(padded_offsets_cpu[-1] + math.ceil((c + 1) / block_token) * block_token)
    padded_offsets = torch.tensor(padded_offsets_cpu, device="cuda", dtype=torch.int32)
    total_padded = padded_offsets_cpu[-1]
    num_blocks_m = total_padded // block_token

    group_idx = torch.empty((num_blocks_m,), device="cuda", dtype=torch.int32)
    for expert_id in range(num_experts):
        start_block = padded_offsets_cpu[expert_id] // block_token
        end_block = padded_offsets_cpu[expert_id + 1] // block_token
        if end_block > start_block:
            group_idx[start_block:end_block] = expert_id

    token_idxs = idxs // top_k
    stacked = torch.empty((total_padded, hidden), device="cuda", dtype=torch.float16)
    routed_weights = torch.empty((int(offsets[-1].item()),), device="cuda", dtype=torch.float32)
    valid_mask = torch.zeros((total_padded,), device="cuda", dtype=torch.bool)

    for expert_id, count in enumerate(counts_cpu):
        if count == 0:
            continue
        raw_start = int(offsets[expert_id].item())
        raw_end = int(offsets[expert_id + 1].item())
        padded_start = padded_offsets_cpu[expert_id]
        expert_token_idxs = token_idxs[raw_start:raw_end]
        stacked[padded_start:padded_start + count] = x_flat[expert_token_idxs]
        routed_weights[raw_start:raw_end] = flat_expert_weights[idxs[raw_start:raw_end]]
        valid_mask[padded_start:padded_start + count] = True

    gate_w = torch.stack([weights[f"experts.{i}.0.weight"].t().contiguous() for i in range(num_experts)], dim=0)
    up_w = torch.stack([weights[f"experts.{i}.1.weight"].t().contiguous() for i in range(num_experts)], dim=0)
    down_w = torch.stack([weights[f"experts.{i}.2.weight"].t().contiguous() for i in range(num_experts)], dim=0)

    return (
        stacked,
        gate_w,
        up_w,
        down_w,
        routed_weights,
        counts,
        offsets,
        padded_offsets,
        group_idx,
        valid_mask,
        config,
    )


def reference(args):
    (
        stacked,
        gate_w,
        up_w,
        down_w,
        routed_weights,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        _group_idx,
        _valid_mask,
        config,
    ) = args
    out = torch.empty_like(stacked)
    num_experts = config["n_routed_experts"]
    for expert_id in range(num_experts):
        count = int(group_sizes[expert_id].item())
        if count == 0:
            continue
        raw_start = int(group_offsets[expert_id].item())
        padded_start = int(group_padded_offsets[expert_id].item())
        x = stacked[padded_start:padded_start + count]
        gate = torch.nn.functional.silu(x @ gate_w[expert_id].t())
        up = x @ up_w[expert_id].t()
        y = (gate * up) @ down_w[expert_id].t()
        y = y * routed_weights[raw_start:raw_start + count].view(-1, 1).to(y.dtype)
        out[padded_start:padded_start + count] = y
    return out


def run_case(cfg):
    data = generate_input(**cfg)
    args = build_grouped_inputs(data)
    out = torch.empty_like(args[0])
    run_kernel(*args[:9], out)
    torch.cuda.synchronize()
    ref = reference(args)
    torch.testing.assert_close(out[args[9]].float(), ref[args[9]].float(), atol=1e-2, rtol=1e-2)
    print("passed", cfg)


if __name__ == "__main__":
    cases = [
        {"dhidden": 3584, "dexpert": 1024, "nroutedexperts": 4, "nexpertspertoken": 2, "bs": 1, "seqlen": 256, "seed": 81394},
        {"dhidden": 7168, "dexpert": 2048, "nroutedexperts": 8, "nexpertspertoken": 4, "bs": 1, "seqlen": 128, "seed": 42},
    ]
    if len(sys.argv) > 1 and sys.argv[1] == "--large":
        cases = [
            {"dhidden": 3584, "dexpert": 1024, "nroutedexperts": 4, "nexpertspertoken": 2, "bs": 2, "seqlen": 4096, "seed": 81394},
        ]
    for case in cases:
        run_case(case)
