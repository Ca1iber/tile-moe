import torch
import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


_KERNEL_CACHE = {}
_WORKSPACE_CACHE = {}
_MOE_ASYNC_COPY_SOURCE = """
#include <maca_async.h>
__device__ __forceinline__ void moe_memcpy_async_16(
    void* dst_shared, const void* src_global, void* barrier_storage) {
  *reinterpret_cast<b128vectype*>(barrier_storage) =
      memcpy_async<16>(dst_shared, const_cast<void*>(src_global));
}
__device__ __forceinline__ void moe_memcpy_sync_16(
    void* dst_shared, const void* src_global, void* barrier_storage) {
  *reinterpret_cast<uint4*>(dst_shared) =
      *reinterpret_cast<const uint4*>(src_global);
}
__device__ __forceinline__ void moe_wait_async_16(const void* barrier_storage) {
  barrier_arrive_and_wait(
      *reinterpret_cast<const b128vectype*>(barrier_storage));
}
__device__ __forceinline__ void moe_continuous_memcpy_async_16(
    void* dst_shared, const void* src_global, void* barrier_storage) {
  cooperative_groups::details::continuous_pipeline_memcpy_async<16>(
      dst_shared, src_global);
}
__device__ __forceinline__ void moe_continuous_wait_all(
    const void* barrier_storage) {
  cooperative_groups::details::__pipeline_wait_prior(0);
}
__device__ __forceinline__ void moe_select_memcpy_async_16(
    void* dst_shared, const void* src_global, void* barrier_storage,
    int use_continuous) {
  if (use_continuous) {
    cooperative_groups::details::continuous_pipeline_memcpy_async<16>(
        dst_shared, src_global);
  } else {
    *reinterpret_cast<b128vectype*>(barrier_storage) =
        memcpy_async<16>(dst_shared, const_cast<void*>(src_global));
  }
}
__device__ __forceinline__ void moe_select_wait_async_16(
    const void* barrier_storage, int use_continuous) {
  if (use_continuous) {
    cooperative_groups::details::__pipeline_wait_prior(0);
  } else {
    barrier_arrive_and_wait(
        *reinterpret_cast<const b128vectype*>(barrier_storage));
  }
}
"""


