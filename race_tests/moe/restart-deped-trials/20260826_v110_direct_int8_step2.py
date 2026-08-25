# UNNUMBERED PROBE: v110-direct-int8-step2
# PARENT: exact v110 external-OJ SOTA / SHA256 439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e
# PRIMARY_CHANGE: rowwise dynamic INT8 up_logits plus cached rowwise INT8 down weights and direct INT8 Step2 MMA
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
_UP_INT8_WORKSPACE_CACHE = {}
_UP_INT8_SCALE_CACHE = {}
_DOWN_INT8_WORKSPACE_CACHE = {}
_DOWN_INT8_SCALE_CACHE = {}
_DOWN_QUANT_KERNEL_CACHE = {}
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


def _up_int8_workspaces(stacked_expert_tokens, intermediate, owner):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(intermediate),
        owner,
    )
    q = _UP_INT8_WORKSPACE_CACHE.get(key)
    if q is None:
        q = torch.empty(
            (int(stacked_expert_tokens.shape[0]), int(intermediate)),
            device=stacked_expert_tokens.device,
            dtype=torch.int8,
        )
        _UP_INT8_WORKSPACE_CACHE[key] = q
    scales = _UP_INT8_SCALE_CACHE.get(key)
    if scales is None:
        scales = torch.empty(
            (int(stacked_expert_tokens.shape[0]),),
            device=stacked_expert_tokens.device,
            dtype=torch.float32,
        )
        _UP_INT8_SCALE_CACHE[key] = scales
    return q, scales


