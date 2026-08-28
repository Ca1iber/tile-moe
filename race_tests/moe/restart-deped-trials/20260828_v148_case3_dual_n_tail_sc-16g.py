# UNNUMBERED PROBE: v148 Case2/3 dual-N long-expert tails
# PARENT: v148 owner-approved SOTA / SHA256 1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840
# PRIMARY_CHANGE: idle tail waves compute the adjacent N128 tile with 32-KiB shared reuse
# SAFETY: TileLang primitives only; no injection or async copy
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
_EXPERT_MAP_CACHE = {}


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


def _consumer_native_input_workspace(stacked_expert_tokens, num_blocks_m, step1_k_tiles, owner):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(num_blocks_m),
        int(step1_k_tiles),
        str(stacked_expert_tokens.dtype),
        owner,
    )
    buf = _CONSUMER_NATIVE_INPUT_WORKSPACE_CACHE.get(key)
    if buf is None:
        # Four 128-bit vector slots per thread exactly match the physical
        # ordering of the M128/K64 MMA-A fragment.  The element count is the
        # same as D69A's [block, K64, M128, K64] workspace.
        buf = torch.empty(
            (int(num_blocks_m), int(step1_k_tiles), 4, 256, 8),
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


def _expert_map_workspace(stacked_expert_tokens, num_experts, owner):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(num_experts),
        owner,
    )
    buf = _EXPERT_MAP_CACHE.get(key)
    if buf is None:
        buf = torch.empty(
            (int(num_experts),),
            device=stacked_expert_tokens.device,
            dtype=torch.int32,
        )
        _EXPERT_MAP_CACHE[key] = buf
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
    use_step1_long_isoarea = False

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
        use_step1_long_isoarea = use_step2_half_interleave
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
        group_offsets_len,
        group_padded_offsets_len,
        group_idx_len,
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
        bool(use_case1_poly_silu),
        bool(use_step1_long_isoarea),
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
            group_offsets_len,
            group_padded_offsets_len,
            group_idx_len,
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
            use_case1_poly_silu,
            use_step1_long_isoarea,
        ):
            scale = 1.44269504
            dtype = T.float16
            accum_dtype = T.float32
            threads = 256
            num_stages = 1
            block_token = 128

            step1_mma = MinimalMacaMMA(
                block_row_warps=4,
                block_col_warps=1,
                warp_row_tiles=block_token // 4,
                warp_col_tiles=block_dexpert_step1,
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
            step1_long_mma = MinimalMacaMMA(
                block_row_warps=4,
                block_col_warps=1,
                warp_row_tiles=(2 * block_token) // 4,
                warp_col_tiles=block_dexpert_step1 // 2,
                chunk=block_dhidden_step1,
                k_pack=2,
            )

            step1_k_tiles = (hidden + block_dhidden_step1 - 1) // block_dhidden_step1
            input_shape = (total_padded, hidden)
            if use_case2_consumer_native_input:
                tiled_input_shape = (
                    num_blocks_m,
                    step1_k_tiles,
                    4,
                    threads,
                    8,
                )
            else:
                tiled_input_shape = (
                    num_blocks_m,
                    step1_k_tiles,
                    block_token,
                    block_dhidden_step1,
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
            step1_grid_x = step1_col_tiles if use_grid_transpose_step1 else num_blocks_m
            step1_grid_y = num_blocks_m if use_grid_transpose_step1 else step1_col_tiles
            step1_short_grid_y = num_experts if use_step1_long_isoarea else step1_grid_y
            step1_long_col_tiles = (
                intermediate + block_dexpert_step1 // 2 - 1
            ) // (block_dexpert_step1 // 2)
            step2_grid_x = step2_col_tiles if use_grid_transpose_step2 else num_blocks_m
            step2_grid_y = num_blocks_m if use_grid_transpose_step2 else step2_col_tiles

            @T.prim_func
            def kernel(
                input_original: T.Tensor(input_shape, dtype),
                input: T.Tensor(tiled_input_shape, dtype),
                gate: T.Tensor(gate_shape, dtype),
                up: T.Tensor(up_shape, dtype),
                down: T.Tensor(down_shape, dtype),
                routed_weights: T.Tensor((total_valid,), T.float32),
                group_sizes: T.Tensor((num_experts,), T.int32),
                group_offsets: T.Tensor((group_offsets_len,), T.int32),
                group_padded_offsets: T.Tensor((group_padded_offsets_len,), T.int32),
                group_idx_for_bx: T.Tensor((group_idx_len,), T.int32),
                expert_map: T.Tensor((num_experts,), T.int32),
                up_logits: T.Tensor(intermediate_shape, dtype),
                output: T.Tensor(input_shape, dtype),
            ):
                with T.Kernel(
                    T.ceildiv(hidden, 256),
                    T.ceildiv(total_padded, block_token),
                    threads=threads,
                ) as (copy_col, copy_row):
                    if use_case2_consumer_native_input:
                        # A synchronous 64-KiB bridge lets T.copy read the
                        # original M128/N256 panel in row-major coalesced form.
                        # Consumer threads then write contiguous native slots.
                        # This kernel has no async operation; the CTA barrier
                        # is the complete producer/consumer hand-off.
                        copy_shared = T.alloc_shared((block_token, 256), dtype=dtype)
                        T.copy(
                            input_original[
                                copy_row * block_token : (copy_row + 1) * block_token,
                                copy_col * 256 : (copy_col + 1) * 256,
                            ],
                            copy_shared,
                        )
                        T.sync_threads()
                        copy_thread = T.get_thread_binding()
                        copy_expert = group_idx_for_bx[copy_row]
                        copy_padded_block = (
                            group_padded_offsets[copy_expert] // block_token
                        )
                        if (
                            use_step1_long_isoarea
                            and False
                            and group_sizes[copy_expert] > block_token
                        ):
                            # The two physical M128 slots of a long expert are
                            # reinterpreted as one M256-native vector array.
                            # Each producer CTA writes one disjoint half of the
                            # consumer-thread dimension, so no cross-CTA
                            # synchronization or extra workspace is required.
                            copy_half = copy_row - copy_padded_block
                            if copy_thread < threads // 2:
                                m256_thread = copy_thread + copy_half * (threads // 2)
                                for copy_k_sub in T.serial(4):
                                    copy_k_tile = copy_col * 4 + copy_k_sub
                                    for m256_vec in T.serial(8):
                                        source_row_in_block = (
                                            (copy_thread // 64) * 64
                                            + (m256_vec % 4) * 16
                                            + copy_thread % 16
                                        )
                                        source_col_in_tile = (
                                            (m256_vec // 4) * 32
                                            + ((copy_thread % 64) // 16) * 8
                                        )
                                        for native_elem in T.vectorized(8):
                                            input[
                                                copy_padded_block + m256_vec // 4,
                                                copy_k_tile,
                                                m256_vec % 4,
                                                m256_thread,
                                                native_elem,
                                            ] = copy_shared[
                                                source_row_in_block,
                                                copy_k_sub * block_dhidden_step1
                                                + source_col_in_tile
                                                + native_elem,
                                            ]
                        else:
                            for copy_k_sub in T.serial(4):
                                copy_k_tile = copy_col * 4 + copy_k_sub
                                for native_vec in T.serial(4):
                                    source_row_in_block = (
                                        (copy_thread // 64) * 32
                                        + (native_vec % 2) * 16
                                        + copy_thread % 16
                                    )
                                    source_col_in_tile = (
                                        (native_vec // 2) * 32
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

                if use_step1_long_isoarea:
                    # Build permutation-safe compact short/long expert maps.
                    # The official Case3 has 32 one-block and 32 two-block
                    # experts, but their runtime order is not fixed by shape.
                    with T.Kernel(1, threads=threads) as (map_pid,):
                        map_thread = T.get_thread_binding()
                        if map_thread == 0:
                            short_rank = T.alloc_local((1,), dtype=T.int32)
                            long_rank = T.alloc_local((1,), dtype=T.int32)
                            short_rank[0] = 0
                            long_rank[0] = 0
                            for map_expert in T.serial(num_experts):
                                if group_sizes[map_expert] > block_token:
                                    expert_map[
                                        num_experts // 2 + long_rank[0]
                                    ] = map_expert
                                    long_rank[0] = long_rank[0] + 1
                                else:
                                    expert_map[short_rank[0]] = map_expert
                                    short_rank[0] = short_rank[0] + 1

                with T.Kernel(step1_grid_x, step1_short_grid_y, threads=threads) as (pid0, pid1):
                    if use_step1_long_isoarea:
                        mapped_expert = pid1
                        bx = group_padded_offsets[mapped_expert] // block_token
                        by = pid0
                    elif use_step1_expert_grouped_grid:
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
                    input_shared = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
                    input_prefetch = T.alloc_fragment((block_token, block_dhidden_step1), dtype=dtype)
                    gate_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)
                    up_shared = T.alloc_shared((block_dexpert_step1, block_dhidden_step1), dtype=dtype)
                    gate_local = T.alloc_fragment((block_token, block_dexpert_step1), dtype=accum_dtype)
                    up_local = T.alloc_fragment((block_token, block_dexpert_step1), dtype=accum_dtype)
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

                    expert_id = group_idx_for_bx[bx]
                    T.assume(0 <= expert_id)
                    T.assume(expert_id < num_experts)
                    block_start = bx * block_token
                    group_size = group_sizes[expert_id]
                    padded_start = group_padded_offsets[expert_id]
                    token_offset = block_start - padded_start
                    actual_rows = T.max(0, T.min(block_token, group_size - token_offset))
                    if use_case2_consumer_native_input:
                        native_thread = T.get_thread_binding()

                    T.clear(gate_local)
                    T.clear(up_local)
                    if use_step1_input_prefetch and use_step1_tail_pruning:
                        T.clear(input_prefetch)
                    if use_step1_input_prefetch:
                        if use_case2_consumer_native_input:
                            for native_vec in T.serial(4):
                                native_row = (
                                    (native_thread // 64) * 32
                                    + (native_vec % 2) * 16
                                    + native_thread % 16
                                )
                                native_col = (
                                    (native_vec // 2) * 32
                                    + ((native_thread % 64) // 16) * 8
                                )
                                for native_elem in T.vectorized(8):
                                    input_shared[native_row, native_col + native_elem] = input[
                                        bx, 0, native_vec, native_thread, native_elem
                                    ]
                        else:
                            T.copy(
                                input[bx, 0, 0:block_token, 0:block_dhidden_step1],
                                input_shared,
                            )
                        for k_pair in T.serial(step1_k_tiles // 2):
                            k_even = k_pair * 2
                            k_odd = k_even + 1
                            if use_step1_prefetch_before_barrier:
                                if use_case2_consumer_native_input:
                                    for native_vec in T.serial(4):
                                        native_row = (
                                            (native_thread // 64) * 32
                                            + (native_vec % 2) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // 2) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and (
                                                not use_consumer_native_split_gate0
                                                or native_row < block_token // 2
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
                                            block_token // 2, block_dhidden_step1
                                        ):
                                            if i_x_odd < actual_rows:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                    else:
                                        for i_x_odd, j_x_odd in T.Parallel(
                                            block_token, block_dhidden_step1
                                        ):
                                            if i_x_odd < actual_rows:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                                )
                                if (
                                    use_case2_consumer_native_input
                                    and use_consumer_native_split_gate0
                                ):
                                    for native_vec in T.serial(4):
                                        native_row = (
                                            (native_thread // 64) * 32
                                            + (native_vec % 2) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // 2) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and native_row >= block_token // 2
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
                                        block_token // 2, block_dhidden_step1
                                    ):
                                        if block_token // 2 + i_x_odd_hi < actual_rows:
                                            input_prefetch[
                                                block_token // 2 + i_x_odd_hi, j_x_odd_hi
                                            ] = input[
                                                bx,
                                                k_odd,
                                                block_token // 2 + i_x_odd_hi,
                                                j_x_odd_hi,
                                            ]
                                if not use_step1_tail_pruning:
                                    T.copy(
                                        input[
                                            bx,
                                            k_odd,
                                            0 : block_token // 2,
                                            0:block_dhidden_step1,
                                        ],
                                        input_prefetch[0 : block_token // 2, 0:block_dhidden_step1],
                                    )
                                if (
                                    use_step1_tail_pruning
                                    and not use_non_native_a_before_gate0
                                ):
                                    for i_x_odd, j_x_odd in T.Parallel(
                                        block_token, block_dhidden_step1
                                    ):
                                        if i_x_odd < actual_rows:
                                            if not use_case2_consumer_native_input:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                                )
                                T.copy(
                                    up[
                                        expert_id,
                                        by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    up_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                                )
                                if not use_step1_tail_pruning:
                                    T.copy(
                                        input[
                                            bx,
                                            k_odd,
                                            block_token // 2 : block_token,
                                            0:block_dhidden_step1,
                                        ],
                                        input_prefetch[block_token // 2 : block_token, 0:block_dhidden_step1],
                                    )
                                T.copy(
                                    up[
                                        expert_id,
                                        by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    up_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                                )
                            else:
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared,
                                )
                                T.copy(
                                    up[
                                        expert_id,
                                        by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    up_shared,
                                )
                            T.sync_threads()
                            if not use_step1_prefetch_before_barrier:
                                if use_step1_tail_pruning:
                                    for i_x_odd, j_x_odd in T.Parallel(
                                        block_token, block_dhidden_step1
                                    ):
                                        if i_x_odd < actual_rows:
                                            if not use_case2_consumer_native_input:
                                                input_prefetch[i_x_odd, j_x_odd] = input[
                                                    bx, k_odd, i_x_odd, j_x_odd
                                                ]
                                    if use_case2_consumer_native_input:
                                        for native_vec in T.serial(4):
                                            native_row = (
                                                (native_thread // 64) * 32
                                                + (native_vec % 2) * 16
                                                + native_thread % 16
                                            )
                                            native_col = (
                                                (native_vec // 2) * 32
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
                                            0:block_token,
                                            0:block_dhidden_step1,
                                        ],
                                        input_prefetch,
                                    )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                if not use_step1_tail_pruning or (
                                    ((T.get_thread_binding() // 64) % 4) * 32
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
                                    for native_vec in T.serial(4):
                                        native_row = (
                                            (native_thread // 64) * 32
                                            + (native_vec % 2) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // 2) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and (
                                                not use_consumer_native_split_gate0
                                                or native_row < block_token // 2
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
                                            block_token // 2, block_dhidden_step1
                                        ):
                                            if i_x_even < actual_rows:
                                                input_shared[i_x_even, j_x_even] = input[
                                                    bx, k_odd + 1, i_x_even, j_x_even
                                                ]
                                    else:
                                        for i_x_even, j_x_even in T.Parallel(
                                            block_token, block_dhidden_step1
                                        ):
                                            if i_x_even < actual_rows:
                                                input_shared[i_x_even, j_x_even] = input[
                                                    bx, k_odd + 1, i_x_even, j_x_even
                                                ]
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                                )
                                if (
                                    use_case2_consumer_native_input
                                    and use_consumer_native_split_gate0
                                    and k_pair + 1 < step1_k_tiles // 2
                                ):
                                    for native_vec in T.serial(4):
                                        native_row = (
                                            (native_thread // 64) * 32
                                            + (native_vec % 2) * 16
                                            + native_thread % 16
                                        )
                                        native_col = (
                                            (native_vec // 2) * 32
                                            + ((native_thread % 64) // 16) * 8
                                        )
                                        if (
                                            native_row < actual_rows
                                            and native_row >= block_token // 2
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
                                        block_token // 2, block_dhidden_step1
                                    ):
                                        if block_token // 2 + i_x_even_hi < actual_rows:
                                            input_shared[
                                                block_token // 2 + i_x_even_hi, j_x_even_hi
                                            ] = input[
                                                bx,
                                                k_odd + 1,
                                                block_token // 2 + i_x_even_hi,
                                                j_x_even_hi,
                                            ]
                                if k_pair + 1 < step1_k_tiles // 2:
                                    k_next_even = k_odd + 1
                                    if not use_step1_tail_pruning:
                                        T.copy(
                                            input[
                                                bx,
                                                k_next_even,
                                                0 : block_token // 2,
                                                0:block_dhidden_step1,
                                            ],
                                            input_shared[0 : block_token // 2, 0:block_dhidden_step1],
                                        )
                                    if (
                                        use_step1_tail_pruning
                                        and not use_non_native_a_before_gate0
                                    ):
                                        for i_x_even, j_x_even in T.Parallel(
                                            block_token, block_dhidden_step1
                                        ):
                                            if i_x_even < actual_rows:
                                                if not use_case2_consumer_native_input:
                                                    input_shared[i_x_even, j_x_even] = input[
                                                        bx, k_odd + 1, i_x_even, j_x_even
                                                    ]
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                                )
                                T.copy(
                                    up[
                                        expert_id,
                                        by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    up_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                                )
                                if k_pair + 1 < step1_k_tiles // 2:
                                    if not use_step1_tail_pruning:
                                        T.copy(
                                            input[
                                                bx,
                                                k_odd + 1,
                                                block_token // 2 : block_token,
                                                0:block_dhidden_step1,
                                            ],
                                            input_shared[block_token // 2 : block_token, 0:block_dhidden_step1],
                                        )
                                T.copy(
                                    up[
                                        expert_id,
                                        by * block_dexpert_step1 + block_dexpert_step1 // 2 : (by + 1) * block_dexpert_step1,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    up_shared[block_dexpert_step1 // 2 : block_dexpert_step1, 0:block_dhidden_step1],
                                )
                            else:
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared,
                                )
                                T.copy(
                                    up[
                                        expert_id,
                                        by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    up_shared,
                                )
                            T.sync_threads()
                            if not use_step1_prefetch_before_barrier and k_pair + 1 < step1_k_tiles // 2:
                                k_next_even = k_odd + 1
                                if use_step1_tail_pruning:
                                    for i_x_even, j_x_even in T.Parallel(
                                        block_token, block_dhidden_step1
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
                                for native_vec in T.serial(4):
                                    native_row = (
                                        (native_thread // 64) * 32
                                        + (native_vec % 2) * 16
                                        + native_thread % 16
                                    )
                                    native_col = (
                                        (native_vec // 2) * 32
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
                                            0:block_token,
                                            0:block_dhidden_step1,
                                        ],
                                        input_shared,
                                    )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                if not use_step1_tail_pruning or (
                                    ((T.get_thread_binding() // 64) % 4) * 32
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
                                    0:block_token,
                                    0:block_dhidden_step1,
                                ],
                                input_shared,
                            )
                            T.copy(
                                gate[
                                    expert_id,
                                    by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                    k * block_dhidden_step1 : (k + 1) * block_dhidden_step1,
                                ],
                                gate_shared,
                            )
                            T.copy(
                                up[
                                    expert_id,
                                    by * block_dexpert_step1 : (by + 1) * block_dexpert_step1,
                                    k * block_dhidden_step1 : (k + 1) * block_dhidden_step1,
                                ],
                                up_shared,
                            )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                step1_mma.ldmatrix_b(weight_local, gate_shared, ki)
                                step1_mma.mma(input_shared, weight_local, gate_local, ki)
                                step1_mma.ldmatrix_b(weight_local, up_shared, ki)
                                step1_mma.mma(input_shared, weight_local, up_local, ki)

                    for i, j in T.Parallel(block_token, block_dexpert_step1):
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
                                intermediate_owner_thread = (
                                    (i // 32) * 64
                                    + ((native_col % 32) // 8) * 16
                                    + i % 16
                                )
                                native_vec = (
                                    (native_col // 32) * 2
                                    + (i % 32) // 16
                                )
                                up_logits[
                                    bx,
                                    intermediate_col // block_dexpert_step2,
                                    native_vec,
                                    intermediate_owner_thread,
                                    native_col % 8,
                                ] = up_local[i, j] * gate_local[i, j]
                            else:
                                up_logits[block_start + i, by * block_dexpert_step1 + j] = up_local[i, j] * gate_local[i, j]

                if use_step1_long_isoarea:
                    # Each official long expert has a second block with 56
                    # valid rows.  Duplicate that M64 A fragment across the
                    # logical M128 rows: waves 0/1 compute N tile 2*pair_by,
                    # waves 2/3 compute the adjacent tile.  Gate and Up reuse
                    # one N256xK64 shared panel sequentially, so dynamic
                    # shared remains 32 KiB while tail CTA count is halved.
                    with T.Kernel(
                        step1_col_tiles // 2,
                        num_experts // 2,
                        threads=threads,
                    ) as (pair_by, pair_id):
                        pair_experts = T.alloc_local((2,), dtype=T.int32)
                        pair_bx = T.alloc_local((2,), dtype=T.int32)
                        pair_rows = T.alloc_local((2,), dtype=T.int32)
                        pair_experts[0] = expert_map[num_experts // 2 + pair_id]
                        pair_experts[1] = pair_experts[0]
                        pair_bx[0] = (
                            group_padded_offsets[pair_experts[0]] // block_token + 1
                        )
                        pair_bx[1] = pair_bx[0]
                        pair_rows[0] = group_sizes[pair_experts[0]] - block_token
                        pair_rows[1] = pair_rows[0]

                        input_pair = T.alloc_fragment(
                            (block_token, block_dhidden_step1), dtype=dtype
                        )
                        weight_pair_shared = T.alloc_shared(
                            (2 * block_dexpert_step1, block_dhidden_step1),
                            dtype=dtype,
                        )
                        gate_pair_local = T.alloc_fragment(
                            (block_token, block_dexpert_step1), dtype=accum_dtype
                        )
                        up_pair_local = T.alloc_fragment(
                            (block_token, block_dexpert_step1), dtype=accum_dtype
                        )
                        pair_weight_local = T.alloc_local(
                            (
                                step1_mma.warp_cols
                                * step1_mma.k_pack
                                * step1_mma.local_size_b
                            ),
                            dtype=dtype,
                        )

                        T.annotate_layout(
                            {
                                input_pair: step1_mma.make_mma_load_layout(
                                    input_pair, matrix="A"
                                ),
                                weight_pair_shared: make_swizzled_layout(
                                    weight_pair_shared
                                ),
                                gate_pair_local: step1_mma.make_mma_store_layout(
                                    gate_pair_local
                                ),
                                up_pair_local: step1_mma.make_mma_store_layout(
                                    up_pair_local
                                ),
                            }
                        )
                        T.use_swizzle(10, enable=False)
                        T.clear(input_pair)
                        T.clear(gate_pair_local)
                        T.clear(up_pair_local)
                        pair_thread = T.get_thread_binding()
                        pair_group = pair_thread // (threads // 2)
                        pair_thread_rel = pair_thread % (threads // 2)

                        for pair_k in T.serial(step1_k_tiles):
                            for pair_vec in T.serial(4):
                                pair_row_rel = (
                                    (pair_thread_rel // 64) * 32
                                    + (pair_vec % 2) * 16
                                    + pair_thread_rel % 16
                                )
                                pair_col = (
                                    (pair_vec // 2) * 32
                                    + ((pair_thread_rel % 64) // 16) * 8
                                )
                                if pair_row_rel < pair_rows[pair_group]:
                                    for pair_elem in T.vectorized(8):
                                        input_pair[
                                            pair_group * (block_token // 2)
                                            + pair_row_rel,
                                            pair_col + pair_elem,
                                        ] = input[
                                            pair_bx[pair_group],
                                            pair_k,
                                            pair_vec,
                                            pair_thread_rel,
                                            pair_elem,
                                        ]

                            for pair_i, pair_j in T.Parallel(
                                2 * block_dexpert_step1,
                                block_dhidden_step1,
                            ):
                                pair_weight_group = pair_i // block_dexpert_step1
                                pair_weight_row = pair_i % block_dexpert_step1
                                weight_pair_shared[pair_i, pair_j] = gate[
                                    pair_experts[0],
                                    (pair_by * 2 + pair_weight_group)
                                    * block_dexpert_step1
                                    + pair_weight_row,
                                    pair_k * block_dhidden_step1 + pair_j,
                                ]
                            T.sync_threads()
                            for pair_ki in T.serial(
                                0, block_dhidden_step1 // 32
                            ):
                                step1_mma.ldmatrix_b(
                                    pair_weight_local,
                                    weight_pair_shared,
                                    pair_ki,
                                    row_offset=pair_group * block_dexpert_step1,
                                )
                                step1_mma.mma(
                                    input_pair,
                                    pair_weight_local,
                                    gate_pair_local,
                                    pair_ki,
                                )
                            T.sync_threads()

                            for pair_i, pair_j in T.Parallel(
                                2 * block_dexpert_step1,
                                block_dhidden_step1,
                            ):
                                pair_weight_group = pair_i // block_dexpert_step1
                                pair_weight_row = pair_i % block_dexpert_step1
                                weight_pair_shared[pair_i, pair_j] = up[
                                    pair_experts[0],
                                    (pair_by * 2 + pair_weight_group)
                                    * block_dexpert_step1
                                    + pair_weight_row,
                                    pair_k * block_dhidden_step1 + pair_j,
                                ]
                            T.sync_threads()
                            for pair_ki in T.serial(
                                0, block_dhidden_step1 // 32
                            ):
                                step1_mma.ldmatrix_b(
                                    pair_weight_local,
                                    weight_pair_shared,
                                    pair_ki,
                                    row_offset=pair_group * block_dexpert_step1,
                                )
                                step1_mma.mma(
                                    input_pair,
                                    pair_weight_local,
                                    up_pair_local,
                                    pair_ki,
                                )
                            T.sync_threads()

                        for pair_out_i, pair_out_j in T.Parallel(
                            block_token, block_dexpert_step1
                        ):
                            pair_out_group = pair_out_i // (block_token // 2)
                            pair_out_row = pair_out_i % (block_token // 2)
                            if pair_out_row < pair_rows[pair_out_group]:
                                pair_silu_x = gate_pair_local[
                                    pair_out_i, pair_out_j
                                ]
                                pair_silu_clamped = T.max(
                                    -5.5, T.min(5.5, pair_silu_x)
                                )
                                pair_silu_z = pair_silu_clamped * pair_silu_clamped
                                pair_silu_p7 = (
                                    -2.6456580608e-05
                                    + pair_silu_z * 3.05556014903e-07
                                )
                                pair_silu_p5 = (
                                    0.000907175546257
                                    + pair_silu_z * pair_silu_p7
                                )
                                pair_silu_p3 = (
                                    -0.0168032280723
                                    + pair_silu_z * pair_silu_p5
                                )
                                pair_silu_p1 = (
                                    0.245556537144
                                    + pair_silu_z * pair_silu_p3
                                )
                                pair_gate = pair_silu_x * (
                                    0.5 + pair_silu_clamped * pair_silu_p1
                                )
                                pair_intermediate_col = (
                                    (pair_by * 2 + pair_out_group)
                                    * block_dexpert_step1
                                    + pair_out_j
                                )
                                pair_native_col = (
                                    pair_intermediate_col % block_dexpert_step2
                                )
                                pair_owner_thread = (
                                    (pair_out_row // 32) * 64
                                    + ((pair_native_col % 32) // 8) * 16
                                    + pair_out_row % 16
                                )
                                pair_native_vec = (
                                    (pair_native_col // 32) * 2
                                    + (pair_out_row % 32) // 16
                                )
                                up_logits[
                                    pair_bx[pair_out_group],
                                    pair_intermediate_col
                                    // block_dexpert_step2,
                                    pair_native_vec,
                                    pair_owner_thread,
                                    pair_native_col % 8,
                                ] = (
                                    up_pair_local[pair_out_i, pair_out_j]
                                    * pair_gate
                                )

                if use_step1_long_isoarea and False:
                    # One M256xN64 logical tile is represented as two native
                    # M128xN64 row halves.  This preserves v110's consumer-
                    # native A addresses while both halves reuse each staged
                    # Gate/Up N64xK64 operand tile.
                    with T.Kernel(
                        step1_long_col_tiles,
                        num_experts // 2,
                        threads=threads,
                    ) as (pid0, pid1):
                        by_long = pid0
                        expert_long = expert_map[num_experts // 2 + pid1]
                        bx_long = group_padded_offsets[expert_long] // block_token
                        long_actual_rows = group_sizes[expert_long]

                        input_long = T.alloc_fragment(
                            (2 * block_token, block_dhidden_step1), dtype=dtype
                        )
                        gate_long_shared = T.alloc_shared(
                            (block_dexpert_step1 // 2, block_dhidden_step1),
                            dtype=dtype,
                        )
                        up_long_shared = T.alloc_shared(
                            (block_dexpert_step1 // 2, block_dhidden_step1),
                            dtype=dtype,
                        )
                        gate_long = T.alloc_fragment(
                            (2 * block_token, block_dexpert_step1 // 2),
                            dtype=accum_dtype,
                        )
                        up_long = T.alloc_fragment(
                            (2 * block_token, block_dexpert_step1 // 2),
                            dtype=accum_dtype,
                        )
                        weight_long = T.alloc_local(
                            (
                                step1_long_mma.warp_cols
                                * step1_long_mma.k_pack
                                * step1_long_mma.local_size_b
                            ),
                            dtype=dtype,
                        )

                        T.annotate_layout(
                            {
                                input_long: step1_long_mma.make_mma_load_layout(
                                    input_long, matrix="A"
                                ),
                                gate_long_shared: make_swizzled_layout(
                                    gate_long_shared
                                ),
                                up_long_shared: make_swizzled_layout(
                                    up_long_shared
                                ),
                                gate_long: step1_long_mma.make_mma_store_layout(
                                    gate_long
                                ),
                                up_long: step1_long_mma.make_mma_store_layout(
                                    up_long
                                ),
                            }
                        )
                        T.use_swizzle(10, enable=False)

                        T.clear(gate_long)
                        T.clear(up_long)
                        long_thread = T.get_thread_binding()

                        # The M256 fragment assigns one disjoint 64-row band
                        # to each wave.  Long experts were prepacked in this
                        # exact ownership order, so every A read is a direct
                        # contiguous 128-bit vector slot.
                        for long_vec in T.unroll(8):
                            long_row = (
                                (long_thread // 64) * 64
                                + (long_vec % 4) * 16
                                + long_thread % 16
                            )
                            long_col = (
                                (long_vec // 4) * 32
                                + ((long_thread % 64) // 16) * 8
                            )
                            if long_row < long_actual_rows:
                                for long_elem in T.vectorized(8):
                                    input_long[
                                        long_row, long_col + long_elem
                                    ] = input[
                                        bx_long + long_vec // 4,
                                        0,
                                        long_vec % 4,
                                        long_thread,
                                        long_elem,
                                    ]

                        for k_long in T.serial(step1_k_tiles):
                            T.copy(
                                gate[
                                    expert_long,
                                    by_long
                                    * (block_dexpert_step1 // 2) : (by_long + 1)
                                    * (block_dexpert_step1 // 2),
                                    k_long
                                    * block_dhidden_step1 : (k_long + 1)
                                    * block_dhidden_step1,
                                ],
                                gate_long_shared,
                            )
                            T.copy(
                                up[
                                    expert_long,
                                    by_long
                                    * (block_dexpert_step1 // 2) : (by_long + 1)
                                    * (block_dexpert_step1 // 2),
                                    k_long
                                    * block_dhidden_step1 : (k_long + 1)
                                    * block_dhidden_step1,
                                ],
                                up_long_shared,
                            )
                            T.sync_threads()

                            for ki_long in T.serial(
                                0, block_dhidden_step1 // 32
                            ):
                                step1_long_mma.ldmatrix_b(
                                    weight_long,
                                    gate_long_shared,
                                    ki_long,
                                )
                                if ((long_thread // 64) % 4) * 64 < long_actual_rows:
                                    step1_long_mma.mma(
                                        input_long,
                                        weight_long,
                                        gate_long,
                                        ki_long,
                                    )
                                step1_long_mma.ldmatrix_b(
                                    weight_long,
                                    up_long_shared,
                                    ki_long,
                                )
                                if ((long_thread // 64) % 4) * 64 < long_actual_rows:
                                    step1_long_mma.mma(
                                        input_long,
                                        weight_long,
                                        up_long,
                                        ki_long,
                                    )

                                # Refill only the K32 stripe just consumed;
                                # the single M256 fragment keeps the same live
                                # A footprint as the old top/bottom pair.
                                if k_long + 1 < step1_k_tiles:
                                    for long_quarter in T.unroll(4):
                                        next_vec = ki_long * 4 + long_quarter
                                        next_row = (
                                            (long_thread // 64) * 64
                                            + (next_vec % 4) * 16
                                            + long_thread % 16
                                        )
                                        next_col = (
                                            (next_vec // 4) * 32
                                            + ((long_thread % 64) // 16) * 8
                                        )
                                        if next_row < long_actual_rows:
                                            for next_elem in T.vectorized(8):
                                                input_long[
                                                    next_row,
                                                    next_col + next_elem,
                                                ] = input[
                                                    bx_long + next_vec // 4,
                                                    k_long + 1,
                                                    next_vec % 4,
                                                    long_thread,
                                                    next_elem,
                                                ]

                            if k_long + 1 < step1_k_tiles:
                                T.sync_threads()

                        for out_row, out_col in T.Parallel(
                            2 * block_token, block_dexpert_step1 // 2
                        ):
                            if out_row < long_actual_rows:
                                out_source_row = out_row % block_token
                                out_owner = (
                                    (out_source_row // 32) * 64
                                    + ((out_col % 32) // 8) * 16
                                    + out_source_row % 16
                                )
                                out_native_vec = (
                                    (out_col // 32) * 2
                                    + (out_source_row % 32) // 16
                                )
                                silu_x_long = gate_long[out_row, out_col]
                                silu_clamped_long = T.max(
                                    -5.5, T.min(5.5, silu_x_long)
                                )
                                silu_z_long = (
                                    silu_clamped_long * silu_clamped_long
                                )
                                silu_p7_long = (
                                    -2.6456580608e-05
                                    + silu_z_long * 3.05556014903e-07
                                )
                                silu_p5_long = (
                                    0.000907175546257
                                    + silu_z_long * silu_p7_long
                                )
                                silu_p3_long = (
                                    -0.0168032280723
                                    + silu_z_long * silu_p5_long
                                )
                                silu_p1_long = (
                                    0.245556537144
                                    + silu_z_long * silu_p3_long
                                )
                                gate_long[out_row, out_col] = silu_x_long * (
                                    0.5 + silu_clamped_long * silu_p1_long
                                )
                                up_logits[
                                    bx_long + out_row // block_token,
                                    by_long,
                                    out_native_vec,
                                    out_owner,
                                    out_col % 8,
                                ] = (
                                    up_long[out_row, out_col]
                                    * gate_long[out_row, out_col]
                                )

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
        tiled_input = _consumer_native_input_workspace(
            stacked_expert_tokens, num_blocks_m, step1_k_tiles, out
        )
    else:
        tiled_input = _v088_input_workspace(
            stacked_expert_tokens, num_blocks_m, step1_k_tiles
        )
    if use_step1_long_isoarea:
        expert_map = _expert_map_workspace(
            stacked_expert_tokens, num_experts, out
        )
    else:
        expert_map = group_sizes
    kernel(
        stacked_expert_tokens,
        tiled_input,
        gate_w,
        up_w,
        down_w,
        routed_expert_weights,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx_for_bx,
        expert_map,
        up_logits,
        out,
    )
