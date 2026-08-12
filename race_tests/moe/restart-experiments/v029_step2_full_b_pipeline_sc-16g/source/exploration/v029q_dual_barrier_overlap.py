import math
import torch
import torch.nn as nn
from typing import Dict, Tuple, Optional
import tilelang
import tilelang.language as T
from tvm import tir
from tilelang.autotuner import *
from tilelang.layout import make_swizzled_layout
from tilelang.intrinsics.maca_mma_macro_generator import TensorCoreIntrinEmitter


@tilelang.jit(pass_configs={tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True})
def moe_forward_tilelang_routed(
    d_hidden,
    d_expert,
    n_routed_experts,
    group_sum,  # routed 后的 token-expert pair 总数：batch_size * seq_len * top_k。
    group_count,  # expert 分组数量，通常等于 n_routed_experts。
    block_token=128,
    block_dhidden_step1=128,
    block_dexpert_step1=64,
    block_dhidden_step2=128,
    block_dexpert_step2=64,
    threads=256,
    num_stages=1,
    use_grid_transpose_step1=False,
    use_grid_transpose_step2=False,
    use_step1_input_prefetch=False,
    use_step1_prefetch_before_barrier=False,
    use_step2_input_prefetch=False,
    use_step2_full_b_pingpong=False,
):
    scale = 1.44269504  # log2(e)
    dtype = T.float16

    # Parameters
    dhidden = d_hidden
    dexpert = d_expert
    n_routed_experts = n_routed_experts  # 本地别名，用于后面的 TileLang 静态 shape 定义。

    M = math.ceil(group_sum / block_token) + group_count
    accum_dtype = T.float32
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

    input_shape = (group_sum, dhidden)
    intermediate_shape = (group_sum, dexpert)
    routed_expert_gate_shape = (n_routed_experts, dexpert, dhidden)  # 所有 expert 的 W_gate，布局为 [expert_id, 输出维度, 输入维度]。
    routed_expert_up_shape = (n_routed_experts, dexpert, dhidden)  # 所有 expert 的 W_up，布局和 W_gate 一样。
    routed_expert_down_shape = (n_routed_experts, dhidden, dexpert)  # 所有 expert 的 W_down，把 expert hidden 维度映射回模型 hidden 维度。
    routed_expert_weights_shape = group_sum  # 每个 routed token-expert pair 对应一个 router 权重。
    group_sizes_shape = n_routed_experts  # 每个 expert 对应一个 token 数量。
    step1_col_tiles = math.ceil(dexpert / block_dexpert_step1)
    step1_k_tiles = math.ceil(dhidden / block_dhidden_step1)
    step2_output_tile = 2 * block_dhidden_step2
    step2_col_tiles = math.ceil(dhidden / step2_output_tile)
    step2_k_tiles = math.ceil(dexpert / block_dexpert_step2)
    step1_grid_x = step1_col_tiles if use_grid_transpose_step1 else M
    step1_grid_y = M if use_grid_transpose_step1 else step1_col_tiles
    step2_grid_x = step2_col_tiles if use_grid_transpose_step2 else M
    step2_grid_y = M if use_grid_transpose_step2 else step2_col_tiles

    @T.prim_func
    def kernel(
        input: T.Tensor(input_shape, dtype),  # type: ignore
        routed_expert_gate: T.Tensor(routed_expert_gate_shape, dtype),  # type: ignore  # stack 后的所有 expert 的 W_gate。
        routed_expert_up: T.Tensor(routed_expert_up_shape, dtype),  # type: ignore
        routed_expert_down: T.Tensor(routed_expert_down_shape, dtype),  # type: ignore
        routed_expert_weights: T.Tensor(routed_expert_weights_shape, dtype),  # type: ignore
        group_sizes: T.Tensor(group_sizes_shape, T.int32),  # type: ignore  # 每个 expert 实际分到的 routed row 数量。
        group_offsets: T.Tensor(group_sizes_shape, T.int32),  # type: ignore  # 每个 expert 在紧凑排序 buffer 中的起始 row。
        group_padded_offsets: T.Tensor(group_sizes_shape, T.int32),  # type: ignore  # 每个 expert 在按 block_token padding 后空间里的起始 row。
        group_idx_for_bx: T.Tensor((M,), T.int32),  # type: ignore  # 把 block-row 下标 bx 映射到它所属的 expert id。
        up_logits: T.Tensor(intermediate_shape, dtype),  # type: ignore
        output: T.Tensor(input_shape, dtype),  # type: ignore
    ):
        # Step 1: Compute gate and up logits
        with T.Kernel(step1_grid_x, step1_grid_y, threads=threads) as (pid0, pid1):
            bx = pid1 if use_grid_transpose_step1 else pid0
            by = pid0 if use_grid_transpose_step1 else pid1
            input_shared = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
            input_prefetch = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
            routed_expert_gate_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)  # 当前 W_gate tile 的 shared memory 缓存。
            routed_expert_up_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)  # 当前 W_up tile 的 shared memory 缓存。

            gate_logits_local = T.alloc_fragment((block_token, block_dexpert_step1), dtype=accum_dtype)  # input @ W_gate.T 的局部累加器。
            up_logits_local = T.alloc_fragment((block_token, block_dexpert_step1), dtype=accum_dtype)  # input @ W_up.T 的局部累加器。
            expert_weight_local = T.alloc_local((step1_warp_cols * step1_k_pack * step1_local_size_b), dtype=dtype)

            T.annotate_layout(
                {
                    input_shared: step1_mma.make_mma_load_layout(input_shared, matrix="A"),
                    input_prefetch: step1_mma.make_mma_load_layout(input_prefetch, matrix="A"),
                    routed_expert_gate_shared: make_swizzled_layout(routed_expert_gate_shared),
                    routed_expert_up_shared: make_swizzled_layout(routed_expert_up_shared),
                    gate_logits_local: step1_mma.make_mma_store_layout(gate_logits_local),
                    up_logits_local: step1_mma.make_mma_store_layout(up_logits_local),
                }
            )

            T.use_swizzle(10, enable=False)

            m_start_padded = bx * block_token  # 当前 block 在 padding 后 routed-row 坐标空间里的起始位置。

            cur_group_idx = group_idx_for_bx[bx]  # 当前 block row 负责的 expert id。

            T.assume(0 <= cur_group_idx)
            T.assume(cur_group_idx < n_routed_experts)

            cur_group_size = group_sizes[cur_group_idx]
            m_start = m_start_padded - group_padded_offsets[cur_group_idx] + group_offsets[cur_group_idx]                       # 算出它在真实 compact input 里的行起点 m_start
            actual_rows = T.max(0, T.min(block_token, cur_group_size - (m_start_padded - group_padded_offsets[cur_group_idx]))) # 算出这个 tile 里有多少真实行 actual_rows

            T.clear(gate_logits_local)
            T.clear(up_logits_local)

            if use_step1_input_prefetch:
                # Keep BN128 and ping-pong only the register A fragments. Tile 0 is
                # primed here. For 32 experts, keep v023's 1-2-1 weight/input
                # grouping while swapping only the two middle weight half-copies.
                # This isolates instruction order without changing transfer volume;
                # 64 experts retain the unsplit v019 weight-copy path.
                T.copy(
                    input[m_start : m_start + block_token, 0:block_dhidden_step1],
                    input_shared,
                )
                for k_pair in T.serial(step1_k_tiles // 2):
                    k_even = k_pair * 2
                    k_odd = k_even + 1
                    if use_step1_prefetch_before_barrier:
                        T.copy(
                            routed_expert_gate[
                                cur_group_idx,
                                by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                            ],
                            routed_expert_gate_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                        )
                        T.copy(
                            input[
                                m_start : m_start + block_token // 2,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            input_prefetch[0 : block_token // 2, 0:block_dhidden_step1],
                        )
                        T.copy(
                            routed_expert_gate[
                                cur_group_idx,
                                by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                            ],
                            routed_expert_gate_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                        )
                        T.copy(
                            routed_expert_up[
                                cur_group_idx,
                                by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                            ],
                            routed_expert_up_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                        )
                        T.copy(
                            input[
                                m_start + block_token // 2 : m_start + block_token,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            input_prefetch[block_token // 2 : block_token, 0:block_dhidden_step1],
                        )
                        T.copy(
                            routed_expert_up[
                                cur_group_idx,
                                by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                            ],
                            routed_expert_up_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                        )
                    else:
                        T.copy(
                            routed_expert_gate[
                                cur_group_idx,
                                by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                            ],
                            routed_expert_gate_shared,
                        )
                        T.copy(
                            routed_expert_up[
                                cur_group_idx,
                                by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                            ],
                            routed_expert_up_shared,
                        )
                    T.sync_threads()
                    if not use_step1_prefetch_before_barrier:
                        T.copy(
                            input[
                                m_start : m_start + block_token,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            input_prefetch,
                        )
                    for ki in T.serial(0, block_dhidden_step1 // (step1_micro_size_k * step1_k_pack)):
                        step1_mma.ldmatrix_b(expert_weight_local, routed_expert_gate_shared, ki)
                        step1_mma.mma(input_shared, expert_weight_local, gate_logits_local, ki)
                        step1_mma.ldmatrix_b(expert_weight_local, routed_expert_up_shared, ki)
                        step1_mma.mma(input_shared, expert_weight_local, up_logits_local, ki)
                    T.sync_threads()
                    if use_step1_prefetch_before_barrier:
                        T.copy(
                            routed_expert_gate[
                                cur_group_idx,
                                by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            routed_expert_gate_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                        )
                        if k_pair + 1 < step1_k_tiles // 2:
                            k_next_even = k_odd + 1
                            T.copy(
                                input[
                                    m_start : m_start + block_token // 2,
                                    k_next_even * block_dhidden_step1 : (k_next_even + 1) * block_dhidden_step1,
                                ],
                                input_shared[0 : block_token // 2, 0:block_dhidden_step1],
                            )
                        T.copy(
                            routed_expert_gate[
                                cur_group_idx,
                                by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            routed_expert_gate_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                        )
                        T.copy(
                            routed_expert_up[
                                cur_group_idx,
                                by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            routed_expert_up_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                        )
                        if k_pair + 1 < step1_k_tiles // 2:
                            T.copy(
                                input[
                                    m_start + block_token // 2 : m_start + block_token,
                                    (k_odd + 1) * block_dhidden_step1 : (k_odd + 2) * block_dhidden_step1,
                                ],
                                input_shared[block_token // 2 : block_token, 0:block_dhidden_step1],
                            )
                        T.copy(
                            routed_expert_up[
                                cur_group_idx,
                                by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            routed_expert_up_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                        )
                    else:
                        T.copy(
                            routed_expert_gate[
                                cur_group_idx,
                                by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            routed_expert_gate_shared,
                        )
                        T.copy(
                            routed_expert_up[
                                cur_group_idx,
                                by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                            ],
                            routed_expert_up_shared,
                        )
                    T.sync_threads()
                    if not use_step1_prefetch_before_barrier and k_pair + 1 < step1_k_tiles // 2:
                        k_next_even = k_odd + 1
                        T.copy(
                            input[
                                m_start : m_start + block_token,
                                k_next_even * block_dhidden_step1 : (k_next_even + 1) * block_dhidden_step1,
                            ],
                            input_shared,
                        )
                    for ki in T.serial(0, block_dhidden_step1 // (step1_micro_size_k * step1_k_pack)):
                        step1_mma.ldmatrix_b(expert_weight_local, routed_expert_gate_shared, ki)
                        step1_mma.mma(input_prefetch, expert_weight_local, gate_logits_local, ki)
                        step1_mma.ldmatrix_b(expert_weight_local, routed_expert_up_shared, ki)
                        step1_mma.mma(input_prefetch, expert_weight_local, up_logits_local, ki)
                    if k_pair + 1 < step1_k_tiles // 2:
                        T.sync_threads()
            else:
                for k in T.Pipelined(T.ceildiv(dhidden, block_dhidden_step1), num_stages=num_stages):
                    T.copy(
                        input[m_start : m_start + block_token, k * block_dhidden_step1 : (k + 1) * block_dhidden_step1],
                        input_shared,
                    )
                    T.copy(
                        routed_expert_gate[
                            cur_group_idx, by * block_dexpert_step1 : (by + 1) * block_dexpert_step1, k * block_dhidden_step1 : (k + 1) * block_dhidden_step1
                        ],
                        routed_expert_gate_shared,
                    )
                    T.copy(
                        routed_expert_up[
                            cur_group_idx, by * block_dexpert_step1 : (by + 1) * block_dexpert_step1, k * block_dhidden_step1 : (k + 1) * block_dhidden_step1
                        ],
                        routed_expert_up_shared,
                    )
                    for ki in T.serial(0, block_dhidden_step1 // (step1_micro_size_k * step1_k_pack)):
                        step1_mma.ldmatrix_b(expert_weight_local, routed_expert_gate_shared, ki)
                        step1_mma.mma(input_shared, expert_weight_local, gate_logits_local, ki)
                        step1_mma.ldmatrix_b(expert_weight_local, routed_expert_up_shared, ki)
                        step1_mma.mma(input_shared, expert_weight_local, up_logits_local, ki)

            # element-wise activation
            for i, j in T.Parallel(block_token, block_dexpert_step1):
                gate_logits_local[i, j] = gate_logits_local[i, j] * (1.0 / (1.0 + T.exp2(-gate_logits_local[i, j] * scale)))
                if i < actual_rows:
                    up_logits[m_start + i, by * block_dexpert_step1 + j] = up_logits_local[i, j] * gate_logits_local[i, j]

        # Step 2: Compute down logits
        with T.Kernel(step2_grid_x, step2_grid_y, threads=threads) as (pid0, pid1):
            bx = pid1 if use_grid_transpose_step2 else pid0
            by = pid0 if use_grid_transpose_step2 else pid1
            up_logits_shared = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
            up_logits_prefetch = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
            routed_expert_down_shared = T.alloc_shared(
                (step2_output_tile * (2 if use_step2_full_b_pingpong else 1), block_dexpert_step2),
                dtype=dtype,
            )
            output_local_0 = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
            output_local_1 = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
            down_weight_local = T.alloc_local((step2_warp_cols * step2_k_pack * step2_local_size_b), dtype=dtype)
            routed_weight_local = T.alloc_local((2,), dtype=dtype)
            down_copy_barrier = T.alloc_maca_barrier(2)

            T.annotate_layout(
                {
                    up_logits_shared: step2_mma.make_mma_load_layout(up_logits_shared, matrix="A"),
                    up_logits_prefetch: step2_mma.make_mma_load_layout(up_logits_prefetch, matrix="A"),
                    routed_expert_down_shared: make_swizzled_layout(routed_expert_down_shared),
                    output_local_0: step2_mma.make_mma_store_layout(output_local_0),
                    output_local_1: step2_mma.make_mma_store_layout(output_local_1),
                }
            )

            T.use_swizzle(10, enable=False)

            m_start_padded = bx * block_token

            cur_group_idx = group_idx_for_bx[bx]

            T.assume(0 <= cur_group_idx)
            T.assume(cur_group_idx < n_routed_experts)

            cur_group_size = group_sizes[cur_group_idx]
            m_start = m_start_padded - group_padded_offsets[cur_group_idx] + group_offsets[cur_group_idx]
            actual_rows = T.max(0, T.min(block_token, cur_group_size - (m_start_padded - group_padded_offsets[cur_group_idx])))

            T.clear(output_local_0)
            T.clear(output_local_1)

            if use_step2_full_b_pingpong:
                # Double-buffer the complete 256x64 B tile at the 64 KiB C500
                # per-CTA shared-memory limit. Each async 32 KiB producer then
                # overlaps both 128-column MMA accumulator chains, cutting the
                # half-tile pipeline's four CTA barriers per K pair to two.
                T.copy(
                    up_logits[m_start : m_start + block_token, 0:block_dexpert_step2],
                    up_logits_shared,
                )
                T.copy(
                    routed_expert_down[
                        cur_group_idx,
                        by * step2_output_tile : (by + 1) * step2_output_tile,
                        0:block_dexpert_step2,
                    ],
                    routed_expert_down_shared[0:step2_output_tile, 0:block_dexpert_step2],
                )
                T.sync_threads()
                for k_pair in T.serial(step2_k_tiles // 2):
                    k_even = k_pair * 2
                    k_odd = k_even + 1

                    # Keep each producer group at four 16-byte BSM requests per
                    # thread. The first producer must target output1: v029n
                    # proved that output0-first corrupts one fixed fragment.
                    async_tx = T.get_thread_binding()
                    for row_batch_async_0 in T.serial(block_dhidden_step2 // (threads // 8)):
                        logical_row_async_0 = row_batch_async_0 * (threads // 8) + async_tx // 8
                        physical_group_async_0 = async_tx % 8
                        logical_group_async_0 = physical_group_async_0 ^ (logical_row_async_0 % 8)
                        logical_col_async_0 = logical_group_async_0 * 8
                        T.evaluate(
                            tir.call_intrin(
                                "float16",
                                tir.op.Op.get("tl.maca_memcpy_async"),
                                T.access_ptr(
                                    routed_expert_down_shared[
                                        step2_output_tile
                                        + block_dhidden_step2
                                        + logical_row_async_0,
                                        logical_col_async_0,
                                    ],
                                    "w",
                                    8,
                                ),
                                T.access_ptr(
                                    routed_expert_down[
                                        cur_group_idx,
                                        by * step2_output_tile
                                        + block_dhidden_step2
                                        + logical_row_async_0,
                                        k_odd * block_dexpert_step2 + logical_col_async_0,
                                    ],
                                    "r",
                                    8,
                                ),
                                16,
                                down_copy_barrier[0],
                                annotations={"barrier_type": tir.StringImm("b128vectype")},
                            )
                        )
                    T.copy(
                        up_logits[
                            m_start : m_start + block_token,
                            k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                        ],
                        up_logits_prefetch,
                    )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[0:block_dhidden_step2, 0:block_dexpert_step2],
                            ki,
                        )
                        step2_mma.mma(up_logits_shared, down_weight_local, output_local_0, ki)
                    # Use an independent handle for output0 so both producer
                    # groups can remain in flight while the even tile computes.
                    for row_batch_async_1 in T.serial(block_dhidden_step2 // (threads // 8)):
                        logical_row_async_1 = row_batch_async_1 * (threads // 8) + async_tx // 8
                        physical_group_async_1 = async_tx % 8
                        logical_group_async_1 = physical_group_async_1 ^ (logical_row_async_1 % 8)
                        logical_col_async_1 = logical_group_async_1 * 8
                        T.evaluate(
                            tir.call_intrin(
                                "float16",
                                tir.op.Op.get("tl.maca_memcpy_async"),
                                T.access_ptr(
                                    routed_expert_down_shared[
                                        step2_output_tile + logical_row_async_1,
                                        logical_col_async_1,
                                    ],
                                    "w",
                                    8,
                                ),
                                T.access_ptr(
                                    routed_expert_down[
                                        cur_group_idx,
                                        by * step2_output_tile + logical_row_async_1,
                                        k_odd * block_dexpert_step2 + logical_col_async_1,
                                    ],
                                    "r",
                                    8,
                                ),
                                16,
                                down_copy_barrier[1],
                                annotations={"barrier_type": tir.StringImm("b128vectype")},
                            )
                        )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[
                                block_dhidden_step2:step2_output_tile,
                                0:block_dexpert_step2,
                            ],
                            ki,
                        )
                        step2_mma.mma(up_logits_shared, down_weight_local, output_local_1, ki)
                    T.sync_threads()

                    # Refill stage 0 in two four-request groups while stage 1
                    # feeds the two odd-tile accumulator chains.
                    k_next_even = k_odd + 1
                    if k_pair + 1 < step2_k_tiles // 2:
                        for row_batch_async_2 in T.serial(block_dhidden_step2 // (threads // 8)):
                            logical_row_async_2 = row_batch_async_2 * (threads // 8) + async_tx // 8
                            physical_group_async_2 = async_tx % 8
                            logical_group_async_2 = physical_group_async_2 ^ (logical_row_async_2 % 8)
                            logical_col_async_2 = logical_group_async_2 * 8
                            T.evaluate(
                                tir.call_intrin(
                                    "float16",
                                    tir.op.Op.get("tl.maca_memcpy_async"),
                                    T.access_ptr(
                                        routed_expert_down_shared[
                                            block_dhidden_step2 + logical_row_async_2,
                                            logical_col_async_2,
                                        ],
                                        "w",
                                        8,
                                    ),
                                    T.access_ptr(
                                        routed_expert_down[
                                            cur_group_idx,
                                            by * step2_output_tile
                                            + block_dhidden_step2
                                            + logical_row_async_2,
                                            k_next_even * block_dexpert_step2 + logical_col_async_2,
                                        ],
                                        "r",
                                        8,
                                    ),
                                    16,
                                    down_copy_barrier[0],
                                    annotations={"barrier_type": tir.StringImm("b128vectype")},
                                )
                            )
                        T.copy(
                            up_logits[
                                m_start : m_start + block_token,
                                k_next_even * block_dexpert_step2 : (k_next_even + 1) * block_dexpert_step2,
                            ],
                            up_logits_shared,
                        )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[
                                step2_output_tile : step2_output_tile + block_dhidden_step2,
                                0:block_dexpert_step2,
                            ],
                            ki,
                        )
                        step2_mma.mma(up_logits_prefetch, down_weight_local, output_local_0, ki)
                    if k_pair + 1 < step2_k_tiles // 2:
                        for row_batch_async_3 in T.serial(block_dhidden_step2 // (threads // 8)):
                            logical_row_async_3 = row_batch_async_3 * (threads // 8) + async_tx // 8
                            physical_group_async_3 = async_tx % 8
                            logical_group_async_3 = physical_group_async_3 ^ (logical_row_async_3 % 8)
                            logical_col_async_3 = logical_group_async_3 * 8
                            T.evaluate(
                                tir.call_intrin(
                                    "float16",
                                    tir.op.Op.get("tl.maca_memcpy_async"),
                                    T.access_ptr(
                                        routed_expert_down_shared[
                                            logical_row_async_3,
                                            logical_col_async_3,
                                        ],
                                        "w",
                                        8,
                                    ),
                                    T.access_ptr(
                                        routed_expert_down[
                                            cur_group_idx,
                                            by * step2_output_tile + logical_row_async_3,
                                            k_next_even * block_dexpert_step2 + logical_col_async_3,
                                        ],
                                        "r",
                                        8,
                                    ),
                                    16,
                                    down_copy_barrier[1],
                                    annotations={"barrier_type": tir.StringImm("b128vectype")},
                                )
                            )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[
                                step2_output_tile
                                + block_dhidden_step2 : 2 * step2_output_tile,
                                0:block_dexpert_step2,
                            ],
                            ki,
                        )
                        step2_mma.mma(up_logits_prefetch, down_weight_local, output_local_1, ki)
                    if k_pair + 1 < step2_k_tiles // 2:
                        T.sync_threads()
            elif use_step2_input_prefetch:
                # Ping-pong only the register-resident A fragments. The single
                # shared B buffer keeps its producer/consumer barriers, while the
                # next up_logits tile is issued before the current tile's MMA.
                T.copy(
                    up_logits[m_start : m_start + block_token, 0:block_dexpert_step2],
                    up_logits_shared,
                )
                for k_pair in T.serial(step2_k_tiles // 2):
                    k_even = k_pair * 2
                    k_odd = k_even + 1
                    T.copy(
                        routed_expert_down[
                            cur_group_idx,
                            by * step2_output_tile : (by + 1) * step2_output_tile,
                            k_even * block_dexpert_step2 : (k_even + 1) * block_dexpert_step2,
                        ],
                        routed_expert_down_shared,
                    )
                    T.sync_threads()
                    T.copy(
                        up_logits[
                            m_start : m_start + block_token,
                            k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                        ],
                        up_logits_prefetch,
                    )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[0:block_dhidden_step2, 0:block_dexpert_step2],
                            ki,
                        )
                        step2_mma.mma(up_logits_shared, down_weight_local, output_local_0, ki)
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[
                                block_dhidden_step2:step2_output_tile,
                                0:block_dexpert_step2,
                            ],
                            ki,
                        )
                        step2_mma.mma(up_logits_shared, down_weight_local, output_local_1, ki)
                    T.sync_threads()
                    T.copy(
                        routed_expert_down[
                            cur_group_idx,
                            by * step2_output_tile : (by + 1) * step2_output_tile,
                            k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                        ],
                        routed_expert_down_shared,
                    )
                    T.sync_threads()
                    if k_pair + 1 < step2_k_tiles // 2:
                        k_next_even = k_odd + 1
                        T.copy(
                            up_logits[
                                m_start : m_start + block_token,
                                k_next_even * block_dexpert_step2 : (k_next_even + 1) * block_dexpert_step2,
                            ],
                            up_logits_shared,
                        )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[0:block_dhidden_step2, 0:block_dexpert_step2],
                            ki,
                        )
                        step2_mma.mma(up_logits_prefetch, down_weight_local, output_local_0, ki)
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[
                                block_dhidden_step2:step2_output_tile,
                                0:block_dexpert_step2,
                            ],
                            ki,
                        )
                        step2_mma.mma(up_logits_prefetch, down_weight_local, output_local_1, ki)
                    if k_pair + 1 < step2_k_tiles // 2:
                        T.sync_threads()
            else:
                for k in T.Pipelined(T.ceildiv(dexpert, block_dexpert_step2), num_stages=num_stages):
                    T.copy(
                        up_logits[m_start : m_start + block_token, k * block_dexpert_step2 : (k + 1) * block_dexpert_step2],
                        up_logits_shared,
                    )
                    T.copy(
                        routed_expert_down[
                            cur_group_idx, by * step2_output_tile : (by + 1) * step2_output_tile, k * block_dexpert_step2 : (k + 1) * block_dexpert_step2
                        ],
                        routed_expert_down_shared,
                    )
                    for ki in T.serial(0, block_dexpert_step2 // (step2_micro_size_k * step2_k_pack)):
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[0:block_dhidden_step2, 0:block_dexpert_step2],
                            ki,
                        )
                        step2_mma.mma(up_logits_shared, down_weight_local, output_local_0, ki)
                        step2_mma.ldmatrix_b(
                            down_weight_local,
                            routed_expert_down_shared[
                                block_dhidden_step2:step2_output_tile,
                                0:block_dexpert_step2,
                            ],
                            ki,
                        )
                        step2_mma.mma(up_logits_shared, down_weight_local, output_local_1, ki)

            # `output_local` 的 MMA store layout 让每个线程负责两个 routed row：
            # row = (tx // 64) * 32 + {0, 16} + tx % 16。
            # 显式预取这两个 router weight，避免展开输出循环重复发出 32 次标量 load。
            tx = T.get_thread_binding()
            for row_slot in T.serial(2):
                routed_row = (tx // 64) * 32 + row_slot * 16 + tx % 16
                routed_weight_local[row_slot] = 0.0
                if routed_row < actual_rows:
                    routed_weight_local[row_slot] = routed_expert_weights[m_start + routed_row]

            for i, j in T.Parallel(block_token, block_dhidden_step2):
                if i < actual_rows:
                    output[m_start + i, by * step2_output_tile + j] = output_local_0[i, j] * routed_weight_local[(i // 16) % 2]
            for i, j in T.Parallel(block_token, block_dhidden_step2):
                if i < actual_rows:
                    output[m_start + i, by * step2_output_tile + block_dhidden_step2 + j] = output_local_1[i, j] * routed_weight_local[(i // 16) % 2]

    return kernel


class RoutedMoEKernel:
    _DEFAULT_BLOCK_DHIDDEN_STEP1 = 64
    _DEFAULT_BLOCK_DEXPERT_STEP1 = 128
    _DEFAULT_BLOCK_DHIDDEN_STEP2 = 128
    _DEFAULT_BLOCK_DEXPERT_STEP2 = 64

    @staticmethod
    def _select_schedule(
        d_hidden: int,
        d_expert: int,
        n_routed_experts: int,
        block_dhidden: int,
        block_dexpert: int,
        block_dhidden_step2: int,
        block_dexpert_step2: int,
    ) -> Dict[str, object]:
        schedule = {
            "block_dhidden_step1": block_dhidden,
            "block_dexpert_step1": block_dexpert,
            "block_dhidden_step2": block_dhidden_step2,
            "block_dexpert_step2": block_dexpert_step2,
            "use_grid_transpose_step1": False,
            "use_grid_transpose_step2": False,
            "use_step1_input_prefetch": False,
            "use_step1_prefetch_before_barrier": False,
            "use_step2_input_prefetch": False,
            "use_step2_full_b_pingpong": False,
        }

        using_default_tiles = (
            block_dhidden == RoutedMoEKernel._DEFAULT_BLOCK_DHIDDEN_STEP1
            and block_dexpert == RoutedMoEKernel._DEFAULT_BLOCK_DEXPERT_STEP1
            and block_dhidden_step2 == RoutedMoEKernel._DEFAULT_BLOCK_DHIDDEN_STEP2
            and block_dexpert_step2 == RoutedMoEKernel._DEFAULT_BLOCK_DEXPERT_STEP2
        )
        if not using_default_tiles:
            use_grid_transpose = d_hidden == 3584 and d_expert == 1024
            schedule["use_grid_transpose_step1"] = use_grid_transpose
            schedule["use_grid_transpose_step2"] = use_grid_transpose
            return schedule

        if d_hidden == 3584 and d_expert == 1024:
            schedule["use_grid_transpose_step1"] = True
            schedule["use_grid_transpose_step2"] = True
        elif d_hidden == 2048 and d_expert == 8192 and n_routed_experts == 16:
            schedule["use_grid_transpose_step1"] = True
            schedule["use_grid_transpose_step2"] = True
            schedule["use_step2_input_prefetch"] = True
        elif d_hidden == 7168 and d_expert == 2048 and n_routed_experts >= 32:
            schedule["use_grid_transpose_step1"] = True
            schedule["use_grid_transpose_step2"] = True
            schedule["use_step1_input_prefetch"] = n_routed_experts >= 32
            schedule["use_step1_prefetch_before_barrier"] = n_routed_experts == 32
            schedule["use_step2_input_prefetch"] = n_routed_experts >= 32
            schedule["use_step2_full_b_pingpong"] = n_routed_experts == 32
        elif d_hidden <= 4096 and d_expert <= 1024 and n_routed_experts >= 4:
            # Conservative fallback for smaller hidden shapes: keep proven tile sizes,
            # but use transposed grid to expose column tiles first, matching 3584/1024.
            schedule["use_grid_transpose_step1"] = True
            schedule["use_grid_transpose_step2"] = True

        return schedule

    def __init__(
        self,
        d_hidden: int,
        d_expert: int,
        n_routed_experts: int,
        group_sum: int,
        group_count: int,
        block_token: int = 128,
        block_dhidden: int = 64,
        block_dexpert: int = 128,
        block_dhidden_step2: int = 128,
        block_dexpert_step2: int = 64,
        threads: int = 256,
        num_stages: int = 1,
        backend: str = "tilelang",
    ):
        self.d_hidden = d_hidden
        self.d_expert = d_expert
        self.n_routed_experts = n_routed_experts
        self.group_sum = group_sum
        self.group_count = group_count
        self.block_token = block_token
        self.block_dhidden = block_dhidden
        self.block_dexpert = block_dexpert
        self.block_dhidden_step2 = block_dhidden_step2
        self.block_dexpert_step2 = block_dexpert_step2
        self.threads = threads
        self.num_stages = num_stages
        self.backend = backend
        schedule = self._select_schedule(
            d_hidden,
            d_expert,
            n_routed_experts,
            block_dhidden,
            block_dexpert,
            block_dhidden_step2,
            block_dexpert_step2,
        )
        self.use_grid_transpose_step1 = bool(schedule["use_grid_transpose_step1"])
        self.use_grid_transpose_step2 = bool(schedule["use_grid_transpose_step2"])
        self.use_step1_input_prefetch = bool(schedule["use_step1_input_prefetch"])
        self.use_step1_prefetch_before_barrier = bool(schedule["use_step1_prefetch_before_barrier"])
        self.use_step2_input_prefetch = bool(schedule["use_step2_input_prefetch"])
        self.use_step2_full_b_pingpong = bool(schedule["use_step2_full_b_pingpong"])

        self.impl = moe_forward_tilelang_routed(
            d_hidden=d_hidden,
            d_expert=d_expert,
            n_routed_experts=n_routed_experts,
            group_sum=group_sum,
            group_count=group_count,
            block_token=block_token,
            block_dhidden_step1=int(schedule["block_dhidden_step1"]),
            block_dexpert_step1=int(schedule["block_dexpert_step1"]),
            block_dhidden_step2=int(schedule["block_dhidden_step2"]),
            block_dexpert_step2=int(schedule["block_dexpert_step2"]),
            threads=threads,
            num_stages=num_stages,
            use_grid_transpose_step1=self.use_grid_transpose_step1,
            use_grid_transpose_step2=self.use_grid_transpose_step2,
            use_step1_input_prefetch=self.use_step1_input_prefetch,
            use_step1_prefetch_before_barrier=self.use_step1_prefetch_before_barrier,
            use_step2_input_prefetch=self.use_step2_input_prefetch,
            use_step2_full_b_pingpong=self.use_step2_full_b_pingpong,
        )

    def __call__(
        self,
        input,
        routed_expert_gate,
        routed_expert_up,
        routed_expert_down,
        routed_expert_weights,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx_for_bx,
        up_logits,
        output,
    ):
        return self.impl(
            input,
            routed_expert_gate,
            routed_expert_up,
            routed_expert_down,
            routed_expert_weights,
            group_sizes,
            group_offsets,
            group_padded_offsets,
            group_idx_for_bx,
            up_logits,
            output,
        )