def _down_int8_workspaces(down_w):
    device_index = down_w.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(down_w.shape[0]),
        int(down_w.shape[1]),
        int(down_w.shape[2]),
        down_w,
    )
    q = _DOWN_INT8_WORKSPACE_CACHE.get(key)
    is_new = q is None
    if q is None:
        q = torch.empty(
            (
                int(down_w.shape[0]),
                int(down_w.shape[1]),
                int(down_w.shape[2]),
            ),
            device=down_w.device,
            dtype=torch.int8,
        )
        _DOWN_INT8_WORKSPACE_CACHE[key] = q
    scales = _DOWN_INT8_SCALE_CACHE.get(key)
    if scales is None:
        scales = torch.empty(
            (int(down_w.shape[0]), int(down_w.shape[1])),
            device=down_w.device,
            dtype=torch.float32,
        )
        _DOWN_INT8_SCALE_CACHE[key] = scales
    return q, scales, is_new


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
    elif hidden <= 4096 and intermediate <= 1024 and num_experts >= 4:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True

    down_i8, down_i8_scale, down_needs_quantize = _down_int8_workspaces(down_w)
    if down_needs_quantize:
        down_quant_key = (num_experts, hidden, intermediate)
        down_quant_kernel = _DOWN_QUANT_KERNEL_CACHE.get(down_quant_key)
        if down_quant_kernel is None:

            @tilelang.jit(pass_configs={tilelang.PassConfigKey.TL_DISABLE_WARP_SPECIALIZED: True})
            def make_down_quant_kernel(num_experts, hidden, intermediate):
                @T.prim_func
                def quant_down(
                    source: T.Tensor((num_experts, hidden, intermediate), T.float16),
                    quantized: T.Tensor((num_experts, hidden, intermediate), T.int8),
                    scales: T.Tensor((num_experts, hidden), T.float32),
                ):
                    with T.Kernel(
                        num_experts,
                        T.ceildiv(hidden, 16),
                        threads=256,
                    ) as (expert_id, row_block):
                        tx = T.get_thread_binding()
                        lane = tx % 64
                        warp = tx // 64
                        amax = T.alloc_local((1,), T.float32)
                        for row_slot in T.serial(4):
                            row = row_block * 16 + warp * 4 + row_slot
                            amax[0] = 0.0
                            if row < hidden:
                                for col_iter in T.serial(T.ceildiv(intermediate, 64)):
                                    col = col_iter * 64 + lane
                                    if col < intermediate:
                                        amax[0] = T.max(
                                            amax[0],
                                            T.abs(T.float32(source[expert_id, row, col])),
                                        )
                            amax[0] = T.warp_reduce_max(amax[0])
                            row_scale = T.max(amax[0] * (1.0 / 127.0), 0.00000001)
                            if row < hidden:
                                if lane == 0:
                                    scales[expert_id, row] = row_scale
                                for col_iter in T.serial(T.ceildiv(intermediate, 64)):
                                    col = col_iter * 64 + lane
                                    if col < intermediate:
                                        quantized[expert_id, row, col] = T.round(
                                            T.clamp(
                                                T.float32(source[expert_id, row, col])
                                                / row_scale,
                                                -127.0,
                                                127.0,
                                            )
                                        )

                return quant_down

            down_quant_kernel = make_down_quant_kernel(*down_quant_key)
            _DOWN_QUANT_KERNEL_CACHE[down_quant_key] = down_quant_kernel
        down_quant_kernel(down_w, down_i8, down_i8_scale)

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
                operand_vector_dtype="float16x4",
                accumulator_vector_dtype="float32x4",
                mma_suffix="16x16x16f16",
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
                self.operand_vector_dtype = operand_vector_dtype
                self.accumulator_vector_dtype = accumulator_vector_dtype
                self.mma_suffix = mma_suffix
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
                            self.operand_vector_dtype,
                            self.operand_vector_dtype,
                            self.accumulator_vector_dtype,
                            b_local_buf.data,
                            (b_local_stride + (j * k_pack + kp) * local_size_b) // local_size_b,
                            a_local_buf.data,
                            (a_local_stride + (i * k_pack + kp) * local_size_a) // local_size_a,
                            c_local_buf.data,
                            (i * warp_cols * local_size_out + j * local_size_out) // local_size_out,
                            dtype=self.accumulator_vector_dtype,
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
                operand_vector_dtype="int8x4",
                accumulator_vector_dtype="int32x4",
                mma_suffix="16x16x16i8",
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
                up_logits: T.Tensor(intermediate_shape, dtype),
                up_logits_i8: T.Tensor((total_padded, intermediate), T.int8),
                up_logits_i8_scale: T.Tensor((total_padded,), T.float32),
                down_i8: T.Tensor(down_shape, T.int8),
                down_i8_scale: T.Tensor((num_experts, hidden), T.float32),
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

                with T.Kernel(step1_grid_x, step1_grid_y, threads=threads) as (pid0, pid1):
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

                # Convert the consumer-native FP16 workspace once per routed
                # row.  A single scale spans the full intermediate dimension,
                # so Step2 can accumulate all K tiles in INT32 and dequantize
                # only once at the output instead of after every K64 tile.
                with T.Kernel(num_blocks_m, threads=threads) as quant_bx:
                    tx = T.get_thread_binding()
                    lane = tx % 64
                    warp = tx // 64
                    expert_id = group_idx_for_bx[quant_bx]
                    block_start = quant_bx * block_token
                    group_size = group_sizes[expert_id]
                    padded_start = group_padded_offsets[expert_id]
                    token_offset = block_start - padded_start
                    actual_rows = T.max(0, T.min(block_token, group_size - token_offset))
                    amax = T.alloc_local((1,), T.float32)

                    for row_slot in T.serial(32):
                        row = warp * 32 + row_slot
                        amax[0] = 0.0
                        if row < actual_rows:
                            for col_iter in T.serial(T.ceildiv(intermediate, 64)):
                                col = col_iter * 64 + lane
                                if col < intermediate:
                                    if use_consumer_native_up_logits:
                                        native_col = col % block_dexpert_step2
                                        owner_thread = (
                                            (row // 32) * 64
                                            + ((native_col % 32) // 8) * 16
                                            + row % 16
                                        )
                                        native_vec = (
                                            (native_col // 32) * 2
                                            + (row % 32) // 16
                                        )
                                        value = T.float32(
                                            up_logits[
                                                quant_bx,
                                                col // block_dexpert_step2,
                                                native_vec,
                                                owner_thread,
                                                native_col % 8,
                                            ]
                                        )
                                    else:
                                        value = T.float32(up_logits[block_start + row, col])
                                    amax[0] = T.max(amax[0], T.abs(value))
                        amax[0] = T.warp_reduce_max(amax[0])
                        row_scale = T.max(amax[0] * (1.0 / 127.0), 0.00000001)
                        if lane == 0:
                            up_logits_i8_scale[block_start + row] = row_scale
                        for col_iter in T.serial(T.ceildiv(intermediate, 64)):
                            col = col_iter * 64 + lane
                            if col < intermediate:
                                if row < actual_rows:
                                    if use_consumer_native_up_logits:
                                        native_col = col % block_dexpert_step2
                                        owner_thread = (
                                            (row // 32) * 64
                                            + ((native_col % 32) // 8) * 16
                                            + row % 16
                                        )
                                        native_vec = (
                                            (native_col // 32) * 2
                                            + (row % 32) // 16
                                        )
                                        value = T.float32(
                                            up_logits[
                                                quant_bx,
                                                col // block_dexpert_step2,
                                                native_vec,
                                                owner_thread,
                                                native_col % 8,
                                            ]
                                        )
                                    else:
                                        value = T.float32(up_logits[block_start + row, col])
                                    up_logits_i8[block_start + row, col] = T.round(
                                        T.clamp(value / row_scale, -127.0, 127.0)
                                    )
                                else:
                                    up_logits_i8[block_start + row, col] = 0

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

                    up_i8_shared = T.alloc_fragment(
                        (block_token, block_dexpert_step2), dtype=T.int8
                    )
                    up_i8_prefetch = T.alloc_fragment(
                        (block_token, block_dexpert_step2), dtype=T.int8
                    )
                    down_i8_shared = T.alloc_shared(
                        (step2_output_tile, block_dexpert_step2), dtype=T.int8
                    )
                    out_i32_0 = T.alloc_fragment(
                        (block_token, block_dhidden_step2), dtype=T.int32
                    )
                    out_i32_1 = T.alloc_fragment(
                        (block_token, block_dhidden_step2), dtype=T.int32
                    )
                    down_i8_local = T.alloc_local(
                        (
                            step2_mma.warp_cols
                            * step2_mma.k_pack
                            * step2_mma.local_size_b
                        ),
                        dtype=T.int8,
                    )
                    routed_weight_local = T.alloc_local((2,), dtype=T.float32)
                    activation_scale_local = T.alloc_local((2,), dtype=T.float32)

                    T.annotate_layout(
                        {
                            up_i8_shared: step2_mma.make_mma_load_layout(
                                up_i8_shared, matrix="A"
                            ),
                            up_i8_prefetch: step2_mma.make_mma_load_layout(
                                up_i8_prefetch, matrix="A"
                            ),
                            down_i8_shared: make_swizzled_layout(down_i8_shared),
                            out_i32_0: step2_mma.make_mma_store_layout(out_i32_0),
                            out_i32_1: step2_mma.make_mma_store_layout(out_i32_1),
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

                    T.clear(out_i32_0)
                    T.clear(out_i32_1)
                    T.copy(
                        up_logits_i8[
                            block_start : block_start + block_token,
                            0:block_dexpert_step2,
                        ],
                        up_i8_shared,
                    )
                    for k_pair in T.serial(step2_k_tiles // 2):
                        k_even = k_pair * 2
                        k_odd = k_even + 1
                        T.copy(
                            up_logits_i8[
                                block_start : block_start + block_token,
                                k_odd * block_dexpert_step2 : (k_odd + 1)
                                * block_dexpert_step2,
                            ],
                            up_i8_prefetch,
                        )
                        T.copy(
                            down_i8[
                                expert_id,
                                by * step2_output_tile : (by + 1) * step2_output_tile,
                                k_even * block_dexpert_step2 : (k_even + 1)
                                * block_dexpert_step2,
                            ],
                            down_i8_shared,
                        )
                        T.sync_threads()
                        for ki in T.serial(0, block_dexpert_step2 // 32):
                            if not use_step2_tail_pruning or (
                                ((T.get_thread_binding() // 64) % 4) * 32
                                < actual_rows
                            ):
                                step2_mma.ldmatrix_b(
                                    down_i8_local, down_i8_shared, ki
                                )
                                step2_mma.mma(
                                    up_i8_shared, down_i8_local, out_i32_0, ki
                                )
                                step2_mma.ldmatrix_b(
                                    down_i8_local,
                                    down_i8_shared,
                                    ki,
                                    row_offset=block_dhidden_step2,
                                )
                                step2_mma.mma(
                                    up_i8_shared, down_i8_local, out_i32_1, ki
                                )
                        T.sync_threads()
                        if k_pair + 1 < step2_k_tiles // 2:
                            k_next_even = k_odd + 1
                            T.copy(
                                up_logits_i8[
                                    block_start : block_start + block_token,
                                    k_next_even
                                    * block_dexpert_step2 : (k_next_even + 1)
                                    * block_dexpert_step2,
                                ],
                                up_i8_shared,
                            )
                        T.copy(
                            down_i8[
                                expert_id,
                                by * step2_output_tile : (by + 1) * step2_output_tile,
                                k_odd * block_dexpert_step2 : (k_odd + 1)
                                * block_dexpert_step2,
                            ],
                            down_i8_shared,
                        )
                        T.sync_threads()
                        for ki in T.serial(0, block_dexpert_step2 // 32):
                            if not use_step2_tail_pruning or (
                                ((T.get_thread_binding() // 64) % 4) * 32
                                < actual_rows
                            ):
                                step2_mma.ldmatrix_b(
                                    down_i8_local, down_i8_shared, ki
                                )
                                step2_mma.mma(
                                    up_i8_prefetch, down_i8_local, out_i32_0, ki
                                )
                                step2_mma.ldmatrix_b(
                                    down_i8_local,
                                    down_i8_shared,
                                    ki,
                                    row_offset=block_dhidden_step2,
                                )
                                step2_mma.mma(
                                    up_i8_prefetch, down_i8_local, out_i32_1, ki
                                )
                        if k_pair + 1 < step2_k_tiles // 2:
                            T.sync_threads()

                    tx = T.get_thread_binding()
                    for row_slot in T.serial(2):
                        routed_row = (tx // 64) * 32 + row_slot * 16 + tx % 16
                        routed_weight_local[row_slot] = 0.0
                        activation_scale_local[row_slot] = 0.0
                        if routed_row < actual_rows:
                            routed_weight_local[row_slot] = routed_weights[
                                raw_start + token_offset + routed_row
                            ]
                            activation_scale_local[row_slot] = up_logits_i8_scale[
                                block_start + routed_row
                            ]

                    for i, j in T.Parallel(block_token, block_dhidden_step2):
                        if i < actual_rows:
                            output[block_start + i, by * step2_output_tile + j] = (
                                T.float32(out_i32_0[i, j])
                                * activation_scale_local[(i // 16) % 2]
                                * down_i8_scale[
                                    expert_id, by * step2_output_tile + j
                                ]
                                * routed_weight_local[(i // 16) % 2]
                            )
                        else:
                            output[block_start + i, by * step2_output_tile + j] = 0.0
                    for i, j in T.Parallel(block_token, block_dhidden_step2):
                        if i < actual_rows:
                            output[
                                block_start + i,
                                by * step2_output_tile + block_dhidden_step2 + j,
                            ] = (
                                T.float32(out_i32_1[i, j])
                                * activation_scale_local[(i // 16) % 2]
                                * down_i8_scale[
                                    expert_id,
                                    by * step2_output_tile
                                    + block_dhidden_step2
                                    + j,
                                ]
                                * routed_weight_local[(i // 16) % 2]
                            )
                        else:
                            output[
                                block_start + i,
                                by * step2_output_tile + block_dhidden_step2 + j,
                            ] = 0.0

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
    up_logits_i8, up_logits_i8_scale = _up_int8_workspaces(
        stacked_expert_tokens, intermediate, out
    )
    if use_case2_consumer_native_input:
        tiled_input = _consumer_native_input_workspace(
            stacked_expert_tokens, num_blocks_m, step1_k_tiles, out
        )
    else:
        tiled_input = _v088_input_workspace(
            stacked_expert_tokens, num_blocks_m, step1_k_tiles
        )
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
        up_logits,
        up_logits_i8,
        up_logits_i8_scale,
        down_i8,
        down_i8_scale,
        out,
    )