def _workspace(stacked_expert_tokens, intermediate):
    device_index = stacked_expert_tokens.device.index
    key = (
        int(device_index if device_index is not None else 0),
        int(stacked_expert_tokens.shape[0]),
        int(intermediate),
        str(stacked_expert_tokens.dtype),
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
    use_step1_input_prefetch = False
    use_step1_prefetch_before_barrier = False
    use_step1_split_wave_async = False
    use_step2_input_prefetch = False
    use_step2_half_b_pingpong = False
    use_step2_row1_tail_async = False
    use_step2_continuous_async = False

    if hidden == 3584 and intermediate == 1024:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True
    elif hidden == 2048 and intermediate == 8192 and num_experts == 16:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True
        use_step1_split_wave_async = True
        use_step2_input_prefetch = True
        use_step2_half_b_pingpong = True
        use_step2_row1_tail_async = True
        use_step2_continuous_async = True
    elif hidden == 7168 and intermediate == 2048 and num_experts >= 32:
        use_grid_transpose_step1 = True
        use_grid_transpose_step2 = True
        use_step1_input_prefetch = True
        use_step1_prefetch_before_barrier = num_experts == 32
        use_step2_input_prefetch = True
        use_step2_half_b_pingpong = True
        # mcTracer showed a repeatable Step2 regression for the 64-expert OJ
        # shape, so keep the v036 token/wait path for both 7168x2048 cases.
        use_step2_continuous_async = False
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
        bool(use_step1_input_prefetch),
        bool(use_step1_prefetch_before_barrier),
        bool(use_step1_split_wave_async),
        bool(use_step2_input_prefetch),
        bool(use_step2_half_b_pingpong),
        bool(use_step2_row1_tail_async),
        bool(use_step2_continuous_async),
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
            use_step1_input_prefetch,
            use_step1_prefetch_before_barrier,
            use_step1_split_wave_async,
            use_step2_input_prefetch,
            use_step2_half_b_pingpong,
            use_step2_row1_tail_async,
            use_step2_continuous_async,
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

            input_shape = (total_padded, hidden)
            intermediate_shape = (total_padded, intermediate)
            gate_shape = (num_experts, intermediate, hidden)
            up_shape = (num_experts, intermediate, hidden)
            down_shape = (num_experts, hidden, intermediate)
            step1_col_tiles = (intermediate + block_dexpert_step1 - 1) // block_dexpert_step1
            step1_k_tiles = (hidden + block_dhidden_step1 - 1) // block_dhidden_step1
            step2_output_tile = 2 * block_dhidden_step2
            step2_col_tiles = (hidden + step2_output_tile - 1) // step2_output_tile
            step2_k_tiles = (intermediate + block_dexpert_step2 - 1) // block_dexpert_step2
            step1_grid_x = step1_col_tiles if use_grid_transpose_step1 else num_blocks_m
            step1_grid_y = num_blocks_m if use_grid_transpose_step1 else step1_col_tiles
            step2_grid_x = step2_col_tiles if use_grid_transpose_step2 else num_blocks_m
            step2_grid_y = num_blocks_m if use_grid_transpose_step2 else step2_col_tiles

            @T.prim_func
            def kernel(
                input: T.Tensor(input_shape, dtype),
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
                with T.Kernel(step1_grid_x, step1_grid_y, threads=threads) as (pid0, pid1):
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

                    T.clear(gate_local)
                    T.clear(up_local)
                    if use_step1_split_wave_async:
                        T.import_source(_MOE_ASYNC_COPY_SOURCE)
                        async_tx_step1 = T.get_thread_binding()

                        # Use one adjacent wave per tensor.  Each active thread
                        # issues sixteen requests; waves 1/3 are consumers only.
                        for row_batch_step1_init in T.serial(16):
                            if async_tx_step1 < 64:
                                logical_row_step1_init = row_batch_step1_init * 8 + async_tx_step1 // 8
                                physical_group_step1_init = async_tx_step1 % 8
                                logical_group_step1_init = physical_group_step1_init ^ (logical_row_step1_init % 8)
                                logical_col_step1_init = logical_group_step1_init * 8
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_continuous_memcpy_async_16",
                                        T.address_of(gate_shared[logical_row_step1_init, logical_col_step1_init]),
                                        T.address_of(
                                            gate[
                                                expert_id,
                                                by * block_dexpert_step1 + logical_row_step1_init,
                                                logical_col_step1_init,
                                            ]
                                        ),
                                        T.address_of(gate_shared[0, 0]),
                                    )
                                )
                                up_tx_step1_init = async_tx_step1
                                up_row_step1_init = row_batch_step1_init * 8 + up_tx_step1_init // 8
                                up_physical_group_step1_init = up_tx_step1_init % 8
                                up_logical_group_step1_init = up_physical_group_step1_init ^ (up_row_step1_init % 8)
                                up_col_step1_init = up_logical_group_step1_init * 8
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_continuous_memcpy_async_16",
                                        T.address_of(up_shared[up_row_step1_init, up_col_step1_init]),
                                        T.address_of(
                                            up[
                                                expert_id,
                                                by * block_dexpert_step1 + up_row_step1_init,
                                                up_col_step1_init,
                                            ]
                                        ),
                                        T.address_of(up_shared[0, 0]),
                                    )
                                )

                        for k_step1_async in T.serial(step1_k_tiles):
                            T.copy(
                                input[
                                    block_start : block_start + block_token,
                                    k_step1_async * block_dhidden_step1 : (k_step1_async + 1) * block_dhidden_step1,
                                ],
                                input_shared,
                            )
                            T.sync_threads()
                            for ki_step1_async in T.serial(0, block_dhidden_step1 // 32):
                                step1_mma.ldmatrix_b(weight_local, gate_shared, ki_step1_async)
                                step1_mma.mma(input_shared, weight_local, gate_local, ki_step1_async)
                                step1_mma.ldmatrix_b(weight_local, up_shared, ki_step1_async)
                                step1_mma.mma(input_shared, weight_local, up_local, ki_step1_async)
                            if k_step1_async + 1 < step1_k_tiles:
                                T.sync_threads()
                                for row_batch_step1_next in T.serial(16):
                                    if async_tx_step1 < 64:
                                        logical_row_step1_next = row_batch_step1_next * 8 + async_tx_step1 // 8
                                        physical_group_step1_next = async_tx_step1 % 8
                                        logical_group_step1_next = physical_group_step1_next ^ (logical_row_step1_next % 8)
                                        logical_col_step1_next = logical_group_step1_next * 8
                                        T.evaluate(
                                            T.call_extern(
                                                "handle",
                                                "moe_continuous_memcpy_async_16",
                                                T.address_of(gate_shared[logical_row_step1_next, logical_col_step1_next]),
                                                T.address_of(
                                                    gate[
                                                        expert_id,
                                                        by * block_dexpert_step1 + logical_row_step1_next,
                                                        (k_step1_async + 1) * block_dhidden_step1 + logical_col_step1_next,
                                                    ]
                                                ),
                                                T.address_of(gate_shared[0, 0]),
                                            )
                                        )
                                    if async_tx_step1 < 64:
                                        up_tx_step1_next = async_tx_step1
                                        up_row_step1_next = row_batch_step1_next * 8 + up_tx_step1_next // 8
                                        up_physical_group_step1_next = up_tx_step1_next % 8
                                        up_logical_group_step1_next = up_physical_group_step1_next ^ (up_row_step1_next % 8)
                                        up_col_step1_next = up_logical_group_step1_next * 8
                                        T.evaluate(
                                            T.call_extern(
                                                "handle",
                                                "moe_continuous_memcpy_async_16",
                                                T.address_of(up_shared[up_row_step1_next, up_col_step1_next]),
                                                T.address_of(
                                                    up[
                                                        expert_id,
                                                        by * block_dexpert_step1 + up_row_step1_next,
                                                        (k_step1_async + 1) * block_dhidden_step1 + up_col_step1_next,
                                                    ]
                                                ),
                                                T.address_of(up_shared[0, 0]),
                                            )
                                        )
                    elif use_step1_input_prefetch:
                        T.copy(
                            input[block_start : block_start + block_token, 0:block_dhidden_step1],
                            input_shared,
                        )
                        for k_pair in T.serial(step1_k_tiles // 2):
                            k_even = k_pair * 2
                            k_odd = k_even + 1
                            if use_step1_prefetch_before_barrier:
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                        k_even * block_dhidden_step1 : (k_even + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                                )
                                T.copy(
                                    input[
                                        block_start : block_start + block_token // 2,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    input_prefetch[0 : block_token // 2, 0:block_dhidden_step1],
                                )
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
                                T.copy(
                                    input[
                                        block_start + block_token // 2 : block_start + block_token,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
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
                                T.copy(
                                    input[
                                        block_start : block_start + block_token,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    input_prefetch,
                                )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
                                step1_mma.ldmatrix_b(weight_local, gate_shared, ki)
                                step1_mma.mma(input_shared, weight_local, gate_local, ki)
                                step1_mma.ldmatrix_b(weight_local, up_shared, ki)
                                step1_mma.mma(input_shared, weight_local, up_local, ki)
                            T.sync_threads()
                            if use_step1_prefetch_before_barrier:
                                T.copy(
                                    gate[
                                        expert_id,
                                        by * block_dexpert_step1 : by * block_dexpert_step1 + block_dexpert_step1 // 2,
                                        k_odd * block_dhidden_step1 : (k_odd + 1) * block_dhidden_step1,
                                    ],
                                    gate_shared[0 : block_dexpert_step1 // 2, 0:block_dhidden_step1],
                                )
                                if k_pair + 1 < step1_k_tiles // 2:
                                    k_next_even = k_odd + 1
                                    T.copy(
                                        input[
                                            block_start : block_start + block_token // 2,
                                            k_next_even * block_dhidden_step1 : (k_next_even + 1) * block_dhidden_step1,
                                        ],
                                        input_shared[0 : block_token // 2, 0:block_dhidden_step1],
                                    )
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
                                    T.copy(
                                        input[
                                            block_start + block_token // 2 : block_start + block_token,
                                            (k_odd + 1) * block_dhidden_step1 : (k_odd + 2) * block_dhidden_step1,
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
                                T.copy(
                                    input[
                                        block_start : block_start + block_token,
                                        k_next_even * block_dhidden_step1 : (k_next_even + 1) * block_dhidden_step1,
                                    ],
                                    input_shared,
                                )
                            for ki in T.serial(0, block_dhidden_step1 // 32):
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
                                    block_start : block_start + block_token,
                                    k * block_dhidden_step1 : (k + 1) * block_dhidden_step1,
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
                            up_logits[block_start + i, by * block_dexpert_step1 + j] = up_local[i, j] * gate_local[i, j]

                with T.Kernel(step2_grid_x, step2_grid_y, threads=threads) as (pid0, pid1):
                    bx = pid1 if use_grid_transpose_step2 else pid0
                    by = pid0 if use_grid_transpose_step2 else pid1
                    up_logits_shared = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
                    up_logits_prefetch = T.alloc_fragment((block_token, block_dexpert_step2), dtype=dtype)
                    down_shared = T.alloc_shared((step2_output_tile, block_dexpert_step2), dtype=dtype)
                    out_local_0 = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
                    out_local_1 = T.alloc_fragment((block_token, block_dhidden_step2), dtype=accum_dtype)
                    down_local = T.alloc_local((step2_mma.warp_cols * step2_mma.k_pack * step2_mma.local_size_b), dtype=dtype)
                    routed_weight_local = T.alloc_local((2,), dtype=T.float32)
                    down_copy_barrier = T.alloc_local((16,), dtype=T.uint32)

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

                    T.clear(out_local_0)
                    T.clear(out_local_1)
                    if use_step2_half_b_pingpong:
                        if not use_step1_split_wave_async:
                            T.import_source(_MOE_ASYNC_COPY_SOURCE)
                        # Split the 256x64 B tile into two 128x64 stages.  The
                        # public TileLang extern hook emits MXMACA's 16-byte
                        # global-to-shared BSM copy without importing TVM or a
                        # private intrinsic module.
                        T.copy(
                            up_logits[block_start : block_start + block_token, 0:block_dexpert_step2],
                            up_logits_shared,
                        )
                        T.copy(
                            down[
                                expert_id,
                                by * step2_output_tile : by * step2_output_tile + block_dhidden_step2,
                                0:block_dexpert_step2,
                            ],
                            down_shared[
                                block_dhidden_step2 : 2 * block_dhidden_step2,
                                0:block_dexpert_step2,
                            ],
                        )
                        T.sync_threads()
                        for k_pair in T.serial(step2_k_tiles // 2):
                            k_even = k_pair * 2
                            k_odd = k_even + 1
                            async_tx = T.get_thread_binding()

                            # Copy B1(even) while B0(even) feeds MMA.  As with
                            # v038 row1 batch0, map each 32-row copy batch onto
                            # the first two waves: eight 16-row rounds preserve
                            # all 1024 transactions while reducing per-batch
                            # four-wave BSM contention.  This mapping is only
                            # enabled for the Case1 continuous path.
                            for row_batch_0 in T.serial(
                                8 if use_step2_continuous_async else block_dhidden_step2 // (threads // 8)
                            ):
                                if (not use_step2_continuous_async) or async_tx < 128:
                                    logical_row_0 = row_batch_0 * (
                                        16 if use_step2_continuous_async else threads // 8
                                    ) + async_tx // 8
                                    physical_group_0 = async_tx % 8
                                    logical_group_0 = physical_group_0 ^ (logical_row_0 % 8)
                                    logical_col_0 = logical_group_0 * 8
                                    T.evaluate(
                                        T.call_extern(
                                        "handle",
                                        "moe_select_memcpy_async_16",
                                        T.address_of(
                                            down_shared[logical_row_0, logical_col_0]
                                        ),
                                        T.address_of(
                                            down[
                                                expert_id,
                                                by * step2_output_tile + block_dhidden_step2 + logical_row_0,
                                                k_even * block_dexpert_step2 + logical_col_0,
                                            ]
                                        ),
                                        T.access_ptr(down_copy_barrier[row_batch_0 * 4], "w", extent=4),
                                        use_step2_continuous_async,
                                        )
                                    )
                            T.copy(
                                up_logits[
                                    block_start : block_start + block_token,
                                    k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                                ],
                                up_logits_prefetch,
                            )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                step2_mma.ldmatrix_b(
                                    down_local,
                                    down_shared,
                                    ki,
                                    row_offset=block_dhidden_step2,
                                )
                                step2_mma.mma(up_logits_shared, down_local, out_local_0, ki)
                            for wait_slot_0 in T.serial(
                                0 if use_step2_continuous_async else 4
                            ):
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_select_wait_async_16",
                                        T.access_ptr(down_copy_barrier[wait_slot_0 * 4], "r", extent=4),
                                        use_step2_continuous_async,
                                    )
                                )
                            T.sync_threads()

                            # Copy B0(odd) while B1(even) feeds MMA.  Four-wave
                            # single-issue continuous BSM loses batch0 data on
                            # C500.  Restrict batch0 to the first two waves and
                            # let each participating thread issue two rows; this
                            # preserves all 256 transactions without the hazard.
                            # Batch1 stays synchronous; batches2/3 retain the
                            # accepted v037 continuous-async mapping.
                            for double_issue_1 in T.serial(
                                2 if use_step2_row1_tail_async else 0
                            ):
                                if async_tx < 128:
                                    logical_row_1_double = (
                                        double_issue_1 * 16 + async_tx // 8
                                    )
                                    physical_group_1_double = async_tx % 8
                                    logical_group_1_double = (
                                        physical_group_1_double
                                        ^ (logical_row_1_double % 8)
                                    )
                                    logical_col_1_double = logical_group_1_double * 8
                                    T.evaluate(
                                        T.call_extern(
                                            "handle",
                                            "moe_select_memcpy_async_16",
                                            T.address_of(
                                                down_shared[
                                                    block_dhidden_step2
                                                    + logical_row_1_double,
                                                    logical_col_1_double,
                                                ]
                                            ),
                                            T.address_of(
                                                down[
                                                    expert_id,
                                                    by * step2_output_tile
                                                    + logical_row_1_double,
                                                    k_odd * block_dexpert_step2
                                                    + logical_col_1_double,
                                                ]
                                            ),
                                            T.access_ptr(
                                                down_copy_barrier[double_issue_1 * 4],
                                                "w",
                                                extent=4,
                                            ),
                                            use_step2_continuous_async,
                                        )
                                    )
                            for row_batch_1 in T.serial(
                                1 if use_step2_row1_tail_async else 0,
                                2
                                if use_step2_row1_tail_async
                                else block_dhidden_step2 // (threads // 8)
                            ):
                                logical_row_1 = row_batch_1 * (threads // 8) + async_tx // 8
                                physical_group_1 = async_tx % 8
                                logical_group_1 = physical_group_1 ^ (logical_row_1 % 8)
                                logical_col_1 = logical_group_1 * 8
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_memcpy_sync_16",
                                        T.address_of(
                                            down_shared[
                                                block_dhidden_step2 + logical_row_1,
                                                logical_col_1,
                                            ]
                                        ),
                                        T.address_of(
                                            down[
                                                expert_id,
                                                by * step2_output_tile + logical_row_1,
                                                k_odd * block_dexpert_step2 + logical_col_1,
                                            ]
                                        ),
                                        T.access_ptr(down_copy_barrier[row_batch_1 * 4], "w", extent=4),
                                    )
                                )
                            for row_batch_1_async in T.serial(
                                2,
                                block_dhidden_step2 // (threads // 8)
                                if use_step2_row1_tail_async
                                else 1,
                            ):
                                logical_row_1_async = (
                                    row_batch_1_async * (threads // 8) + async_tx // 8
                                )
                                physical_group_1_async = async_tx % 8
                                logical_group_1_async = physical_group_1_async ^ (
                                    logical_row_1_async % 8
                                )
                                logical_col_1_async = logical_group_1_async * 8
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_select_memcpy_async_16",
                                        T.address_of(
                                            down_shared[
                                                block_dhidden_step2 + logical_row_1_async,
                                                logical_col_1_async,
                                            ]
                                        ),
                                        T.address_of(
                                            down[
                                                expert_id,
                                                by * step2_output_tile + logical_row_1_async,
                                                k_odd * block_dexpert_step2
                                                + logical_col_1_async,
                                            ]
                                        ),
                                        T.access_ptr(
                                            down_copy_barrier[row_batch_1_async * 4],
                                            "w",
                                            extent=4,
                                        ),
                                        use_step2_continuous_async,
                                    )
                                )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                step2_mma.ldmatrix_b(
                                    down_local,
                                    down_shared,
                                    ki,
                                    row_offset=0,
                                )
                                step2_mma.mma(up_logits_shared, down_local, out_local_1, ki)
                            for wait_slot_1 in T.serial(
                                2,
                                2
                                if use_step2_row1_tail_async
                                else 1,
                            ):
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_select_wait_async_16",
                                        T.access_ptr(
                                            down_copy_barrier[wait_slot_1 * 4], "r", extent=4
                                        ),
                                        use_step2_continuous_async,
                                    )
                                )
                            T.sync_threads()

                            # Copy B1(odd) while B0(odd) feeds MMA, and prepare
                            # the next even A fragment when another pair exists.
                            for row_batch_2 in T.serial(block_dhidden_step2 // (threads // 8)):
                                logical_row_2 = row_batch_2 * (threads // 8) + async_tx // 8
                                physical_group_2 = async_tx % 8
                                logical_group_2 = physical_group_2 ^ (logical_row_2 % 8)
                                logical_col_2 = logical_group_2 * 8
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_select_memcpy_async_16",
                                        T.address_of(
                                            down_shared[logical_row_2, logical_col_2]
                                        ),
                                        T.address_of(
                                            down[
                                                expert_id,
                                                by * step2_output_tile + block_dhidden_step2 + logical_row_2,
                                                k_odd * block_dexpert_step2 + logical_col_2,
                                            ]
                                        ),
                                        T.access_ptr(down_copy_barrier[row_batch_2 * 4], "w", extent=4),
                                        use_step2_continuous_async,
                                    )
                                )
                            k_next_even = k_odd + 1
                            if k_pair + 1 < step2_k_tiles // 2:
                                T.copy(
                                    up_logits[
                                        block_start : block_start + block_token,
                                        k_next_even * block_dexpert_step2 : (k_next_even + 1) * block_dexpert_step2,
                                    ],
                                    up_logits_shared,
                                )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                step2_mma.ldmatrix_b(
                                    down_local,
                                    down_shared,
                                    ki,
                                    row_offset=block_dhidden_step2,
                                )
                                step2_mma.mma(up_logits_prefetch, down_local, out_local_0, ki)
                            for wait_slot_2 in T.serial(
                                0 if use_step2_continuous_async else 4
                            ):
                                T.evaluate(
                                    T.call_extern(
                                        "handle",
                                        "moe_select_wait_async_16",
                                        T.access_ptr(down_copy_barrier[wait_slot_2 * 4], "r", extent=4),
                                        use_step2_continuous_async,
                                    )
                                )
                            T.sync_threads()

                            # Copy B0(next even) while B1(odd) feeds MMA.
                            if k_pair + 1 < step2_k_tiles // 2:
                                for row_batch_3 in T.serial(block_dhidden_step2 // (threads // 8)):
                                    logical_row_3 = row_batch_3 * (threads // 8) + async_tx // 8
                                    physical_group_3 = async_tx % 8
                                    logical_group_3 = physical_group_3 ^ (logical_row_3 % 8)
                                    logical_col_3 = logical_group_3 * 8
                                    T.evaluate(
                                        T.call_extern(
                                            "handle",
                                            "moe_select_memcpy_async_16",
                                            T.address_of(
                                                down_shared[
                                                    block_dhidden_step2 + logical_row_3,
                                                    logical_col_3,
                                                ]
                                            ),
                                            T.address_of(
                                                down[
                                                    expert_id,
                                                    by * step2_output_tile + logical_row_3,
                                                    k_next_even * block_dexpert_step2 + logical_col_3,
                                                ]
                                            ),
                                            T.access_ptr(down_copy_barrier[row_batch_3 * 4], "w", extent=4),
                                            use_step2_continuous_async,
                                        )
                                    )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
                                step2_mma.ldmatrix_b(
                                    down_local,
                                    down_shared,
                                    ki,
                                    row_offset=0,
                                )
                                step2_mma.mma(up_logits_prefetch, down_local, out_local_1, ki)
                            if k_pair + 1 < step2_k_tiles // 2:
                                for wait_slot_3 in T.serial(
                                    0 if use_step2_continuous_async else 4
                                ):
                                    T.evaluate(
                                        T.call_extern(
                                            "handle",
                                            "moe_select_wait_async_16",
                                            T.access_ptr(
                                                down_copy_barrier[wait_slot_3 * 4], "r", extent=4
                                            ),
                                            use_step2_continuous_async,
                                        )
                                    )
                                T.sync_threads()
                    elif use_step2_input_prefetch:
                        T.copy(
                            up_logits[block_start : block_start + block_token, 0:block_dexpert_step2],
                            up_logits_shared,
                        )
                        for k_pair in T.serial(step2_k_tiles // 2):
                            k_even = k_pair * 2
                            k_odd = k_even + 1
                            T.copy(
                                down[
                                    expert_id,
                                    by * step2_output_tile : (by + 1) * step2_output_tile,
                                    k_even * block_dexpert_step2 : (k_even + 1) * block_dexpert_step2,
                                ],
                                down_shared,
                            )
                            T.sync_threads()
                            T.copy(
                                up_logits[
                                    block_start : block_start + block_token,
                                    k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                                ],
                                up_logits_prefetch,
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
                            T.sync_threads()
                            T.copy(
                                down[
                                    expert_id,
                                    by * step2_output_tile : (by + 1) * step2_output_tile,
                                    k_odd * block_dexpert_step2 : (k_odd + 1) * block_dexpert_step2,
                                ],
                                down_shared,
                            )
                            T.sync_threads()
                            if k_pair + 1 < step2_k_tiles // 2:
                                k_next_even = k_odd + 1
                                T.copy(
                                    up_logits[
                                        block_start : block_start + block_token,
                                        k_next_even * block_dexpert_step2 : (k_next_even + 1) * block_dexpert_step2,
                                    ],
                                    up_logits_shared,
                                )
                            for ki in T.serial(0, block_dexpert_step2 // 32):
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

    up_logits = _workspace(stacked_expert_tokens, intermediate)
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
