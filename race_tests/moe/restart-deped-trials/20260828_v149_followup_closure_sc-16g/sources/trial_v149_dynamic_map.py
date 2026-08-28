# UNNUMBERED TRIAL: v149 dynamic expert-rank mapping
# PARENT: v148 external-OJ SOTA / SHA256 1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840
# PRIMARY_CHANGE: preserve the v149 hybrid tiles while deriving short/long expert IDs from runtime group_sizes
# LOCAL_GATE: pending permuted-metadata correctness and AB/BA timing
# SAFETY: TileLang primitives only; no injection, async copy, compiler builtins, or cached results
import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


_KERNEL_CACHE = {}
_WORKSPACE_CACHE = {}
_INPUT_WORKSPACE_CACHE = {}
_CONSUMER_NATIVE_INPUT_WORKSPACE_CACHE = {}
_CONSUMER_NATIVE_INTERMEDIATE_WORKSPACE_CACHE = {}
_V088_WORKSPACE_CACHE = {}
_V088_INPUT_WORKSPACE_CACHE = {}


def _workspace(stacked_expert_tokens, intermediate, owner):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(intermediate),
        str(stacked_expert_tokens.dtype),
        owner,
    )
    buf = _WORKSPACE_CACHE.get(key)
    if buf is None:
        buf = torch.empty(
            (int(stacked_expert_tokens.shape[0]), int(intermediate)),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _WORKSPACE_CACHE[key] = buf
    return buf


def _input_workspace(stacked_expert_tokens, num_blocks_m, step1_k_tiles, owner):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(num_blocks_m),
        int(step1_k_tiles),
        str(stacked_expert_tokens.dtype),
        owner,
    )
    buf = _INPUT_WORKSPACE_CACHE.get(key)
    if buf is None:
        buf = torch.empty(
            (int(num_blocks_m), int(step1_k_tiles), 128, 64),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _INPUT_WORKSPACE_CACHE[key] = buf
    return buf


def _consumer_native_input_workspace(
    stacked_expert_tokens, num_blocks_m, step1_k_tiles, native_vecs, threads, owner
):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(num_blocks_m),
        int(step1_k_tiles),
        int(native_vecs),
        int(threads),
        str(stacked_expert_tokens.dtype),
        owner,
    )
    buf = _CONSUMER_NATIVE_INPUT_WORKSPACE_CACHE.get(key)
    if buf is None:
        # Four 128-bit vector slots per thread exactly match the physical
        # ordering of the M128/K64 MMA-A fragment.  The element count is the
        # same as D69A's [block, K64, M128, K64] workspace.
        buf = torch.empty(
            (
                int(num_blocks_m),
                int(step1_k_tiles),
                int(native_vecs),
                int(threads),
                8,
            ),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _CONSUMER_NATIVE_INPUT_WORKSPACE_CACHE[key] = buf
    return buf


def _consumer_native_intermediate_workspace(
    stacked_expert_tokens, num_blocks_m, step2_k_tiles, owner
):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(num_blocks_m),
        int(step2_k_tiles),
        str(stacked_expert_tokens.dtype),
        owner,
    )
    buf = _CONSUMER_NATIVE_INTERMEDIATE_WORKSPACE_CACHE.get(key)
    if buf is None:
        buf = torch.empty(
            (int(num_blocks_m), int(step2_k_tiles), 4, 256, 8),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _CONSUMER_NATIVE_INTERMEDIATE_WORKSPACE_CACHE[key] = buf
    return buf


def _v088_workspace(stacked_expert_tokens, intermediate):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(intermediate),
        str(stacked_expert_tokens.dtype),
    )
    buf = _V088_WORKSPACE_CACHE.get(key)
    if buf is None:
        buf = torch.empty(
            (int(stacked_expert_tokens.shape[0]), int(intermediate)),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _V088_WORKSPACE_CACHE[key] = buf
    return buf


def _v088_input_workspace(stacked_expert_tokens, num_blocks_m, step1_k_tiles):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(num_blocks_m),
        int(step1_k_tiles),
        str(stacked_expert_tokens.dtype),
    )
    buf = _V088_INPUT_WORKSPACE_CACHE.get(key)
    if buf is None:
        buf = torch.empty(
            (int(num_blocks_m), int(step1_k_tiles), 128, 64),
            device=stacked_expert_tokens.device,
            dtype=stacked_expert_tokens.dtype,
        )
        _V088_INPUT_WORKSPACE_CACHE[key] = buf
    return buf


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
    total_padded = int(stacked_expert_tokens.shape[0])
    total_valid = int(routed_expert_weights.shape[0])
    group_offsets_len = int(group_offsets.shape[0])
    group_padded_offsets_len = int(group_padded_offsets.shape[0])
    group_idx_len = int(group_idx_for_bx.shape[0])
    block_token = 128
    num_blocks_m = (total_padded + block_token - 1) // block_token
    step1_block_token = block_token
    step1_num_blocks_m = num_blocks_m

    block_dhidden_step1 = 64
    block_dexpert_step1 = 128
    block_dhidden_step2 = 128
    block_dexpert_step2 = 64
    use_grid_transpose_step1 = False
    use_grid_transpose_step2 = False
    use_step1_expert_grouped_grid = False
    use_step2_expert_grouped_grid = False
    use_step1_input_prefetch = False
    use_step1_prefetch_before_barrier = False
    use_step1_tail_pruning = False
    use_step2_tail_pruning = False
    use_step2_input_prefetch = False
    use_step2_half_interleave = False
    use_case2_consumer_native_input = False
    use_consumer_native_split_gate0 = False
    use_non_native_a_before_gate0 = False
    use_non_native_a_split_gate0 = False
    use_consumer_native_up_logits = False
    use_unpredicated_native_reads = False
    use_case1_poly_silu = False
    use_case3_hybrid_m192n64 = False

    if hidden == 3584 and intermediate == 1024:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True
    elif hidden == 2048 and intermediate == 8192 and num_experts == 16:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True
        use_step1_expert_grouped_grid = False
        use_step2_expert_grouped_grid = (
            total_valid == 2272
            and total_padded == 3072
            and num_blocks_m == 24
        )
        use_step2_half_interleave = use_step2_expert_grouped_grid
        use_step1_input_prefetch = True
        use_step1_prefetch_before_barrier = True
        use_step1_tail_pruning = True
        use_step2_input_prefetch = True
        use_case2_consumer_native_input = True
        use_non_native_a_before_gate0 = False
        use_consumer_native_up_logits = True
        use_unpredicated_native_reads = True
        use_case1_poly_silu = True
    elif hidden == 7168 and intermediate == 2048 and num_experts >= 32:
        if num_experts == 64:
            use_case3_hybrid_m192n64 = (
                total_padded == 12288
                and total_valid == 9088
                and num_blocks_m == 96
            )
        if use_case3_hybrid_m192n64:
            step1_block_token = 192
            step1_num_blocks_m = num_experts // 2
            block_dexpert_step1 = 64
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True
        use_step1_input_prefetch = True
        use_step1_prefetch_before_barrier = num_experts >= 32
        use_step1_tail_pruning = num_experts >= 32
        use_step2_tail_pruning = num_experts >= 32
        use_step2_input_prefetch = True
        use_step2_half_interleave = (
            (
                num_experts == 64
                and total_padded == 12288
                and total_valid == 9088
                and num_blocks_m == 96
            )
            or (
                num_experts == 32
                and total_padded == 6144
                and total_valid == 4544
                and num_blocks_m == 48
            )
        )
        use_case2_consumer_native_input = num_experts >= 32
        use_consumer_native_split_gate0 = False
        use_non_native_a_before_gate0 = False
        use_non_native_a_split_gate0 = False
        use_consumer_native_up_logits = num_experts >= 32
        use_case1_poly_silu = True
    elif hidden <= 4096 and intermediate <= 1024 and num_experts >= 4:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True

    key = (
        hidden,
        intermediate,
        num_experts,
        total_padded,
        total_valid,
        num_blocks_m,
        step1_num_blocks_m,
        group_offsets_len,
        group_padded_offsets_len,
        group_idx_len,
        step1_block_token,
        block_dhidden_step1,
        block_dexpert_step1,
        block_dhidden_step2,
        block_dexpert_step2,
        bool(use_grid_transpose_step1),
        bool(use_grid_transpose_step2),
        bool(use_step1_expert_grouped_grid),
        bool(use_step2_expert_grouped_grid),
        bool(use_step1_input_prefetch),
        bool(use_step1_prefetch_before_barrier),
        bool(use_step1_tail_pruning),
        bool(use_step2_tail_pruning),
        bool(use_step2_input_prefetch),
        bool(use_step2_half_interleave),
        bool(use_case2_consumer_native_input),
        bool(use_consumer_native_split_gate0),
        bool(use_non_native_a_before_gate0),
        bool(use_non_native_a_split_gate0),
        bool(use_consumer_native_up_logits),
        bool(use_unpredicated_native_reads),
    )
    kernel = _KERNEL_CACHE.get(key)

    if kernel is None:
        __metaclass__ = type

        def shared_16x32_to_local_64x8_layout_a(i, j):
            thread_id = i + 16 * (j // 8)
            local_id = j % 8
            return thread_id, local_id

        def thread_id_shared_access_64x8_to_16x32_layout_a(thread_id, local_id):
            i = thread_id % 16
            j = (thread_id // 16) * 8 + local_id
            return i, j

        class MinimalMacaMMA:
            WARP_SIZE = 64

            def __init__(
                self,
                block_row_warps=4,
                block_col_warps=1,
                warp_row_tiles=32,
                warp_col_tiles=128,
                chunk=64,
                k_pack=2,
                is_m_first=False,
                thread_var=None,
            ):
                self.block_row_warps = block_row_warps
                self.block_col_warps = block_col_warps
                self.warp_row_tiles = warp_row_tiles
                self.warp_col_tiles = warp_col_tiles
                self.chunk = chunk
                self.k_pack = k_pack
                self.is_m_first = is_m_first
                self.thread_var = thread_var
                self.micro_size_x = 16
                self.micro_size_y = 16
                self.micro_size_k = 16
                self.local_size_a = 4
                self.local_size_b = 4
                self.local_size_out = 4
                self.mma_suffix = "16x16x16f16"
                self.warp_rows = warp_row_tiles // self.micro_size_x
                self.warp_cols = warp_col_tiles // self.micro_size_y

            def get_thread_binding(self):
                if self.thread_var is None:
                    current_frame = T.KernelLaunchFrame.Current()
                    assert current_frame is not None
                    return current_frame.get_thread_binding()
                return self.thread_var

            def extract_thread_binding(self, thread_id, is_m_first=None):
                if is_m_first is None:
                    is_m_first = self.is_m_first
                if is_m_first:
                    lane_id = thread_id % self.WARP_SIZE
                    warp_n = (thread_id // self.WARP_SIZE) % self.block_col_warps
                    warp_m = (thread_id // (self.WARP_SIZE * self.block_col_warps)) % self.block_row_warps
                    return lane_id, warp_n, warp_m
                lane_id = thread_id % self.WARP_SIZE
                warp_m = (thread_id // self.WARP_SIZE) % self.block_row_warps
                warp_n = (thread_id // (self.WARP_SIZE * self.block_row_warps)) % self.block_col_warps
                return lane_id, warp_n, warp_m

            def get_ldmatrix_b_index_map(self):
                return thread_id_shared_access_64x8_to_16x32_layout_a

            def ldmatrix_b(self, b_local_buf, b_shared_buf, ki, rk=0, row_offset=0):
                warp_col_tiles = self.warp_col_tiles
                warp_cols = self.warp_cols
                chunk = self.chunk
                micro_size_y = self.micro_size_y
                micro_size_k = self.micro_size_k
                local_size_b = self.local_size_b
                k_pack = self.k_pack
                thread_binding = self.get_thread_binding()
                reverse_index_map = self.get_ldmatrix_b_index_map()

                @T.macro
                def warp_ldmatrix_b(
                    b_local_buf,
                    b_shared_buf,
                    ki,
                    thread_binding,
                    rk=0,
                    row_offset=0,
                ):
                    tx, warp_n, _ = self.extract_thread_binding(thread_binding)
                    for j in T.serial(warp_cols):
                        for local_id in T.vectorized(k_pack * local_size_b):
                            row, col = T.meta_var(reverse_index_map(tx, local_id))
                            l = warp_n * warp_col_tiles + j * micro_size_y
                            r = rk * chunk + ki * (k_pack * micro_size_k)
                            b_local_buf[j * k_pack * local_size_b + local_id] = b_shared_buf[
                                row_offset + l + row,
                                r + col,
                            ]

                return warp_ldmatrix_b(
                    b_local_buf,
                    b_shared_buf,
                    ki,
                    thread_binding,
                    rk,
                    row_offset,
                )

            def mma(self, a_local_buf, b_local_buf, c_local_buf, k_inner=0):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols
                local_size_a = self.local_size_a
                local_size_b = self.local_size_b
                local_size_out = self.local_size_out
                k_pack = self.k_pack
                a_local_stride = k_inner * warp_rows * k_pack * local_size_a
                b_local_stride = 0

                @T.macro
                def warp_mma(a_local_buf, b_local_buf, c_local_buf):
                    for kp, i, j in T.grid(k_pack, warp_rows, warp_cols):
                        T.tvm_mfma(
                            self.mma_suffix,
                            "row",
                            "row",
                            "float16x4",
                            "float16x4",
                            "float32x4",
                            b_local_buf.data,
                            (b_local_stride + (j * k_pack + kp) * local_size_b) // local_size_b,
                            a_local_buf.data,
                            (a_local_stride + (i * k_pack + kp) * local_size_a) // local_size_a,
                            c_local_buf.data,
                            (i * warp_cols * local_size_out + j * local_size_out) // local_size_out,
                            dtype="float32x4",
                        )

                return warp_mma(a_local_buf, b_local_buf, c_local_buf)

            def make_mma_load_layout(self, local_buf, matrix="A"):
                if self.block_row_warps == 6:
                    def forward_thread_m192(i, j):
                        return (
                            (i // 32) * self.WARP_SIZE
                            + i % 16
                            + 16 * ((j % 32) // 8)
                        )

                    def forward_index_m192(i, j):
                        return (
                            (j // 32) * 16
                            + ((i % 32) // 16) * 8
                            + j % 8
                        )

                    return T.Fragment(
                        local_buf.shape,
                        forward_thread_fn=forward_thread_m192,
                        forward_index_fn=forward_index_m192,
                    )

                def forward_thread(i, j):
                    lane_id, _ = shared_16x32_to_local_64x8_layout_a(i, j)
                    return lane_id

                def forward_index(i, j):
                    _, local_id = shared_16x32_to_local_64x8_layout_a(i, j)
                    return local_id

                base_fragment = T.Fragment(
                    [self.micro_size_x, self.micro_size_k * self.k_pack],
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )
                warp_fragment = base_fragment.repeat(
                    [self.warp_rows, self.chunk // (self.micro_size_k * self.k_pack)],
                    repeat_on_thread=False,
                    lower_dim_first=False,
                )
                return warp_fragment.repeat(
                    [self.block_row_warps, 1],
                    repeat_on_thread=True,
                    lower_dim_first=True,
                ).replicate(self.block_col_warps)

            def make_mma_store_layout(self, local_buf):
                if self.block_row_warps == 6:
                    def forward_thread_m192(i, j):
                        return (
                            (i // 32) * self.WARP_SIZE
                            + i % 16
                            + 16 * ((j % 16) // 4)
                        )

                    def forward_index_m192(i, j):
                        return (
                            ((i % 32) // 16)
                            * (self.warp_cols * self.local_size_out)
                            + (j // 16) * self.local_size_out
                            + j % self.local_size_out
                        )

                    return T.Fragment(
                        local_buf.shape,
                        forward_thread_fn=forward_thread_m192,
                        forward_index_fn=forward_index_m192,
                    )

                def forward_thread(i, j):
                    block_i = (i // self.micro_size_x) // self.warp_rows
                    block_j = (j // self.micro_size_y) // self.warp_cols
                    mma_i = i % self.micro_size_x
                    mma_j = j % self.micro_size_y
                    lane_id = mma_i + (mma_j // 4) * 16
                    if self.is_m_first:
                        return block_i * (self.block_col_warps * self.WARP_SIZE) + block_j * self.WARP_SIZE + lane_id
                    return block_j * (self.block_row_warps * self.WARP_SIZE) + block_i * self.WARP_SIZE + lane_id

                def forward_index(i, j):
                    warp_i = (i // self.micro_size_x) % self.warp_rows
                    warp_j = (j // self.micro_size_y) % self.warp_cols
                    mma_j = j % self.micro_size_y
                    local_id = mma_j % 4
                    return warp_i * (self.warp_cols * self.local_size_out) + warp_j * self.local_size_out + local_id

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

        @tilelang.jit(pass_configs={tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True})
        def make_kernel(
            hidden,
            intermediate,
            num_experts,
            total_padded,
            total_valid,
            num_blocks_m,
            step1_num_blocks_m,
            group_offsets_len,
            group_padded_offsets_len,
            group_idx_len,
            step1_block_token,
            block_dhidden_step1,
            block_dexpert_step1,
            block_dhidden_step2,
            block_dexpert_step2,
            use_grid_transpose_step1,
            use_grid_transpose_step2,
            use_step1_expert_grouped_grid,
            use_step2_expert_grouped_grid,
            use_step1_input_prefetch,
            use_step1_prefetch_before_barrier,
            use_step1_tail_pruning,
            use_step2_tail_pruning,
            use_step2_input_prefetch,
            use_step2_half_interleave,
            use_case2_consumer_native_input,
            use_consumer_native_split_gate0,
            use_non_native_a_before_gate0,
            use_non_native_a_split_gate0,
            use_consumer_native_up_logits,
            use_unpredicated_native_reads,
        ):
            scale = 1.44269504
            dtype = T.float16
            accum_dtype = T.float32
            threads = 256
            step1_threads = (
                256
                if step1_block_token == 192 and block_dexpert_step1 == 64
                else step1_block_token * 2
            )
            step1_row_warps = (
                4
                if step1_block_token == 192 and block_dexpert_step1 == 64
                else step1_block_token // 32
            )
            step1_warp_row_tiles = step1_block_token // step1_row_warps
            step1_native_row_repeats = step1_warp_row_tiles // 16
            step1_native_vecs = (
                step1_block_token * block_dhidden_step1 // (step1_threads * 8)
            )
            num_stages = 1
            block_token = 128
            input_prepack_cols = 128 if step1_block_token == 192 else 256

            step1_mma = MinimalMacaMMA(
                block_row_warps=step1_row_warps,
                block_col_warps=1,
                warp_row_tiles=step1_warp_row_tiles,
                warp_col_tiles=block_dexpert_step1,
                chunk=block_dhidden_step1,
                k_pack=2,
            )
            short_block_dexpert = 128
            short_mma = MinimalMacaMMA(
                block_row_warps=4,
                block_col_warps=1,
                warp_row_tiles=32,
                warp_col_tiles=short_block_dexpert,
                chunk=block_dhidden_step1,
                k_pack=2,
            )
            step2_mma = MinimalMacaMMA(
                block_row_warps=4,
                block_col_warps=1,
                warp_row_tiles=block_token // 4,
                warp_col_tiles=block_dhidden_step2,
                chunk=block_dexpert_step2,
                k_pack=2,
            )

            step1_k_tiles = (hidden + block_dhidden_step1 - 1) // block_dhidden_step1
            input_shape = (total_padded, hidden)
            if use_case2_consumer_native_input:
                tiled_input_shape = (
                    step1_num_blocks_m,
                    step1_k_tiles,
                    step1_native_vecs,
                    step1_threads,
                    8,
                )
            else:
                tiled_input_shape = (
                    num_blocks_m,
                    step1_k_tiles,
                    block_token,
                    block_dhidden_step1,
                )
            short_input_shape = (
                (
                    num_experts // 2,
                    step1_k_tiles,
                    4,
                    threads,
                    8,
                )
                if use_case3_hybrid_m192n64
                else tiled_input_shape
            )
            step2_k_tiles = (intermediate + block_dexpert_step2 - 1) // block_dexpert_step2
            if use_consumer_native_up_logits:
                intermediate_shape = (
                    num_blocks_m,
                    step2_k_tiles,
                    4,
                    threads,
                    8,
                )
            else:
                intermediate_shape = (total_padded, intermediate + 128)
            gate_shape = (num_experts, intermediate, hidden)
            up_shape = (num_experts, intermediate, hidden)
            down_shape = (num_experts, hidden, intermediate)
            step1_col_tiles = (intermediate + block_dexpert_step1 - 1) // block_dexpert_step1
            step2_output_tile = 2 * block_dhidden_step2
            step2_col_tiles = (hidden + step2_output_tile - 1) // step2_output_tile
            step1_grid_x = (
                step1_col_tiles if use_grid_transpose_step1 else step1_num_blocks_m
            )
            step1_grid_y = (
                step1_num_blocks_m if use_grid_transpose_step1 else step1_col_tiles
            )
            short_step1_col_tiles = (
                intermediate + short_block_dexpert - 1
            ) // short_block_dexpert
            short_step1_grid_x = short_step1_col_tiles
            short_step1_grid_y = num_experts // 2
            step2_grid_x = step2_col_tiles if use_grid_transpose_step2 else num_blocks_m
            step2_grid_y = num_blocks_m if use_grid_transpose_step2 else step2_col_tiles

            @T.macro
            def find_short_expert(sizes, target_rank, result):
                scan_rank = T.alloc_local((1,), dtype=T.int32)
                scan_rank[0] = 0
                result[0] = 0
                for scan_expert in T.serial(num_experts):
                    if sizes[scan_expert] <= block_token:
                        if scan_rank[0] == target_rank:
                            result[0] = scan_expert
                        scan_rank[0] = scan_rank[0] + 1

            @T.macro
            def find_long_expert(sizes, target_rank, result):
                scan_rank = T.alloc_local((1,), dtype=T.int32)
                scan_rank[0] = 0
                result[0] = 0
                for scan_expert in T.serial(num_experts):
                    if sizes[scan_expert] > block_token:
                        if scan_rank[0] == target_rank:
                            result[0] = scan_expert
                        scan_rank[0] = scan_rank[0] + 1

            @T.macro
            def copy_step1_weight_half(
                weight,
                shared,
                copy_expert,
                global_row_start,
                global_col_start,
                shared_row_start,
            ):
                if step1_block_token == 192:
                    weight_thread = T.get_thread_binding()
                    if block_dexpert_step1 == 64:
                        weight_linear_vec = weight_thread
                        weight_row = weight_linear_vec // 8
                        weight_col = (weight_linear_vec % 8) * 8
                        for weight_elem in T.vectorized(8):
                            shared[
                                shared_row_start + weight_row,
                                weight_col + weight_elem,
                            ] = weight[
                                copy_expert,
                                global_row_start + weight_row,
                                global_col_start + weight_col + weight_elem,
                            ]
                    elif weight_thread < 256:
                        for weight_vec in T.serial(2):
                            weight_linear_vec = weight_thread * 2 + weight_vec
                            weight_row = weight_linear_vec // 8
                            weight_col = (weight_linear_vec % 8) * 8
                            for weight_elem in T.vectorized(8):
                                shared[
                                    shared_row_start + weight_row,
                                    weight_col + weight_elem,
                                ] = weight[
                                    copy_expert,
                                    global_row_start + weight_row,
                                    global_col_start + weight_col + weight_elem,
                                ]
                else:
                    T.copy(
                        weight[
                            copy_expert,
                            global_row_start : global_row_start + 64,
                            global_col_start : global_col_start + 64,
                        ],
                        shared[
                            shared_row_start : shared_row_start + 64,
                            0:64,
                        ],
                    )

            @T.prim_func
            def kernel(
                input_original: T.Tensor(input_shape, dtype),
                input: T.Tensor(tiled_input_shape, dtype),
                short_input: T.Tensor(short_input_shape, dtype),
                gate: T.Tensor(gate_shape, dtype),
                up: T.Tensor(up_shape, dtype),
                down: T.Tensor(down_shape, dtype),
                routed_weights: T.Tensor((total_valid,), T.float32),
                group_sizes: T.Tensor((num_experts,), T.int32),
                group_offsets: T.Tensor((group_offsets_len,), T.int32),
                group_padded_offsets: T.Tensor((group_padded_offsets_len,), T.int32),
                group_idx_for_bx: T.Tensor((group_idx_len,), T.int32),
                up_logits: T.Tensor(intermediate_shape, dtype),
                output: T.Tensor(input_shape, dtype),
            ):
                if use_case3_hybrid_m192n64:
                    with T.Kernel(
                        T.ceildiv(hidden, 256),
                        num_experts // 2,
                        threads=threads,
                    ) as (short_copy_col, short_copy_row):
                        short_copy_expert_local = T.alloc_local((1,), dtype=T.int32)
                        find_short_expert(
                            group_sizes, short_copy_row, short_copy_expert_local
                        )
                        short_copy_expert = short_copy_expert_local[0]
                        short_copy_padded_start = group_padded_offsets[
                            short_copy_expert
                        ]
                        if use_case2_consumer_native_input:
                            # A synchronous 64-KiB bridge lets T.copy read the
                            # original M128/N256 panel in row-major coalesced form.
                            # Consumer threads then write contiguous native slots.
                            # This kernel has no async operation; the CTA barrier
                            # is the complete producer/consumer hand-off.
                            short_copy_shared = T.alloc_shared((block_token, 256), dtype=dtype)
                            T.copy(
                                input_original[
                                    short_copy_padded_start : short_copy_padded_start
                                    + block_token,
                                    short_copy_col * 256 : (short_copy_col + 1) * 256,
                                ],
                                short_copy_shared,
                            )
                            T.sync_threads()
                            short_copy_thread = T.get_thread_binding()
                            for short_copy_k_sub in T.serial(4):
                                short_copy_k_tile = short_copy_col * 4 + short_copy_k_sub
                                for short_native_vec in T.serial(4):
                                    short_source_row_in_block = (
                                        (short_copy_thread // 64) * 32
                                        + (short_native_vec % 2) * 16
                                        + short_copy_thread % 16
                                    )
                                    short_source_col_in_tile = (
                                        (short_native_vec // 2) * 32
                                        + ((short_copy_thread % 64) // 16) * 8
                                    )
                                    for short_native_elem in T.vectorized(8):
                                        short_input[
                                            short_copy_row,
                                            short_copy_k_tile,
                                            short_native_vec,
                                            short_copy_thread,
                                            short_native_elem,
                                        ] = short_copy_shared[
                                            short_source_row_in_block,
                                            short_copy_k_sub * block_dhidden_step1
                                            + short_source_col_in_tile
                                            + short_native_elem,
                                        ]
                        else:
                            for short_i_copy, short_j_copy in T.Parallel(block_token, 256):
                                short_source_row = (
                                    short_copy_padded_start + short_i_copy
                                )
                                short_source_col = short_copy_col * 256 + short_j_copy
                                if short_source_row < total_padded and short_source_col < hidden:
                                    short_input[
                                        short_copy_row,
                                        short_source_col // block_dhidden_step1,
                                        short_i_copy,
                                        short_source_col % block_dhidden_step1,
                                    ] = input_original[
                                        short_source_row, short_source_col
                                    ]

                    with T.Kernel(short_step1_grid_x, short_step1_grid_y, threads=threads) as (short_pid0, short_pid1):
                        if use_step1_expert_grouped_grid:
                            short_cta_mapping = T.alloc_local((2,), dtype=T.int32)
                            if short_pid1 < num_experts // 2:
                                short_cta_mapping[0] = short_pid1
                                short_cta_mapping[1] = short_pid0
                            else:
                                short_cta_mapping[0] = (short_pid1 // 2) * 2 + short_pid0 % 2
                                short_cta_mapping[1] = (
                                    (short_pid1 % 2) * (short_step1_col_tiles // 2) + short_pid0 // 2
                                )
                            short_bx = short_cta_mapping[0]
                            short_by = short_cta_mapping[1]
                        else:
                            short_bx = short_pid1 if use_grid_transpose_step1 else short_pid0
                            short_by = short_pid0 if use_grid_transpose_step1 else short_pid1
                        short_input_shared = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
                        short_input_prefetch = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
                        short_gate_shared = T.alloc_shared((short_block_dexpert, block_dhidden_step1), dtype=dtype)
                        short_up_shared = T.alloc_shared((short_block_dexpert, block_dhidden_step1), dtype=dtype)
                        short_gate_local = T.alloc_fragment((block_token, short_block_dexpert), dtype=accum_dtype)
                        short_up_local = T.alloc_fragment((block_token, short_block_dexpert), dtype=accum_dtype)
                        short_weight_local = T.alloc_local((short_mma.warp_cols * short_mma.k_pack * short_mma.local_size_b), dtype=dtype)

                        T.annotate_layout(
                            {
                                short_input_shared: short_mma.make_mma_load_layout(short_input_shared, matrix="A"),
                                short_input_prefetch: short_mma.make_mma_load_layout(short_input_prefetch, matrix="A"),
                                short_gate_shared: make_swizzled_layout(short_gate_shared),
                                short_up_shared: make_swizzled_layout(short_up_shared),
                                short_gate_local: short_mma.make_mma_store_layout(short_gate_local),
                                short_up_local: short_mma.make_mma_store_layout(short_up_local),
                            }
                        )
                        T.use_swizzle(10, enable=False)

                        short_expert_local = T.alloc_local((1,), dtype=T.int32)
                        find_short_expert(group_sizes, short_bx, short_expert_local)
                        short_expert_id = short_expert_local[0]
                        T.assume(0 <= short_expert_id)
                        T.assume(short_expert_id < num_experts)
                        short_group_size = group_sizes[short_expert_id]
                        short_padded_start = group_padded_offsets[short_expert_id]
                        short_block_start = short_padded_start
                        short_token_offset = 0
                        short_actual_rows = T.max(0, T.min(block_token, short_group_size - short_token_offset))
                        if use_case2_consumer_native_input:
                            short_native_thread = T.get_thread_binding()

                        T.clear(short_gate_local)
                        T.clear(short_up_local)
                        if use_step1_input_prefetch and use_step1_tail_pruning:
                            T.clear(short_input_prefetch)
                        if use_step1_input_prefetch:
                            if use_case2_consumer_native_input:
                                for short_native_vec in T.serial(4):
                                    short_native_row = (
                                        (short_native_thread // 64) * 32
                                        + (short_native_vec % 2) * 16
                                        + short_native_thread % 16
                                    )
                                    short_native_col = (
                                        (short_native_vec // 2) * 32
                                        + ((short_native_thread % 64) // 16) * 8
                                    )
                                    for short_native_elem in T.vectorized(8):
                                        short_input_shared[short_native_row, short_native_col + short_native_elem] = short_input[
                                            short_bx, 0, short_native_vec, short_native_thread, short_native_elem
                                        ]
                            else:
                                T.copy(
                                    short_input[short_bx, 0, 0:block_token, 0:block_dhidden_step1],
                                    short_input_shared,
                                )
                            for short_k_pair in T.serial(step1_k_tiles // 2):
                                short_k_even = short_k_pair * 2
                                short_k_odd = short_k_even + 1
                                if use_step1_prefetch_before_barrier:
                                    if use_case2_consumer_native_input:
                                        for short_native_vec in T.serial(4):
                                            short_native_row = (
                                                (short_native_thread // 64) * 32
                                                + (short_native_vec % 2) * 16
                                                + short_native_thread % 16
                                            )
                                            short_native_col = (
                                                (short_native_vec // 2) * 32
                                                + ((short_native_thread % 64) // 16) * 8
                                            )
                                            if (
                                                short_native_row < short_actual_rows
                                                and (
                                                    not use_consumer_native_split_gate0
                                                    or short_native_row < block_token // 2
                                                )
                                            ):
                                                for short_native_elem in T.vectorized(8):
                                                    short_input_prefetch[
                                                        short_native_row, short_native_col + short_native_elem
                                                    ] = short_input[
                                                        short_bx,
                                                        short_k_odd,
                                                        short_native_vec,
                                                        short_native_thread,
                                                        short_native_elem,
                                                    ]
                                    if use_non_native_a_before_gate0:
                                        if use_non_native_a_split_gate0:
                                            for short_i_x_odd, short_j_x_odd in T.Parallel(
                                                block_token // 2, block_dhidden_step1
                                            ):
                                                if short_i_x_odd < short_actual_rows:
                                                    short_input_prefetch[short_i_x_odd, short_j_x_odd] = short_input[
                                                        short_bx, short_k_odd, short_i_x_odd, short_j_x_odd
                                                    ]
                                        else:
                                            for short_i_x_odd, short_j_x_odd in T.Parallel(
                                                block_token, block_dhidden_step1
                                            ):
                                                if short_i_x_odd < short_actual_rows:
                                                    short_input_prefetch[short_i_x_odd, short_j_x_odd] = short_input[
                                                        short_bx, short_k_odd, short_i_x_odd, short_j_x_odd
                                                    ]
                                    T.copy(
                                        gate[
                                            short_expert_id,
                                            short_by * short_block_dexpert : short_by * short_block_dexpert + short_block_dexpert // 2,
                                            short_k_even * block_dhidden_step1 : (short_k_even + 1) * block_dhidden_step1,
                                        ],
                                        short_gate_shared[0 : short_block_dexpert // 2, 0:block_dhidden_step1],
                                    )
                                    if (
                                        use_case2_consumer_native_input
                                        and use_consumer_native_split_gate0
                                    ):
                                        for short_native_vec in T.serial(4):
                                            short_native_row = (
                                                (short_native_thread // 64) * 32
                                                + (short_native_vec % 2) * 16
                                                + short_native_thread % 16
                                            )
                                            short_native_col = (
                                                (short_native_vec // 2) * 32
                                                + ((short_native_thread % 64) // 16) * 8
                                            )
                                            if (
                                                short_native_row < short_actual_rows
                                                and short_native_row >= block_token // 2
                                            ):
                                                for short_native_elem in T.vectorized(8):
                                                    short_input_prefetch[
                                                        short_native_row, short_native_col + short_native_elem
                                                    ] = short_input[
                                                        short_bx,
                                                        short_k_odd,
                                                        short_native_vec,
                                                        short_native_thread,
                                                        short_native_elem,
                                                    ]
                                    if (
                                        use_non_native_a_before_gate0
                                        and use_non_native_a_split_gate0
                                    ):
                                        for short_i_x_odd_hi, short_j_x_odd_hi in T.Parallel(
                                            block_token // 2, block_dhidden_step1
                                        ):
                                            if block_token // 2 + short_i_x_odd_hi < short_actual_rows:
                                                short_input_prefetch[
                                                    block_token // 2 + short_i_x_odd_hi, short_j_x_odd_hi
                                                ] = short_input[
                                                    short_bx,
                                                    short_k_odd,
                                                    block_token // 2 + short_i_x_odd_hi,
                                                    short_j_x_odd_hi,
                                                ]
                                    if not use_step1_tail_pruning:
                                        T.copy(
                                            short_input[
                                                short_bx,
                                                short_k_odd,
                                                0 : block_token // 2,
                                                0:block_dhidden_step1,
                                            ],
                                            short_input_prefetch[0 : block_token // 2, 0:block_dhidden_step1],
                                        )
                                    if (
                                        use_step1_tail_pruning
                                        and not use_non_native_a_before_gate0
                                    ):
                                        for short_i_x_odd, short_j_x_odd in T.Parallel(
                                            block_token, block_dhidden_step1
                                        ):
                                            if short_i_x_odd < short_actual_rows:
                                                if not use_case2_consumer_native_input:
                                                    short_input_prefetch[short_i_x_odd, short_j_x_odd] = short_input[
                                                        short_bx, short_k_odd, short_i_x_odd, short_j_x_odd
                                                    ]
                                    T.copy(
                                        gate[
                                            short_expert_id,
                                            short_by * short_block_dexpert + short_block_dexpert // 2 : (short_by + 1) * short_block_dexpert,
                                            short_k_even * block_dhidden_step1 : (short_k_even + 1) * block_dhidden_step1,
                                        ],
                                        short_gate_shared[short_block_dexpert // 2 : short_block_dexpert, 0:block_dhidden_step1],
                                    )
                                    T.copy(
                                        up[
                                            short_expert_id,
                                            short_by * short_block_dexpert : short_by * short_block_dexpert + short_block_dexpert // 2,
                                            short_k_even * block_dhidden_step1 : (short_k_even + 1) * block_dhidden_step1,
                                        ],
                                        short_up_shared[0 : short_block_dexpert // 2, 0:block_dhidden_step1],
                                    )
                                    if not use_step1_tail_pruning:
                                        T.copy(
                                            short_input[
                                                short_bx,
                                                short_k_odd,
                                                block_token // 2 : block_token,
                                                0:block_dhidden_step1,
                                            ],
                                            short_input_prefetch[block_token // 2 : block_token, 0:block_dhidden_step1],
                                        )
                                    T.copy(
                                        up[
                                            short_expert_id,
                                            short_by * short_block_dexpert + short_block_dexpert // 2 : (short_by + 1) * short_block_dexpert,
                                            short_k_even * block_dhidden_step1 : (short_k_even + 1) * block_dhidden_step1,
                                        ],
                                        short_up_shared[short_block_dexpert // 2 : short_block_dexpert, 0:block_dhidden_step1],
                                    )
                                else:
                                    T.copy(
                                        gate[
                                            short_expert_id,
                                            short_by * short_block_dexpert : (short_by + 1) * short_block_dexpert,
                                            short_k_even * block_dhidden_step1 : (short_k_even + 1) * block_dhidden_step1,
                                        ],
                                        short_gate_shared,
                                    )
                                    T.copy(
                                        up[
                                            short_expert_id,
                                            short_by * short_block_dexpert : (short_by + 1) * short_block_dexpert,
                                            short_k_even * block_dhidden_step1 : (short_k_even + 1) * block_dhidden_step1,
                                        ],
                                        short_up_shared,
                                    )
                                T.sync_threads()
                                if not use_step1_prefetch_before_barrier:
                                    if use_step1_tail_pruning:
                                        for short_i_x_odd, short_j_x_odd in T.Parallel(
                                            block_token, block_dhidden_step1
                                        ):
                                            if short_i_x_odd < short_actual_rows:
                                                if not use_case2_consumer_native_input:
                                                    short_input_prefetch[short_i_x_odd, short_j_x_odd] = short_input[
                                                        short_bx, short_k_odd, short_i_x_odd, short_j_x_odd
                                                    ]
                                        if use_case2_consumer_native_input:
                                            for short_native_vec in T.serial(4):
                                                short_native_row = (
                                                    (short_native_thread // 64) * 32
                                                    + (short_native_vec % 2) * 16
                                                    + short_native_thread % 16
                                                )
                                                short_native_col = (
                                                    (short_native_vec // 2) * 32
                                                    + ((short_native_thread % 64) // 16) * 8
                                                )
                                                if short_native_row < short_actual_rows:
                                                    for short_native_elem in T.vectorized(8):
                                                        short_input_prefetch[
                                                            short_native_row, short_native_col + short_native_elem
                                                        ] = short_input[
                                                            short_bx,
                                                            short_k_odd,
                                                            short_native_vec,
                                                            short_native_thread,
                                                            short_native_elem,
                                                        ]
                                    else:
                                        T.copy(
                                            short_input[
                                                short_bx,
                                                short_k_odd,
                                                0:block_token,
                                                0:block_dhidden_step1,
                                            ],
                                            short_input_prefetch,
                                        )
                                for short_ki in T.serial(0, block_dhidden_step1 // 32):
                                    if not use_step1_tail_pruning or (
                                        ((T.get_thread_binding() // 64) % 4) * 32
                                        < short_actual_rows
                                    ):
                                        short_mma.ldmatrix_b(short_weight_local, short_gate_shared, short_ki)
                                        short_mma.mma(short_input_shared, short_weight_local, short_gate_local, short_ki)
                                        short_mma.ldmatrix_b(short_weight_local, short_up_shared, short_ki)
                                        short_mma.mma(short_input_shared, short_weight_local, short_up_local, short_ki)
                                T.sync_threads()
                                if use_step1_prefetch_before_barrier:
                                    if (
                                        use_case2_consumer_native_input
                                        and short_k_pair + 1 < step1_k_tiles // 2
                                    ):
                                        for short_native_vec in T.serial(4):
                                            short_native_row = (
                                                (short_native_thread // 64) * 32
                                                + (short_native_vec % 2) * 16
                                                + short_native_thread % 16
                                            )
                                            short_native_col = (
                                                (short_native_vec // 2) * 32
                                                + ((short_native_thread % 64) // 16) * 8
                                            )
                                            if (
                                                short_native_row < short_actual_rows
                                                and (
                                                    not use_consumer_native_split_gate0
                                                    or short_native_row < block_token // 2
                                                )
                                            ):
                                                for short_native_elem in T.vectorized(8):
                                                    short_input_shared[
                                                        short_native_row, short_native_col + short_native_elem
                                                    ] = short_input[
                                                        short_bx,
                                                        short_k_odd + 1,
                                                        short_native_vec,
                                                        short_native_thread,
                                                        short_native_elem,
                                                    ]
                                    if (
                                        use_non_native_a_before_gate0
                                        and short_k_pair + 1 < step1_k_tiles // 2
                                    ):
                                        if use_non_native_a_split_gate0:
                                            for short_i_x_even, short_j_x_even in T.Parallel(
                                                block_token // 2, block_dhidden_step1
                                            ):
                                                if short_i_x_even < short_actual_rows:
                                                    short_input_shared[short_i_x_even, short_j_x_even] = short_input[
                                                        short_bx, short_k_odd + 1, short_i_x_even, short_j_x_even
                                                    ]
                                        else:
                                            for short_i_x_even, short_j_x_even in T.Parallel(
                                                block_token, block_dhidden_step1
                                            ):
                                                if short_i_x_even < short_actual_rows:
                                                    short_input_shared[short_i_x_even, short_j_x_even] = short_input[
                                                        short_bx, short_k_odd + 1, short_i_x_even, short_j_x_even
                                                    ]
                                    T.copy(
                                        gate[
                                            short_expert_id,
                                            short_by * short_block_dexpert : short_by * short_block_dexpert + short_block_dexpert // 2,
                                            short_k_odd * block_dhidden_step1 : (short_k_odd + 1) * block_dhidden_step1,
                                        ],
                                        short_gate_shared[0 : short_block_dexpert // 2, 0:block_dhidden_step1],
                                    )
                                    if (
                                        use_case2_consumer_native_input
                                        and use_consumer_native_split_gate0
                                        and short_k_pair + 1 < step1_k_tiles // 2
                                    ):
                                        for short_native_vec in T.serial(4):
                                            short_native_row = (
                                                (short_native_thread // 64) * 32
                                                + (short_native_vec % 2) * 16
                                                + short_native_thread % 16
                                            )
                                            short_native_col = (
                                                (short_native_vec // 2) * 32
                                                + ((short_native_thread % 64) // 16) * 8
                                            )
                                            if (
                                                short_native_row < short_actual_rows
                                                and short_native_row >= block_token // 2
                                            ):
                                                for short_native_elem in T.vectorized(8):
                                                    short_input_shared[
                                                        short_native_row, short_native_col + short_native_elem
                                                    ] = short_input[
                                                        short_bx,
                                                        short_k_odd + 1,
                                                        short_native_vec,
                                                        short_native_thread,
                                                        short_native_elem,
                                                    ]
                                    if (
                                        use_non_native_a_before_gate0
                                        and use_non_native_a_split_gate0
                                        and short_k_pair + 1 < step1_k_tiles // 2
                                    ):
                                        for short_i_x_even_hi, short_j_x_even_hi in T.Parallel(
                                            block_token // 2, block_dhidden_step1
                                        ):
                                            if block_token // 2 + short_i_x_even_hi < short_actual_rows:
                                                short_input_shared[
                                                    block_token // 2 + short_i_x_even_hi, short_j_x_even_hi
                                                ] = short_input[
                                                    short_bx,
                                                    short_k_odd + 1,
                                                    block_token // 2 + short_i_x_even_hi,
                                                    short_j_x_even_hi,
                                                ]
                                    if short_k_pair + 1 < step1_k_tiles // 2:
                                        short_k_next_even = short_k_odd + 1
                                        if not use_step1_tail_pruning:
                                            T.copy(
                                                short_input[
                                                    short_bx,
                                                    short_k_next_even,
                                                    0 : block_token // 2,
                                                    0:block_dhidden_step1,
                                                ],
                                                short_input_shared[0 : block_token // 2, 0:block_dhidden_step1],
                                            )
                                        if (
                                            use_step1_tail_pruning
                                            and not use_non_native_a_before_gate0
                                        ):
                                            for short_i_x_even, short_j_x_even in T.Parallel(
                                                block_token, block_dhidden_step1
                                            ):
                                                if short_i_x_even < short_actual_rows:
                                                    if not use_case2_consumer_native_input:
                                                        short_input_shared[short_i_x_even, short_j_x_even] = short_input[
                                                            short_bx, short_k_odd + 1, short_i_x_even, short_j_x_even
                                                        ]
                                    T.copy(
                                        gate[
                                            short_expert_id,
                                            short_by * short_block_dexpert + short_block_dexpert // 2 : (short_by + 1) * short_block_dexpert,
                                            short_k_odd * block_dhidden_step1 : (short_k_odd + 1) * block_dhidden_step1,
                                        ],
                                        short_gate_shared[short_block_dexpert // 2 : short_block_dexpert, 0:block_dhidden_step1],
                                    )
                                    T.copy(
                                        up[
                                            short_expert_id,
                                            short_by * short_block_dexpert : short_by * short_block_dexpert + short_block_dexpert // 2,
                                            short_k_odd * block_dhidden_step1 : (short_k_odd + 1) * block_dhidden_step1,
                                        ],
                                        short_up_shared[0 : short_block_dexpert // 2, 0:block_dhidden_step1],
                                    )
                                    if short_k_pair + 1 < step1_k_tiles // 2:
                                        if not use_step1_tail_pruning:
                                            T.copy(
                                                short_input[
                                                    short_bx,
                                                    short_k_odd + 1,
                                                    block_token // 2 : block_token,
                                                    0:block_dhidden_step1,
                                                ],
                                                short_input_shared[block_token // 2 : block_token, 0:block_dhidden_step1],
                                            )
                                    T.copy(
                                        up[
                                            short_expert_id,
                                            short_by * short_block_dexpert + short_block_dexpert // 2 : (short_by + 1) * short_block_dexpert,
                                            short_k_odd * block_dhidden_step1 : (short_k_odd + 1) * block_dhidden_step1,
                                        ],
                                        short_up_shared[short_block_dexpert // 2 : short_block_dexpert, 0:block_dhidden_step1],
                                    )
                                else:
                                    T.copy(
                                        gate[
                                            short_expert_id,
                                            short_by * short_block_dexpert : (short_by + 1) * short_block_dexpert,
                                            short_k_odd * block_dhidden_step1 : (short_k_odd + 1) * block_dhidden_step1,
                                        ],
                                        short_gate_shared,
                                    )
                                    T.copy(
                                        up[
                                            short_expert_id,
                                            short_by * short_block_dexpert : (short_by + 1) * short_block_dexpert,
                                            short_k_odd * block_dhidden_step1 : (short_k_odd + 1) * block_dhidden_step1,
                                        ],
                                        short_up_shared,
                                    )
                                T.sync_threads()
                                if not use_step1_prefetch_before_barrier and short_k_pair + 1 < step1_k_tiles // 2:
                                    short_k_next_even = short_k_odd + 1
                                    if use_step1_tail_pruning:
                                        for short_i_x_even, short_j_x_even in T.Parallel(
                                            block_token, block_dhidden_step1
                                        ):
                                            if short_i_x_even < short_actual_rows:
                                                if not use_case2_consumer_native_input:
                                                    short_input_shared[short_i_x_even, short_j_x_even] = short_input[
                                                        short_bx, short_k_next_even, short_i_x_even, short_j_x_even
                                                    ]
                                if (
                                    use_case2_consumer_native_input
                                    and not use_step1_prefetch_before_barrier
                                    and short_k_pair + 1 < step1_k_tiles // 2
                                ):
                                    for short_native_vec in T.serial(4):
                                        short_native_row = (
                                            (short_native_thread // 64) * 32
                                            + (short_native_vec % 2) * 16
                                            + short_native_thread % 16
                                        )
                                        short_native_col = (
                                            (short_native_vec // 2) * 32
                                            + ((short_native_thread % 64) // 16) * 8
                                        )
                                        if short_native_row < short_actual_rows:
                                            for short_native_elem in T.vectorized(8):
                                                short_input_shared[
                                                    short_native_row, short_native_col + short_native_elem
                                                ] = short_input[
                                                    short_bx,
                                                    short_k_next_even,
                                                    short_native_vec,
                                                    short_native_thread,
                                                    short_native_elem,
                                                ]
                                    else:
                                        T.copy(
                                            short_input[
                                                short_bx,
                                                short_k_next_even,
                                                0:block_token,
                                                0:block_dhidden_step1,
                                            ],
                                            short_input_shared,
                                        )
                                for short_ki in T.serial(0, block_dhidden_step1 // 32):
                                    if not use_step1_tail_pruning or (
                                        ((T.get_thread_binding() // 64) % 4) * 32
                                        < short_actual_rows
                                    ):
                                        short_mma.ldmatrix_b(short_weight_local, short_gate_shared, short_ki)
                                        short_mma.mma(short_input_prefetch, short_weight_local, short_gate_local, short_ki)
                                        short_mma.ldmatrix_b(short_weight_local, short_up_shared, short_ki)
                                        short_mma.mma(short_input_prefetch, short_weight_local, short_up_local, short_ki)
                                if short_k_pair + 1 < step1_k_tiles // 2:
                                    T.sync_threads()
                        else:
                            for short_k in T.Pipelined(T.ceildiv(hidden, block_dhidden_step1), num_stages=num_stages):
                                T.copy(
                                    short_input[
                                        short_bx,
                                        short_k,
                                        0:block_token,
                                        0:block_dhidden_step1,
                                    ],
                                    short_input_shared,
                                )
                                T.copy(
                                    gate[
                                        short_expert_id,
                                        short_by * short_block_dexpert : (short_by + 1) * short_block_dexpert,
                                        short_k * block_dhidden_step1 : (short_k + 1) * block_dhidden_step1,
                                    ],
                                    short_gate_shared,
                                )
                                T.copy(
                                    up[
                                        short_expert_id,
                                        short_by * short_block_dexpert : (short_by + 1) * short_block_dexpert,
                                        short_k * block_dhidden_step1 : (short_k + 1) * block_dhidden_step1,
                                    ],
                                    short_up_shared,
                                )
                                for short_ki in T.serial(0, block_dhidden_step1 // 32):
                                    short_mma.ldmatrix_b(short_weight_local, short_gate_shared, short_ki)
                                    short_mma.mma(short_input_shared, short_weight_local, short_gate_local, short_ki)
                                    short_mma.ldmatrix_b(short_weight_local, short_up_shared, short_ki)
                                    short_mma.mma(short_input_shared, short_weight_local, short_up_local, short_ki)

                        for short_i, short_j in T.Parallel(block_token, short_block_dexpert):
                            if use_case1_poly_silu:
                                short_silu_x = short_gate_local[short_i, short_j]
                                short_silu_clamped = T.max(-5.5, T.min(5.5, short_silu_x))
                                short_silu_z = short_silu_clamped * short_silu_clamped
                                short_silu_p7 = -2.6456580608e-05 + short_silu_z * 3.05556014903e-07
                                short_silu_p5 = 0.000907175546257 + short_silu_z * short_silu_p7
                                short_silu_p3 = -0.0168032280723 + short_silu_z * short_silu_p5
                                short_silu_p1 = 0.245556537144 + short_silu_z * short_silu_p3
                                short_gate_local[short_i, short_j] = short_silu_x * (
                                    0.5 + short_silu_clamped * short_silu_p1
                                )
                            else:
                                short_gate_local[short_i, short_j] = short_gate_local[short_i, short_j] * (1.0 / (1.0 + T.exp2(-short_gate_local[short_i, short_j] * scale)))
                            if short_i < short_actual_rows:
                                if use_consumer_native_up_logits:
                                    short_intermediate_col = short_by * short_block_dexpert + short_j
                                    short_native_col = short_intermediate_col % block_dexpert_step2
                                    short_intermediate_owner_thread = (
                                        (short_i // 32) * 64
                                        + ((short_native_col % 32) // 8) * 16
                                        + short_i % 16
                                    )
                                    short_native_vec = (
                                        (short_native_col // 32) * 2
                                        + (short_i % 32) // 16
                                    )
                                    up_logits[
                                        short_padded_start // block_token,
                                        short_intermediate_col // block_dexpert_step2,
                                        short_native_vec,
                                        short_intermediate_owner_thread,
                                        short_native_col % 8,
                                    ] = short_up_local[short_i, short_j] * short_gate_local[short_i, short_j]
                                else:
                                    up_logits[short_block_start + short_i, short_by * short_block_dexpert + short_j] = short_up_local[short_i, short_j] * short_gate_local[short_i, short_j]

                with T.Kernel(
                    T.ceildiv(hidden, input_prepack_cols),
                    step1_num_blocks_m,
                    threads=step1_threads,
                ) as (copy_col, copy_row):
                    if use_case2_consumer_native_input:
                        # A synchronous 64-KiB bridge lets T.copy read the
                        # original M128/N256 panel in row-major coalesced form.
                        # Consumer threads then write contiguous native slots.
                        # This kernel has no async operation; the CTA barrier
                        # is the complete producer/consumer hand-off.
                        copy_shared = T.alloc_shared(
                            (step1_block_token, input_prepack_cols), dtype=dtype
                        )
                        copy_thread = T.get_thread_binding()
                        if step1_block_token == 192:
                            copy_expert_local = T.alloc_local((1,), dtype=T.int32)
                            if use_case3_hybrid_m192n64:
                                find_long_expert(
                                    group_sizes, copy_row, copy_expert_local
                                )
                            else:
                                copy_expert_local[0] = copy_row
                            copy_expert = copy_expert_local[0]
                            copy_padded_start = group_padded_offsets[copy_expert]
                            copy_group_size = group_sizes[copy_expert]
                            for copy_vec in T.serial(12):
                                copy_linear_vec = copy_thread * 12 + copy_vec
                                copy_source_row = copy_linear_vec // (
                                    input_prepack_cols // 8
                                )
                                copy_source_col = (
                                    copy_linear_vec % (input_prepack_cols // 8)
                                ) * 8
                                for copy_elem in T.vectorized(8):
                                    if copy_source_row < copy_group_size:
                                        copy_shared[
                                            copy_source_row,
                                            copy_source_col + copy_elem,
                                        ] = input_original[
                                            copy_padded_start + copy_source_row,
                                            copy_col * input_prepack_cols
                                            + copy_source_col
                                            + copy_elem,
                                        ]
                                    else:
                                        copy_shared[
                                            copy_source_row,
                                            copy_source_col + copy_elem,
                                        ] = 0.0
                        else:
                            T.copy(
                                input_original[
                                    copy_row
                                    * step1_block_token : (copy_row + 1)
                                    * step1_block_token,
                                    copy_col
                                    * input_prepack_cols : (copy_col + 1)
                                    * input_prepack_cols,
                                ],
                                copy_shared,
                            )
                        T.sync_threads()
                        for copy_k_sub in T.serial(
                            input_prepack_cols // block_dhidden_step1
                        ):
                            copy_k_tile = (
                                copy_col
                                * (input_prepack_cols // block_dhidden_step1)
                                + copy_k_sub
                            )
                            for native_vec in T.serial(step1_native_vecs):
                                source_row_in_block = (
                                    (copy_thread // 64) * step1_warp_row_tiles
                                    + (native_vec % step1_native_row_repeats) * 16
                                    + copy_thread % 16
                                )
                                source_col_in_tile = (
                                    (native_vec // step1_native_row_repeats) * 32
                                    + ((copy_thread % 64) // 16) * 8
                                )
                                for native_elem in T.vectorized(8):
                                    input[
                                        copy_row,
                                        copy_k_tile,
                                        native_vec,
                                        copy_thread,
                                        native_elem,
                                    ] = copy_shared[
                                        source_row_in_block,
                                        copy_k_sub * block_dhidden_step1
                                        + source_col_in_tile
                                        + native_elem,
                                    ]
                    else:
                        for i_copy, j_copy in T.Parallel(block_token, 256):
                            source_row = copy_row * block_token + i_copy
                            source_col = copy_col * 256 + j_copy
                            if source_row < total_padded and source_col < hidden:
                                input[
                                    copy_row,
                                    source_col // block_dhidden_step1,
                                    i_copy,
                                    source_col % block_dhidden_step1,
                                ] = input_original[
                                    source_row, source_col
                                ]

                with T.Kernel(
                    step1_grid_x, step1_grid_y, threads=step1_threads
                ) as (pid0, pid1):
                    if use_step1_expert_grouped_grid:
                        cta_mapping = T.alloc_local((2,), dtype=T.int32)
                        if pid1 < num_experts // 2:
                            cta_mapping[0] = pid1
                            cta_mapping[1] = pid0
                        else:
                            cta_mapping[0] = (pid1 // 2) * 2 + pid0 % 2
                            cta_mapping[1] = (
                                (pid1 % 2) * (step1_col_tiles // 2) + pid0 // 2
                            )
                        bx = cta_mapping[0]
                        by = cta_mapping[1]
                    else:
                        bx = pid1 if use_grid_transpose_step1 else pid0
                        by = pid0 if use_grid_transpose_step1 else pid1
                    input_shared = T.alloc_fragment((step1_block_token, block_dhidden_step1), dtype=dtype)
                    input_prefetch = T.alloc_fragment((step1_block_token, block_dhidden_step1), dtype=dtype)
                    gate_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)
                    up_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)
                    gate_local = T.alloc_fragment((step1_block_token, block_dexpert_step1), dtype=accum_dtype)
                    up_local = T.alloc_fragment((step1_block_token, block_dexpert_step1), dtype=accum_dtype)
                    weight_local = T.alloc_local((step1_mma.warp_cols * step1_mma.k_pack * step1_mma.local_size_b), dtype=dtype)

                    T.annotate_layout(
                        {
                            input_shared: step1_mma.make_mma_load_layout(input_shared, matrix="A"),
                            input_prefetch: step1_mma.make_mma_load_layout(input_prefetch, matrix="A"),
                            gate_shared: make_swizzled_layout(gate_shared),
                            up_shared: make_swizzled_layout(up_shared),
                            gate_local: step1_mma.make_mma_store_layout(gate_local),
                            up_local: step1_mma.make_mma_store_layout(up_local),
                        }
                    )
                    T.use_swizzle(10, enable=False)

                    if step1_block_token == 192:
                        expert_id_local = T.alloc_local((1,), dtype=T.int32)
                        if use_case3_hybrid_m192n64:
                            find_long_expert(group_sizes, bx, expert_id_local)
                        else:
                            expert_id_local[0] = bx
                        expert_id = expert_id_local[0]
                    else:
                        expert_id = group_idx_for_bx[bx]
                    T.assume(0 <= expert_id)
                    T.assume(expert_id < num_experts)
                    group_size = group_sizes[expert_id]
                    padded_start = group_padded_offsets[expert_id]
                    if step1_block_token == 192:
                        block_start = padded_start
                        token_offset = 0
                    else:
                        block_start = bx * step1_block_token
                        token_offset = block_start - padded_start
                    actual_rows = T.max(0, T.min(step1_block_token, group_size - token_offset))
                    if use_case2_consumer_native_input:
                        native_thread = T.get_thread_binding()

                    T.clear(gate_local)
                    T.clear(up_local)
                    if use_step1_input_prefetch and use_step1_tail_pruning:
                        T.clear(input_prefetch)
                    if use_step1_input_prefetch:
                        if use_case2_consumer_native_input:
                            for native_vec in T.serial(step1_native_vecs):
                                native_row = (
                                    (native_thread // 64) * step1_warp_row_tiles
                                    + (native_vec % step1_native_row_repeats) * 16
                                    + native_thread % 16
                                )
                                native_col = (
                                    (native_vec // step1_native_row_repeats) * 32
                                    + ((native_thread % 64) // 16) * 8
                                )
                                for native_elem in T.vectorized(8):
                                    input_shared[native_row, native_col + native_elem] = input[
                                        bx, 0, native_vec, native_thread, native_elem
                                    ]
                        else:
                            T.copy(
                                input[bx, 0, 0:step1_block_token, 0:block_dhidden_step1],
                                input_shared,
                            )
                        for k_pair in T.serial(step1_k_tiles // 2):
                            k_even = k_pair * 2
                            k_odd = k_even + 1
                            if use_step1_prefetch_before_barrier:
                                if use_case2_consumer_native_input:
                                    for native_vec in T.serial(step1_native_vecs):
                                        native_row = (
                                            (native_thread // 64) * step1_warp_row_tiles
                                            + (native_vec % step1_native_row_repeats) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // step1_native_row_repeats) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and (
                                                not use_consumer_native_split_gate0
                                                or native_row < step1_block_token // 2
                                            )
                                        ):
                                            for native_elem in T.vectorized(8):
                                                input_prefetch[
                                                    native_row, native_col + native_elem
                                                ] = input[
                                                    bx,
                                                    k_odd,
                                                    native_vec,
                                                    native_thread,
                                                    native_elem,
                                                ]
                                if use_non_native_a_before_gate0:
                                    if use_non_native_a_split_gate0:
                                        for i_x_odd, j_x_odd in T.Parallel(
                                            step1_block_token // 2, block_dhidden_step1
                                        ):
                                            if i_x_odd < actual_rows:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                    else:
                                        for i_x_odd, j_x_odd in T.Parallel(
                                            step1_block_token, block_dhidden_step1
                                        ):
                                            if i_x_odd < actual_rows:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                copy_step1_weight_half(
                                    gate,
                                    gate_shared,
                                    expert_id,
                                    by * block_dexpert_step1,
                                    k_even * block_dhidden_step1,
                                    0,
                                )
                                if (
                                    use_case2_consumer_native_input
                                    and use_consumer_native_split_gate0
                                ):
                                    for native_vec in T.serial(step1_native_vecs):
                                        native_row = (
                                            (native_thread // 64) * step1_warp_row_tiles
                                            + (native_vec % step1_native_row_repeats) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // step1_native_row_repeats) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and native_row >= step1_block_token // 2
                                        ):
                                            for native_elem in T.vectorized(8):
                                                input_prefetch[
                                                    native_row, native_col + native_elem
                                                ] = input[
                                                    bx,
                                                    k_odd,
                                                    native_vec,
                                                    native_thread,
                                                    native_elem,
                                                ]
                                if (
                                    use_non_native_a_before_gate0
                                    and use_non_native_a_split_gate0
                                ):
                                    for i_x_odd_hi, j_x_odd_hi in T.Parallel(
                                        step1_block_token // 2, block_dhidden_step1
                                    ):
                                        if step1_block_token // 2 + i_x_odd_hi < actual_rows:
                                            input_prefetch[
                                                step1_block_token // 2 + i_x_odd_hi, j_x_odd_hi
                                            ] = input[
                                                bx,
                                                k_odd,
                                                step1_block_token // 2 + i_x_odd_hi,
                                                j_x_odd_hi,
                                            ]
                                if not use_step1_tail_pruning:
                                    T.copy(
                                        input[
                                            bx,
                                            k_odd,
                                            0 : step1_block_token // 2,
                                            0:block_dhidden_step1,
                                        ],
                                        input_prefetch[0 : step1_block_token // 2, 0:block_dhidden_step1],
                                    )
                                if (
                                    use_step1_tail_pruning
                                    and not use_non_native_a_before_gate0
                                ):
                                    for i_x_odd, j_x_odd in T.Parallel(
                                        step1_block_token, block_dhidden_step1
                                    ):
                                        if i_x_odd < actual_rows:
                                            if not use_case2_consumer_native_input:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                copy_step1_weight_half(
                                    gate,
                                    gate_shared,
                                    expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_even * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                                copy_step1_weight_half(
                                    up,
                                    up_shared,
                                    expert_id,
                                    by * block_dexpert_step1,
                                    k_even * block_dhidden_step1,
                                    0,
                                )
                                if not use_step1_tail_pruning:
                                    T.copy(
                                        input[
                                            bx,
                                            k_odd,
                                            step1_block_token // 2 : step1_block_token,
                                            0:block_dhidden_step1,
                                        ],
                                        input_prefetch[step1_block_token // 2 : step1_block_token, 0:block_dhidden_step1],
                                    )
                                copy_step1_weight_half(
                                    up,
                                    up_shared,
                                    expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_even * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                            else:
                                copy_step1_weight_half(
                                    gate, gate_shared, expert_id,
                                    by * block_dexpert_step1,
                                    k_even * block_dhidden_step1,
                                    0,
                                )
                                copy_step1_weight_half(
                                    gate, gate_shared, expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_even * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                                copy_step1_weight_half(
                                    up, up_shared, expert_id,
                                    by * block_dexpert_step1,
                                    k_even * block_dhidden_step1,
                                    0,
                                )
                                copy_step1_weight_half(
                                    up, up_shared, expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_even * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                            T.sync_threads()
                            if not use_step1_prefetch_before_barrier:
                                if use_step1_tail_pruning:
                                    for i_x_odd, j_x_odd in T.Parallel(
                                        step1_block_token, block_dhidden_step1
                                    ):
                                        if i_x_odd < actual_rows:
                                            if not use_case2_consumer_native_input:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                    if use_case2_consumer_native_input:
                                        for native_vec in T.serial(step1_native_vecs):
                                            native_row = (
                                                (native_thread // 64) * step1_warp_row_tiles
                                                + (native_vec % step1_native_row_repeats) * 16
                                                + native_thread % 16
                                            )
                                            native_col = (
                                                (native_vec // step1_native_row_repeats) * 32
                                                + ((native_thread % 64) // 16) * 8
                                            )
                                            if native_row < actual_rows:
                                                for native_elem in T.vectorized(8):
                                                    input_prefetch[
                                                        native_row, native_col + native_elem
                                                    ] = input[
                                                        bx,
                                                        k_odd,
                                                        native_vec,
                                                        native_thread,
                                                        native_elem,
                                                    ]
                                else:
                                    T.copy(
                                        input[
                                            bx,
                                            k_odd,
                                            0:step1_block_token,
                                            0:block_dhidden_step1,
                                        ],
                                        input_prefetch,
                                    )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                if not use_step1_tail_pruning or (
                                    ((T.get_thread_binding() // 64) % step1_row_warps) * step1_warp_row_tiles
                                    < actual_rows
                                ):
                                    step1_mma.ldmatrix_b(weight_local, gate_shared, ki)
                                    step1_mma.mma(input_shared, weight_local, gate_local, ki)
                                    step1_mma.ldmatrix_b(weight_local, up_shared, ki)
                                    step1_mma.mma(input_shared, weight_local, up_local, ki)
                            T.sync_threads()
                            if use_step1_prefetch_before_barrier:
                                if (
                                    use_case2_consumer_native_input
                                    and k_pair + 1 < step1_k_tiles // 2
                                ):
                                    for native_vec in T.serial(step1_native_vecs):
                                        native_row = (
                                            (native_thread // 64) * step1_warp_row_tiles
                                            + (native_vec % step1_native_row_repeats) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // step1_native_row_repeats) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and (
                                                not use_consumer_native_split_gate0
                                                or native_row < step1_block_token // 2
                                            )
                                        ):
                                            for native_elem in T.vectorized(8):
                                                input_shared[
                                                    native_row, native_col + native_elem
                                                ] = input[
                                                    bx,
                                                    k_odd + 1,
                                                    native_vec,
                                                    native_thread,
                                                    native_elem,
                                                ]
                                if (
                                    use_non_native_a_before_gate0
                                    and k_pair + 1 < step1_k_tiles // 2
                                ):
                                    if use_non_native_a_split_gate0:
                                        for i_x_even, j_x_even in T.Parallel(
                                            step1_block_token // 2, block_dhidden_step1
                                        ):
                                            if i_x_even < actual_rows:
                                                input_shared[i_x_even, j_x_even] = input[
                                                    bx, k_odd + 1, i_x_even, j_x_even
                                                ]
                                    else:
                                        for i_x_even, j_x_even in T.Parallel(
                                            step1_block_token, block_dhidden_step1
                                        ):
                                            if i_x_even < actual_rows:
                                                input_shared[i_x_even, j_x_even] = input[
                                                    bx, k_odd + 1, i_x_even, j_x_even
                                                ]
                                copy_step1_weight_half(
                                    gate,
                                    gate_shared,
                                    expert_id,
                                    by * block_dexpert_step1,
                                    k_odd * block_dhidden_step1,
                                    0,
                                )
                                if (
                                    use_case2_consumer_native_input
                                    and use_consumer_native_split_gate0
                                    and k_pair + 1 < step1_k_tiles // 2
                                ):
                                    for native_vec in T.serial(step1_native_vecs):
                                        native_row = (
                                            (native_thread // 64) * step1_warp_row_tiles
                                            + (native_vec % step1_native_row_repeats) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // step1_native_row_repeats) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and native_row >= step1_block_token // 2
                                        ):
                                            for native_elem in T.vectorized(8):
                                                input_shared[
                                                    native_row, native_col + native_elem
                                                ] = input[
                                                    bx,
                                                    k_odd + 1,
                                                    native_vec,
                                                    native_thread,
                                                    native_elem,
                                                ]
                                if (
                                    use_non_native_a_before_gate0
                                    and use_non_native_a_split_gate0
                                    and k_pair + 1 < step1_k_tiles // 2
                                ):
                                    for i_x_even_hi, j_x_even_hi in T.Parallel(
                                        step1_block_token // 2, block_dhidden_step1
                                    ):
                                        if step1_block_token // 2 + i_x_even_hi < actual_rows:
                                            input_shared[
                                                step1_block_token // 2 + i_x_even_hi, j_x_even_hi
                                            ] = input[
                                                bx,
                                                k_odd + 1,
                                                step1_block_token // 2 + i_x_even_hi,
                                                j_x_even_hi,
                                            ]
                                if k_pair + 1 < step1_k_tiles // 2:
                                    k_next_even = k_odd + 1
                                    if not use_step1_tail_pruning:
                                        T.copy(
                                            input[
                                                bx,
                                                k_next_even,
                                                0 : step1_block_token // 2,
                                                0:block_dhidden_step1,
                                            ],
                                            input_shared[0 : step1_block_token // 2, 0:block_dhidden_step1],
                                        )
                                    if (
                                        use_step1_tail_pruning
                                        and not use_non_native_a_before_gate0
                                    ):
                                        for i_x_even, j_x_even in T.Parallel(
                                            step1_block_token, block_dhidden_step1
                                        ):
                                            if i_x_even < actual_rows:
                                                if not use_case2_consumer_native_input:
                                                    input_shared[i_x_even, j_x_even] = input[
                                                        bx, k_odd + 1, i_x_even, j_x_even
                                                    ]
                                copy_step1_weight_half(
                                    gate,
                                    gate_shared,
                                    expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_odd * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                                copy_step1_weight_half(
                                    up,
                                    up_shared,
                                    expert_id,
                                    by * block_dexpert_step1,
                                    k_odd * block_dhidden_step1,
                                    0,
                                )
                                if k_pair + 1 < step1_k_tiles // 2:
                                    if not use_step1_tail_pruning:
                                        T.copy(
                                            input[
                                                bx,
                                                k_odd + 1,
                                                step1_block_token // 2 : step1_block_token,
                                                0:block_dhidden_step1,
                                            ],
                                            input_shared[step1_block_token // 2 : step1_block_token, 0:block_dhidden_step1],
                                        )
                                copy_step1_weight_half(
                                    up,
                                    up_shared,
                                    expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_odd * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                            else:
                                copy_step1_weight_half(
                                    gate, gate_shared, expert_id,
                                    by * block_dexpert_step1,
                                    k_odd * block_dhidden_step1,
                                    0,
                                )
                                copy_step1_weight_half(
                                    gate, gate_shared, expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_odd * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                                copy_step1_weight_half(
                                    up, up_shared, expert_id,
                                    by * block_dexpert_step1,
                                    k_odd * block_dhidden_step1,
                                    0,
                                )
                                copy_step1_weight_half(
                                    up, up_shared, expert_id,
                                    by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                    k_odd * block_dhidden_step1,
                                    block_dexpert_step1 // 2,
                                )
                            T.sync_threads()
                            if not use_step1_prefetch_before_barrier and k_pair + 1 < step1_k_tiles // 2:
                                k_next_even = k_odd + 1
                                if use_step1_tail_pruning:
                                    for i_x_even, j_x_even in T.Parallel(
                                        step1_block_token, block_dhidden_step1
                                    ):
                                        if i_x_even < actual_rows:
                                            if not use_case2_consumer_native_input:
                                                input_shared[i_x_even, j_x_even] = input[
                                                    bx, k_next_even, i_x_even, j_x_even
                                                ]
                            if (
                                use_case2_consumer_native_input
                                and not use_step1_prefetch_before_barrier
                                and k_pair + 1 < step1_k_tiles // 2
                            ):
                                for native_vec in T.serial(step1_native_vecs):
                                    native_row = (
                                        (native_thread // 64) * step1_warp_row_tiles
                                        + (native_vec % step1_native_row_repeats) * 16
                                        + native_thread % 16
                                    )
                                    native_col = (
                                        (native_vec // step1_native_row_repeats) * 32
                                        + ((native_thread % 64) // 16) * 8
                                    )
                                    if native_row < actual_rows:
                                        for native_elem in T.vectorized(8):
                                            input_shared[
                                                native_row, native_col + native_elem
                                            ] = input[
                                                bx,
                                                k_next_even,
                                                native_vec,
                                                native_thread,
                                                native_elem,
                                            ]
                                else:
                                    T.copy(
                                        input[
                                            bx,
                                            k_next_even,
                                            0:step1_block_token,
                                            0:block_dhidden_step1,
                                        ],
                                        input_shared,
                                    )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                if not use_step1_tail_pruning or (
                                    ((T.get_thread_binding() // 64) % step1_row_warps) * step1_warp_row_tiles
                                    < actual_rows
                                ):
                                    step1_mma.ldmatrix_b(weight_local, gate_shared, ki)
                                    step1_mma.mma(input_prefetch, weight_local, gate_local, ki)
                                    step1_mma.ldmatrix_b(weight_local, up_shared, ki)
                                    step1_mma.mma(input_prefetch, weight_local, up_local, ki)
                            if k_pair + 1 < step1_k_tiles // 2:
                                T.sync_threads()
                    else:
                        for k in T.Pipelined(T.ceildiv(hidden, block_dhidden_step1), num_stages=num_stages):
                            T.copy(
                                input[
                                    bx,
                                    k,
                                    0:step1_block_token,
                                    0:block_dhidden_step1,
                                ],
                                input_shared,
                            )
                            copy_step1_weight_half(
                                gate, gate_shared, expert_id,
                                by * block_dexpert_step1,
                                k * block_dhidden_step1,
                                0,
                            )
                            copy_step1_weight_half(
                                gate, gate_shared, expert_id,
                                by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                k * block_dhidden_step1,
                                block_dexpert_step1 // 2,
                            )
                            copy_step1_weight_half(
                                up, up_shared, expert_id,
                                by * block_dexpert_step1,
                                k * block_dhidden_step1,
                                0,
                            )
                            copy_step1_weight_half(
                                up, up_shared, expert_id,
                                by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                k * block_dhidden_step1,
                                block_dexpert_step1 // 2,
                            )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                step1_mma.ldmatrix_b(weight_local, gate_shared, ki)
                                step1_mma.mma(input_shared, weight_local, gate_local, ki)
                                step1_mma.ldmatrix_b(weight_local, up_shared, ki)
                                step1_mma.mma(input_shared, weight_local, up_local, ki)

                    for i, j in T.Parallel(step1_block_token, block_dexpert_step1):
                        if use_case1_poly_silu:
                            silu_x = gate_local[i, j]
                            silu_clamped = T.max(-5.5, T.min(5.5, silu_x))
                            silu_z = silu_clamped * silu_clamped
                            silu_p7 = -2.6456580608e-05 + silu_z * 3.05556014903e-07
                            silu_p5 = 0.000907175546257 + silu_z * silu_p7
                            silu_p3 = -0.0168032280723 + silu_z * silu_p5
                            silu_p1 = 0.245556537144 + silu_z * silu_p3
                            gate_local[i, j] = silu_x * (
                                0.5 + silu_clamped * silu_p1
                            )
                        else:
                            gate_local[i, j] = gate_local[i, j] * (1.0 / (1.0 + T.exp2(-gate_local[i, j] * scale)))
                        if i < actual_rows:
                            if use_consumer_native_up_logits:
                                intermediate_col = by * block_dexpert_step1 + j
                                native_col = intermediate_col % block_dexpert_step2
                                if step1_block_token == 192:
                                    native_output_row = i % 128
                                    native_output_block = padded_start // 128 + i // 128
                                else:
                                    native_output_row = i
                                    native_output_block = bx
                                intermediate_owner_thread = (
                                    (native_output_row // 32) * 64
                                    + ((native_col % 32) // 8) * 16
                                    + native_output_row % 16
                                )
                                native_vec = (
                                    (native_col // 32) * 2
                                    + (native_output_row % 32) // 16
                                )
                                up_logits[
                                    native_output_block,
                                    intermediate_col // block_dexpert_step2,
                                    native_vec,
                                    intermediate_owner_thread,
                                    native_col % 8,
                                ] = up_local[i, j] * gate_local[i, j]
                            else:
                                up_logits[block_start + i, by * block_dexpert_step1 + j] = up_local[i, j] * gate_local[i, j]

                with T.Kernel(step2_grid_x, step2_grid_y, threads=threads) as (pid0, pid1):
                    if use_step2_expert_grouped_grid:
                        bx_local = T.alloc_local((1,), dtype=T.int32)
                        by_local = T.alloc_local((1,), dtype=T.int32)
                        if pid1 < num_experts // 2:
                            bx_local[0] = pid1
                            by_local[0] = pid0
                        else:
                            bx_local[0] = (pid1 // 2) * 2 + pid0 % 2
                            by_local[0] = (pid1 % 2) * (step2_col_tiles // 2) + pid0 // 2
                        bx = bx_local[0]
                        by = by_local[0]
                    else:
                        bx = pid1 if use_grid_transpose_step2 else pid0
                        by = pid0 if use_grid_transpose_step2 else pid1
                    up_logits_shared = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
                    up_logits_prefetch = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
                    down_shared = T.alloc_shared((step2_output_tile, block_dexpert_step2), dtype=dtype)
                    out_local_0 = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
                    out_local_1 = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
                    down_local = T.alloc_local((step2_mma.warp_cols * step2_mma.k_pack * step2_mma.local_size_b), dtype=dtype)
                    routed_weight_local = T.alloc_local((2,), dtype=T.float32)

                    T.annotate_layout(
                        {
                            up_logits_shared: step2_mma.make_mma_load_layout(up_logits_shared, matrix="A"),
                            up_logits_prefetch: step2_mma.make_mma_load_layout(up_logits_prefetch, matrix="A"),
                            down_shared: make_swizzled_layout(down_shared),
                            out_local_0: step2_mma.make_mma_store_layout(out_local_0),
                            out_local_1: step2_mma.make_mma_store_layout(out_local_1),
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
                    if use_consumer_native_up_logits:
                        intermediate_thread = T.get_thread_binding()

                    T.clear(out_local_0)
                    T.clear(out_local_1)
                    if use_step2_input_prefetch:
                        if use_consumer_native_up_logits:
                            for intermediate_vec in T.serial(4):
                                intermediate_row = (
                                    (intermediate_thread // 64) * 32
                                    + (intermediate_vec % 2) * 16
                                    + intermediate_thread % 16
                                )
                                intermediate_col = (
                                    (intermediate_vec // 2) * 32
                                    + ((intermediate_thread % 64) // 16) * 8
                                )
                                if use_unpredicated_native_reads or intermediate_row < actual_rows:
                                    for intermediate_elem in T.vectorized(8):
                                        up_logits_shared[
                                            intermediate_row,
                                            intermediate_col + intermediate_elem,
                                        ] = up_logits[
                                            bx,
                                            0,
                                            intermediate_vec,
                                            intermediate_thread,
                                            intermediate_elem,
                                        ]
                        elif use_step2_tail_pruning:
                            for i_up_first, j_up_first in T.Parallel(
                                block_token, block_dexpert_step2
                            ):
                                if i_up_first < actual_rows:
                                    up_logits_shared[i_up_first, j_up_first] = up_logits[
                                        block_start + i_up_first, j_up_first
                                    ]
                        else:
                            T.copy(
                                up_logits[block_start : block_start + block_token, 0:block_dexpert_step2],
                                up_logits_shared,
                            )
                        for k_pair in T.serial(step2_k_tiles // 2):
                            k_even = k_pair * 2
                            k_odd = k_even + 1
                            if use_step2_half_interleave:
                                for producer_stage in T.unroll(2):
                                    if use_consumer_native_up_logits:
                                        if producer_stage == intermediate_thread // 128:
                                            for intermediate_vec in T.serial(4):
                                                intermediate_row = (
                                                    (intermediate_thread // 64) * 32
                                                    + (intermediate_vec % 2) * 16
                                                    + intermediate_thread % 16
                                                )
                                                intermediate_col = (
                                                    (intermediate_vec // 2) * 32
                                                    + ((intermediate_thread % 64) // 16) * 8
                                                )
                                                if use_unpredicated_native_reads or intermediate_row < actual_rows:
                                                    for intermediate_elem in T.vectorized(8):
                                                        up_logits_prefetch[
                                                            intermediate_row,
                                                            intermediate_col + intermediate_elem,
                                                        ] = up_logits[
                                                            bx,
                                                            k_odd,
                                                            intermediate_vec,
                                                            intermediate_thread,
                                                            intermediate_elem,
                                                        ]
                                    else:
                                        for i_up_odd_q, j_up_odd_q in T.Parallel(
                                            block_token // 2, block_dexpert_step2
                                        ):
                                            if (
                                                producer_stage * (block_token // 2) + i_up_odd_q
                                                < actual_rows
                                            ):
                                                up_logits_prefetch[
                                                    producer_stage * (block_token // 2) + i_up_odd_q,
                                                    j_up_odd_q,
                                                ] = up_logits[
                                                    block_start
                                                    + producer_stage * (block_token // 2)
                                                    + i_up_odd_q,
                                                    k_odd * block_dexpert_step2 + j_up_odd_q,
                                                ]
                                    T.copy(
                                        down[
                                            expert_id,
                                            by * step2_output_tile
                                            + producer_stage
                                            * block_dhidden_step2 : by
                                            * step2_output_tile
                                            + (producer_stage + 1)
                                            * block_dhidden_step2,
                                            k_even * block_dexpert_step2 : (k_even + 1)
                                            * block_dexpert_step2,
                                        ],
                                        down_shared[
                                            producer_stage
                                            * block_dhidden_step2 : (producer_stage + 1)
                                            * block_dhidden_step2,
                                            0:block_dexpert_step2,
                                        ],
                                    )
                            else:
                                T.copy(
                                    down[
                                        expert_id,
                                        by * step2_output_tile : (by + 1) * step2_output_tile,
                                        k_even * block_dexpert_step2 : (k_even + 1) * block_dexpert_step2,
                                    ],
                                    down_shared,
                                )
                            T.sync_threads()
                            if not use_step2_half_interleave:
                                if use_step2_tail_pruning:
                                    for i_up_odd, j_up_odd in T.Parallel(
                                        block_token, block_dexpert_step2
                                    ):
                                        if i_up_odd < actual_rows:
                                            up_logits_prefetch[i_up_odd, j_up_odd] = up_logits[
                                                block_start + i_up_odd,
                                                k_odd * block_dexpert_step2 + j_up_odd,
                                            ]
                                else:
                                    T.copy(
                                        up_logits[
                                            block_start : block_start + block_token,
                                            k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                                        ],
                                        up_logits_prefetch,
                                    )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                if not use_step2_tail_pruning or (
                                    ((T.get_thread_binding() // 64) % 4) * 32
                                    < actual_rows
                                ):
                                    step2_mma.ldmatrix_b(
                                        down_local,
                                        down_shared,
                                        ki,
                                    )
                                    step2_mma.mma(up_logits_shared, down_local, out_local_0, ki)
                                    step2_mma.ldmatrix_b(
                                        down_local,
                                        down_shared,
                                        ki,
                                        row_offset=block_dhidden_step2,
                                    )
                                    step2_mma.mma(up_logits_shared, down_local, out_local_1, ki)
                            T.sync_threads()
                            if use_step2_half_interleave:
                                k_next_even = k_odd + 1
                                for producer_stage in T.unroll(2):
                                    if k_pair + 1 < step2_k_tiles // 2:
                                        if use_consumer_native_up_logits:
                                            if producer_stage == intermediate_thread // 128:
                                                for intermediate_vec in T.serial(4):
                                                    intermediate_row = (
                                                        (intermediate_thread // 64) * 32
                                                        + (intermediate_vec % 2) * 16
                                                        + intermediate_thread % 16
                                                    )
                                                    intermediate_col = (
                                                        (intermediate_vec // 2) * 32
                                                        + ((intermediate_thread % 64) // 16) * 8
                                                    )
                                                    if use_unpredicated_native_reads or intermediate_row < actual_rows:
                                                        for intermediate_elem in T.vectorized(8):
                                                            up_logits_shared[
                                                                intermediate_row,
                                                                intermediate_col + intermediate_elem,
                                                            ] = up_logits[
                                                                bx,
                                                                k_next_even,
                                                                intermediate_vec,
                                                                intermediate_thread,
                                                                intermediate_elem,
                                                            ]
                                        else:
                                            for i_up_even_q, j_up_even_q in T.Parallel(
                                                block_token // 2, block_dexpert_step2
                                            ):
                                                if (
                                                    producer_stage * (block_token // 2)
                                                    + i_up_even_q
                                                    < actual_rows
                                                ):
                                                    up_logits_shared[
                                                        producer_stage * (block_token // 2)
                                                        + i_up_even_q,
                                                        j_up_even_q,
                                                    ] = up_logits[
                                                        block_start
                                                        + producer_stage * (block_token // 2)
                                                        + i_up_even_q,
                                                        k_next_even * block_dexpert_step2
                                                        + j_up_even_q,
                                                    ]
                                    T.copy(
                                        down[
                                            expert_id,
                                            by * step2_output_tile
                                            + producer_stage
                                            * block_dhidden_step2 : by
                                            * step2_output_tile
                                            + (producer_stage + 1)
                                            * block_dhidden_step2,
                                            k_odd * block_dexpert_step2 : (k_odd + 1)
                                            * block_dexpert_step2,
                                        ],
                                        down_shared[
                                            producer_stage
                                            * block_dhidden_step2 : (producer_stage + 1)
                                            * block_dhidden_step2,
                                            0:block_dexpert_step2,
                                        ],
                                    )
                            else:
                                T.copy(
                                    down[
                                        expert_id,
                                        by * step2_output_tile : (by + 1) * step2_output_tile,
                                        k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                                    ],
                                    down_shared,
                                )
                            T.sync_threads()
                            if not use_step2_half_interleave and k_pair + 1 < step2_k_tiles // 2:
                                k_next_even = k_odd + 1
                                if use_step2_tail_pruning:
                                    for i_up_even, j_up_even in T.Parallel(
                                        block_token, block_dexpert_step2
                                    ):
                                        if i_up_even < actual_rows:
                                            up_logits_shared[i_up_even, j_up_even] = up_logits[
                                                block_start + i_up_even,
                                                k_next_even * block_dexpert_step2 + j_up_even,
                                            ]
                                else:
                                    T.copy(
                                        up_logits[
                                            block_start : block_start + block_token,
                                            k_next_even * block_dexpert_step2 : (k_next_even + 1) * block_dexpert_step2,
                                        ],
                                        up_logits_shared,
                                    )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                if not use_step2_tail_pruning or (
                                    ((T.get_thread_binding() // 64) % 4) * 32
                                    < actual_rows
                                ):
                                    step2_mma.ldmatrix_b(
                                        down_local,
                                        down_shared,
                                        ki,
                                    )
                                    step2_mma.mma(up_logits_prefetch, down_local, out_local_0, ki)
                                    step2_mma.ldmatrix_b(
                                        down_local,
                                        down_shared,
                                        ki,
                                        row_offset=block_dhidden_step2,
                                    )
                                    step2_mma.mma(up_logits_prefetch, down_local, out_local_1, ki)
                            if k_pair + 1 < step2_k_tiles // 2:
                                T.sync_threads()
                    else:
                        for k in T.Pipelined(T.ceildiv(intermediate, block_dexpert_step2), num_stages=num_stages):
                            T.copy(
                                up_logits[
                                    block_start : block_start + block_token,
                                    k * block_dexpert_step2 : (k + 1) * block_dexpert_step2,
                                ],
                                up_logits_shared,
                            )
                            T.copy(
                                down[
                                    expert_id,
                                    by * step2_output_tile : (by + 1) * step2_output_tile,
                                    k * block_dexpert_step2 : (k + 1) * block_dexpert_step2,
                                ],
                                down_shared,
                            )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                step2_mma.ldmatrix_b(
                                    down_local,
                                    down_shared,
                                    ki,
                                )
                                step2_mma.mma(up_logits_shared, down_local, out_local_0, ki)
                                step2_mma.ldmatrix_b(
                                    down_local,
                                    down_shared,
                                    ki,
                                    row_offset=block_dhidden_step2,
                                )
                                step2_mma.mma(up_logits_shared, down_local, out_local_1, ki)

                    tx = T.get_thread_binding()
                    for row_slot in T.serial(2):
                        routed_row = (tx // 64) * 32 + row_slot * 16 + tx % 16
                        routed_weight_local[row_slot] = 0.0
                        if routed_row < actual_rows:
                            routed_weight_local[row_slot] = routed_weights[raw_start + token_offset + routed_row]

                    for i, j in T.Parallel(block_token, block_dhidden_step2):
                        if i < actual_rows:
                            output[block_start + i, by * step2_output_tile + j] = (
                                out_local_0[i, j] * routed_weight_local[(i // 16) % 2]
                            )
                        else:
                            output[block_start + i, by * step2_output_tile + j] = 0.0
                    for i, j in T.Parallel(block_token, block_dhidden_step2):
                        if i < actual_rows:
                            output[block_start + i, by * step2_output_tile + block_dhidden_step2 + j] = (
                                out_local_1[i, j] * routed_weight_local[(i // 16) % 2]
                            )
                        else:
                            output[block_start + i, by * step2_output_tile + block_dhidden_step2 + j] = 0.0

            return kernel

        kernel = make_kernel(*key)
        _KERNEL_CACHE[key] = kernel

    step1_k_tiles = (hidden + block_dhidden_step1 - 1) // block_dhidden_step1
    step2_k_tiles = (intermediate + block_dexpert_step2 - 1) // block_dexpert_step2
    if use_consumer_native_up_logits:
        up_logits = _consumer_native_intermediate_workspace(
            stacked_expert_tokens, num_blocks_m, step2_k_tiles, out
        )
    elif hidden == 7168 and intermediate == 2048 and num_experts == 32:
        up_logits = _workspace(stacked_expert_tokens, intermediate + 128, out)
    else:
        up_logits = _v088_workspace(stacked_expert_tokens, intermediate + 128)
    if use_case2_consumer_native_input:
        step1_threads_host = (
            256
            if step1_block_token == 192 and block_dexpert_step1 == 64
            else step1_block_token * 2
        )
        step1_native_vecs_host = (
            step1_block_token * block_dhidden_step1 // (step1_threads_host * 8)
        )
        tiled_input = _consumer_native_input_workspace(
            stacked_expert_tokens,
            step1_num_blocks_m,
            step1_k_tiles,
            step1_native_vecs_host,
            step1_threads_host,
            out,
        )
    else:
        tiled_input = _v088_input_workspace(
            stacked_expert_tokens, num_blocks_m, step1_k_tiles
        )
    if use_case3_hybrid_m192n64:
        short_tiled_input = _consumer_native_input_workspace(
            stacked_expert_tokens,
            num_experts // 2,
            step1_k_tiles,
            4,
            256,
            (out, "case3_short"),
        )
    else:
        short_tiled_input = tiled_input
    kernel(
        stacked_expert_tokens,
        tiled_input,
        short_tiled_input,
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
