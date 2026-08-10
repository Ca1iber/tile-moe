import torch
import tilelang
import tilelang.language as T
from tilelang.intrinsics.maca_mma_macro_generator import TensorCoreIntrinEmitter
from tilelang.layout import make_swizzled_layout


_KERNEL_CACHE = {}
_WORKSPACE_CACHE = {}


def _select_schedule(hidden, intermediate, num_experts):
    schedule = {
        "block_dhidden_step1": 64,
        "block_dexpert_step1": 128,
        "block_dhidden_step2": 256,
        "block_dexpert_step2": 64,
        "use_grid_transpose": False,
    }

    if hidden == 3584 and intermediate == 1024:
        schedule["use_grid_transpose"] = True
    elif hidden == 7168 and intermediate == 2048:
        schedule["use_grid_transpose"] = False
    elif hidden <= 4096 and intermediate <= 1024 and num_experts >= 4:
        schedule["use_grid_transpose"] = True

    return schedule


@tilelang.jit(pass_configs={tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True})
def _moe_forward_kernel(
    hidden,
    intermediate,
    num_experts,
    total_padded_tokens,
    total_valid_tokens,
    num_blocks_m,
    block_dhidden_step1,
    block_dexpert_step1,
    block_dhidden_step2,
    block_dexpert_step2,
    use_grid_transpose,
):
    scale = 1.44269504
    dtype = T.float16
    accum_dtype = T.float32
    block_token = 128
    threads = 256
    num_stages = 1

    step1_k_pack = 2
    step1_micro_size_x = 16
    step1_micro_size_y = 16
    step1_micro_size_k = 16
    step1_block_row_warps = 4
    step1_block_col_warps = 1
    step1_warp_row_tiles = block_token // step1_block_row_warps
    step1_warp_col_tiles = block_dexpert_step1 // step1_block_col_warps
    step1_warp_cols = step1_warp_col_tiles // step1_micro_size_y
    step1_local_size_b = (step1_micro_size_y * step1_micro_size_k) // 64
    step1_mma = TensorCoreIntrinEmitter(
        a_dtype=dtype,
        b_dtype=dtype,
        accum_dtype=accum_dtype,
        a_transposed=False,
        b_transposed=True,
        block_row_warps=step1_block_row_warps,
        block_col_warps=step1_block_col_warps,
        warp_row_tiles=step1_warp_row_tiles,
        warp_col_tiles=step1_warp_col_tiles,
        chunk=block_dhidden_step1,
        k_pack=step1_k_pack,
    )

    step2_k_pack = 2
    step2_micro_size_x = 16
    step2_micro_size_y = 16
    step2_micro_size_k = 16
    step2_block_row_warps = 4
    step2_block_col_warps = 1
    step2_warp_row_tiles = block_token // step2_block_row_warps
    step2_warp_col_tiles = block_dhidden_step2 // step2_block_col_warps
    step2_warp_cols = step2_warp_col_tiles // step2_micro_size_y
    step2_local_size_b = (step2_micro_size_y * step2_micro_size_k) // 64
    step2_mma = TensorCoreIntrinEmitter(
        a_dtype=dtype,
        b_dtype=dtype,
        accum_dtype=accum_dtype,
        a_transposed=False,
        b_transposed=True,
        block_row_warps=step2_block_row_warps,
        block_col_warps=step2_block_col_warps,
        warp_row_tiles=step2_warp_row_tiles,
        warp_col_tiles=step2_warp_col_tiles,
        chunk=block_dexpert_step2,
        k_pack=step2_k_pack,
    )

    input_shape = (total_padded_tokens, hidden)
    intermediate_shape = (total_padded_tokens, intermediate)
    gate_shape = (num_experts, intermediate, hidden)
    up_shape = (num_experts, intermediate, hidden)
    down_shape = (num_experts, hidden, intermediate)

    step1_col_tiles = (intermediate + block_dexpert_step1 - 1) // block_dexpert_step1
    step2_col_tiles = (hidden + block_dhidden_step2 - 1) // block_dhidden_step2
    step1_grid_x = step1_col_tiles if use_grid_transpose else num_blocks_m
    step1_grid_y = num_blocks_m if use_grid_transpose else step1_col_tiles
    step2_grid_x = step2_col_tiles if use_grid_transpose else num_blocks_m
    step2_grid_y = num_blocks_m if use_grid_transpose else step2_col_tiles

    @T.prim_func
    def kernel(
        stacked_expert_tokens: T.Tensor(input_shape, dtype),
        gate_w: T.Tensor(gate_shape, dtype),
        up_w: T.Tensor(up_shape, dtype),
        down_w: T.Tensor(down_shape, dtype),
        routed_expert_weights: T.Tensor((total_valid_tokens,), T.float32),
        group_sizes: T.Tensor((num_experts,), T.int32),
        group_offsets: T.Tensor((num_experts + 1,), T.int32),
        group_padded_offsets: T.Tensor((num_experts + 1,), T.int32),
        group_idx_for_bx: T.Tensor((num_blocks_m,), T.int32),
        up_logits: T.Tensor(intermediate_shape, dtype),
        out: T.Tensor(input_shape, dtype),
    ):
        with T.Kernel(step1_grid_x, step1_grid_y, threads=threads) as (pid0, pid1):
            bx = pid1 if use_grid_transpose else pid0
            by = pid0 if use_grid_transpose else pid1
            input_shared = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
            gate_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)
            up_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)
            gate_local = T.alloc_fragment((block_token, block_dexpert_step1), dtype=accum_dtype)
            up_local = T.alloc_fragment((block_token, block_dexpert_step1), dtype=accum_dtype)
            expert_weight_local = T.alloc_local((step1_warp_cols * step1_k_pack * step1_local_size_b), dtype=dtype)

            T.annotate_layout(
                {
                    input_shared: step1_mma.make_mma_load_layout(input_shared, matrix="A"),
                    gate_shared: make_swizzled_layout(gate_shared),
                    up_shared: make_swizzled_layout(up_shared),
                    gate_local: step1_mma.make_mma_store_layout(gate_local),
                    up_local: step1_mma.make_mma_store_layout(up_local),
                }
            )
            T.use_swizzle(10, enable=False)

            expert_id = group_idx_for_bx[bx]
            T.assume(0 <= expert_id)
            T.assume(expert_id < num_experts)

            block_start = bx * block_token
            group_size = group_sizes[expert_id]
            padded_start = group_padded_offsets[expert_id]
            token_offset = block_start - padded_start
            actual_rows = T.max(0, T.min(block_token, group_size - token_offset))

            T.clear(gate_local)
            T.clear(up_local)

            for k in T.Pipelined(T.ceildiv(hidden, block_dhidden_step1), num_stages=num_stages):
                T.copy(
                    stacked_expert_tokens[
                        block_start : block_start + block_token,
                        k * block_dhidden_step1 : (k + 1) * block_dhidden_step1,
                    ],
                    input_shared,
                )
                T.copy(
                    gate_w[
                        expert_id,
                        by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                        k * block_dhidden_step1 : (k + 1) * block_dhidden_step1,
                    ],
                    gate_shared,
                )
                T.copy(
                    up_w[
                        expert_id,
                        by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                        k * block_dhidden_step1 : (k + 1) * block_dhidden_step1,
                    ],
                    up_shared,
                )
                for ki in T.serial(0, block_dhidden_step1 // (step1_micro_size_k * step1_k_pack)):
                    step1_mma.ldmatrix_b(expert_weight_local, gate_shared, ki)
                    step1_mma.mma(input_shared, expert_weight_local, gate_local, ki)
                    step1_mma.ldmatrix_b(expert_weight_local, up_shared, ki)
                    step1_mma.mma(input_shared, expert_weight_local, up_local, ki)

            for i, j in T.Parallel(block_token, block_dexpert_step1):
                gate_local[i, j] = gate_local[i, j] * (1.0 / (1.0 + T.exp2(-gate_local[i, j] * scale)))
                if i < actual_rows:
                    up_logits[block_start + i, by * block_dexpert_step1 + j] = up_local[i, j] * gate_local[i, j]

        with T.Kernel(step2_grid_x, step2_grid_y, threads=threads) as (pid0, pid1):
            bx = pid1 if use_grid_transpose else pid0
            by = pid0 if use_grid_transpose else pid1
            up_logits_shared = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
            down_shared = T.alloc_shared((block_dhidden_step2, block_dexpert_step2), dtype=dtype)
            out_local = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
            down_weight_local = T.alloc_local((step2_warp_cols * step2_k_pack * step2_local_size_b), dtype=dtype)

            T.annotate_layout(
                {
                    up_logits_shared: step2_mma.make_mma_load_layout(up_logits_shared, matrix="A"),
                    down_shared: make_swizzled_layout(down_shared),
                    out_local: step2_mma.make_mma_store_layout(out_local),
                }
            )
            T.use_swizzle(10, enable=False)

            expert_id = group_idx_for_bx[bx]
            T.assume(0 <= expert_id)
            T.assume(expert_id < num_experts)

            block_start = bx * block_token
            group_size = group_sizes[expert_id]
            raw_start = group_offsets[expert_id]
            padded_start = group_padded_offsets[expert_id]
            token_offset = block_start - padded_start
            actual_rows = T.max(0, T.min(block_token, group_size - token_offset))

            T.clear(out_local)

            for k in T.Pipelined(T.ceildiv(intermediate, block_dexpert_step2), num_stages=num_stages):
                T.copy(
                    up_logits[
                        block_start : block_start + block_token,
                        k * block_dexpert_step2 : (k + 1) * block_dexpert_step2,
                    ],
                    up_logits_shared,
                )
                T.copy(
                    down_w[
                        expert_id,
                        by * block_dhidden_step2 : (by + 1) * block_dhidden_step2,
                        k * block_dexpert_step2 : (k + 1) * block_dexpert_step2,
                    ],
                    down_shared,
                )
                for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                    step2_mma.ldmatrix_b(down_weight_local, down_shared, ki)
                    step2_mma.mma(up_logits_shared, down_weight_local, out_local, ki)

            for i, j in T.Parallel(block_token, block_dhidden_step2):
                if i < actual_rows:
                    out[block_start + i, by * block_dhidden_step2 + j] = (
                        out_local[i, j] * routed_expert_weights[raw_start + token_offset + i]
                    )

    return kernel


def _get_kernel(
    hidden,
    intermediate,
    num_experts,
    total_padded_tokens,
    total_valid_tokens,
    num_blocks_m,
):
    schedule = _select_schedule(int(hidden), int(intermediate), int(num_experts))
    key = (
        int(hidden),
        int(intermediate),
        int(num_experts),
        int(total_padded_tokens),
        int(total_valid_tokens),
        int(num_blocks_m),
        int(schedule["block_dhidden_step1"]),
        int(schedule["block_dexpert_step1"]),
        int(schedule["block_dhidden_step2"]),
        int(schedule["block_dexpert_step2"]),
        bool(schedule["use_grid_transpose"]),
    )
    kernel = _KERNEL_CACHE.get(key)
    if kernel is None:
        kernel = _moe_forward_kernel(*key)
        _KERNEL_CACHE[key] = kernel
    return kernel


def _get_workspace(stacked_expert_tokens, intermediate):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(intermediate),
        str(stacked_expert_tokens.dtype),
    )
    up_logits = _WORKSPACE_CACHE.get(key)
    if up_logits is None:
        up_logits = torch.empty(
            (int(stacked_expert_tokens.shape[0]), int(intermediate)),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _WORKSPACE_CACHE[key] = up_logits
    return up_logits


def run_kernel(
    stacked_expert_tokens,
    gate_w,
    up_w,
    down_w,
    routed_expert_weights,
    group_sizes,
    group_offsets,
    group_padded_offsets,
    group_idx_for_bx,
    out,
):
    hidden = int(stacked_expert_tokens.shape[1])
    intermediate = int(gate_w.shape[1])
    num_experts = int(gate_w.shape[0])
    total_padded_tokens = int(stacked_expert_tokens.shape[0])
    total_valid_tokens = int(routed_expert_weights.shape[0])
    num_blocks_m = int(group_idx_for_bx.shape[0])

    up_logits = _get_workspace(stacked_expert_tokens, intermediate)
    kernel = _get_kernel(
        hidden,
        intermediate,
        num_experts,
        total_padded_tokens,
        total_valid_tokens,
        num_blocks_m,
    )
    kernel(
        stacked_expert_tokens,
        gate_w,
        up_w,
        down_w,
        routed_expert_weights,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx_for_bx,
        up_logits,
        out,
    )
