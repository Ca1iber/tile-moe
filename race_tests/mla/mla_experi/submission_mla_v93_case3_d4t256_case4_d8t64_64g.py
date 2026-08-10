import tilelang
import tilelang.language as T
from tilelang.layout import make_swizzled_layout


_KERNEL_CACHE = {}


def run_kernel(q, q_pe, kv, k_pe, output, batch, heads, kv_heads, kv_ctx, dim, pe_dim):
    batch = int(batch)
    heads = int(heads)
    kv_heads = int(kv_heads)
    kv_ctx = int(kv_ctx)
    dim = int(dim)
    pe_dim = int(pe_dim)
    block_N = 32
    block_H = min(16, heads // kv_heads)
    load_ahead_rope = kv_ctx >= 8192
    if batch >= 32:
        num_split = 16
    elif batch == 16:
        num_split = 16 if kv_ctx <= 2048 else 32
    elif batch == 8:
        num_split = 8 if kv_ctx <= 2048 else 64
    elif batch == 4:
        if kv_ctx <= 2048:
            num_split = 16
        elif kv_ctx >= 32768:
            num_split = 128
        else:
            num_split = 64
    elif batch == 2:
        num_split = 128 if kv_ctx >= 32768 else 32
    else:
        num_split = 64 if kv_ctx <= 4096 else 104
    softmax_scale = (dim + pe_dim) ** -0.5
    key = (batch, heads, kv_heads, kv_ctx, dim, pe_dim, block_N, block_H, num_split, load_ahead_rope, softmax_scale)
    kernel = _KERNEL_CACHE.get(key)
    if kernel is None:
        __metaclass__ = type
        class MinimalMacaMMA:
            WARP_SIZE = 64

            def __init__(
                self,
                a_dtype=T.float16,
                b_dtype=T.float16,
                accum_dtype=T.float32,
                a_transposed=False,
                b_transposed=False,
                block_row_warps=1,
                block_col_warps=1,
                warp_row_tiles=16,
                warp_col_tiles=16,
                chunk=32,
                k_pack=2,
                is_m_first=False,
                **kwargs,
            ):
                self.a_transposed = a_transposed
                self.b_transposed = b_transposed
                self.block_row_warps = block_row_warps
                self.block_col_warps = block_col_warps
                self.warp_row_tiles = warp_row_tiles
                self.warp_col_tiles = warp_col_tiles
                self.chunk = chunk
                self.k_pack = k_pack
                self.is_m_first = is_m_first
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
                current_frame = T.KernelLaunchFrame.Current()
                assert current_frame is not None
                return current_frame.get_thread_binding()

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

            def _layout_a_16x32(self, thread_id, local_id):
                row = thread_id % 16
                col = (thread_id // 16) * 8 + local_id
                return row, col

            def _layout_b_16x32(self, thread_id, local_id):
                row = local_id + (thread_id // 16) * 8
                col = thread_id % 16
                return row, col

            def ldmatrix_a(self, a_local_buf, a_shared_buf, ki, rk=0):
                warp_row_tiles = self.warp_row_tiles
                warp_rows = self.warp_rows
                chunk = self.chunk
                micro_size_x = self.micro_size_x
                micro_size_k = self.micro_size_k
                local_size_a = self.local_size_a
                k_pack = self.k_pack
                thread_binding = self.get_thread_binding()

                @T.macro
                def warp_ldmatrix_a(a_local_buf, a_shared_buf, ki, thread_binding, rk=0):
                    tx, _, warp_m = self.extract_thread_binding(thread_binding)
                    for i in T.serial(warp_rows):
                        for local_id in T.vectorized(k_pack * local_size_a):
                            row = tx % 16
                            col = (tx // 16) * 8 + local_id
                            l = warp_m * warp_row_tiles + i * micro_size_x
                            r = rk * chunk + ki * (k_pack * micro_size_k)
                            a_local_buf[i * k_pack * local_size_a + local_id] = a_shared_buf[l + row, r + col]

                return warp_ldmatrix_a(a_local_buf, a_shared_buf, ki, thread_binding, rk)

            def ldmatrix_b(self, b_local_buf, b_shared_buf, ki, rk=0):
                warp_col_tiles = self.warp_col_tiles
                warp_cols = self.warp_cols
                chunk = self.chunk
                micro_size_y = self.micro_size_y
                micro_size_k = self.micro_size_k
                local_size_b = self.local_size_b
                k_pack = self.k_pack
                is_transposed = self.b_transposed
                thread_binding = self.get_thread_binding()

                @T.macro
                def warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding, rk=0):
                    tx, warp_n, _ = self.extract_thread_binding(thread_binding)
                    if is_transposed:
                        for j in T.serial(warp_cols):
                            for local_id in T.vectorized(k_pack * local_size_b):
                                row = tx % 16
                                col = (tx // 16) * 8 + local_id
                                l = warp_n * warp_col_tiles + j * micro_size_y
                                r = rk * chunk + ki * (k_pack * micro_size_k)
                                b_local_buf[j * k_pack * local_size_b + local_id] = b_shared_buf[l + row, r + col]
                    else:
                        for j in T.serial(warp_cols):
                            for local_id in T.vectorized(k_pack * local_size_b):
                                row = local_id + (tx // 16) * 8
                                col = tx % 16
                                l = rk * chunk + ki * (k_pack * micro_size_k)
                                r = warp_n * warp_col_tiles + j * micro_size_y
                                b_local_buf[j * k_pack * local_size_b + local_id] = b_shared_buf[l + row, r + col]

                return warp_ldmatrix_b(b_local_buf, b_shared_buf, ki, thread_binding, rk)

            def mma(self, a_local_buf, b_local_buf, c_local_buf, k_inner=0):
                warp_rows = self.warp_rows
                warp_cols = self.warp_cols
                local_size_a = self.local_size_a
                local_size_b = self.local_size_b
                local_size_out = self.local_size_out
                k_pack = self.k_pack
                a_local_stride = 0 if self.b_transposed else k_inner * warp_rows * k_pack * local_size_a
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
                    return i + 16 * (j // 8)

                def forward_index(i, j):
                    return j % 8

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

        @tilelang.jit(
            pass_configs={tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True},
        )
        def flashattn(batch, heads, kv_head_num, seqlen_kv, dim, pe_dim, block_N, block_H, num_split, load_ahead_rope, softmax_scale):
            scale = float(softmax_scale * 1.44269504)  # log2(e)
            dtype = T.float16
            accum_dtype = T.float32
            combine_threads = 256 if batch <= 4 else 128
            kv_group_num = heads // kv_head_num
            VALID_BLOCK_H = min(block_H, kv_group_num)
            assert kv_head_num == 1, "kv_head_num must be 1"
            qk_k_pack = 2
            qk_micro_size_k = 16
            qk_block_row_warps = 1
            qk_block_col_warps = 2
            qk_warp_row_tiles = block_H // qk_block_row_warps
            qk_warp_col_tiles = block_N // qk_block_col_warps
            qk_warp_rows = qk_warp_row_tiles // 16
            qk_warp_cols = qk_warp_col_tiles // 16
            qk_local_size_a = (16 * qk_micro_size_k) // 64
            qk_local_size_b = (16 * qk_micro_size_k) // 64
            qk_content_chunks = dim // (qk_micro_size_k * qk_k_pack)
            qk_pe_chunks = pe_dim // (qk_micro_size_k * qk_k_pack)
            qk_mma = MinimalMacaMMA(
                a_dtype=dtype,
                b_dtype=dtype,
                accum_dtype=accum_dtype,
                a_transposed=False,
                b_transposed=True,
                block_row_warps=qk_block_row_warps,
                block_col_warps=qk_block_col_warps,
                warp_row_tiles=qk_warp_row_tiles,
                warp_col_tiles=qk_warp_col_tiles,
                chunk=dim,
                k_pack=qk_k_pack,
            )
            qk_pe_mma = MinimalMacaMMA(
                a_dtype=dtype,
                b_dtype=dtype,
                accum_dtype=accum_dtype,
                a_transposed=False,
                b_transposed=True,
                block_row_warps=qk_block_row_warps,
                block_col_warps=qk_block_col_warps,
                warp_row_tiles=qk_warp_row_tiles,
                warp_col_tiles=qk_warp_col_tiles,
                chunk=pe_dim,
                k_pack=qk_k_pack,
            )
            pv_k_pack = 2
            pv_micro_size_k = 16
            pv_block_row_warps = 1
            pv_block_col_warps = 4
            pv_warp_row_tiles = block_H // pv_block_row_warps
            pv_warp_col_tiles = dim // pv_block_col_warps
            pv_warp_cols = pv_warp_col_tiles // 16
            pv_local_size_b = (16 * pv_micro_size_k) // 64
            pv_mma = MinimalMacaMMA(
                a_dtype=dtype,
                b_dtype=dtype,
                accum_dtype=accum_dtype,
                a_transposed=False,
                b_transposed=False,
                block_row_warps=pv_block_row_warps,
                block_col_warps=pv_block_col_warps,
                warp_row_tiles=pv_warp_row_tiles,
                warp_col_tiles=pv_warp_col_tiles,
                chunk=block_N,
                k_pack=pv_k_pack,
            )

            def make_b64_prefetch_layout(local_buf, row_width):
                def forward_thread(i, j):
                    linear = i * row_width + j
                    return (linear // 4) % 256

                def forward_index(i, j):
                    linear = i * row_width + j
                    return (linear // (4 * 256)) * 4 + linear % 4

                return T.Fragment(
                    local_buf.shape,
                    forward_thread_fn=forward_thread,
                    forward_index_fn=forward_index,
                )

            @T.prim_func
            def main_split(
                Q: T.Tensor([batch, heads, dim], dtype),
                Q_pe: T.Tensor([batch, heads, pe_dim], dtype),
                KV: T.Tensor([batch, seqlen_kv, kv_head_num, dim], dtype),
                K_pe: T.Tensor([batch, seqlen_kv, kv_head_num, pe_dim], dtype),
                Output: T.Tensor([batch, heads, dim], dtype),
            ):
                # split-KV 会把 seqlen_kv 切成 num_split 段。每段先独立做局部 attention，
                # 所以需要保存每段的局部 output 和该段的 logsumexp，供后面的 combine 还原全局 softmax。
                glse = T.alloc_global([batch, heads, num_split], accum_dtype)
                Output_partial = T.alloc_global([batch, heads, num_split, dim], dtype)
                # flash_attn_split: grid 里的 bz 是 split id，不是 batch id。
                # 这个 kernel 的每个 CTA 负责一个 (batch, head_block, split)。
                # num_split = 沿 KV sequence 维度切成多少个并行 split。
                with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=256) as (bid, hid, bz):
                    Q_shared = T.alloc_shared([block_H, dim], dtype)
                    S_shared = T.alloc_shared([block_H, block_N], dtype)
                    Q_pe_shared = T.alloc_shared([block_H, pe_dim], dtype)
                    KV_shared = T.alloc_shared([block_N, dim], dtype)
                    K_pe_shared = T.alloc_shared([block_N, pe_dim], dtype)
                    O_shared = T.alloc_shared([block_H, dim], dtype)
                    if seqlen_kv >= 8192:
                        KV_prefetch = T.alloc_fragment([block_N, dim], dtype)
                        K_pe_prefetch = T.alloc_fragment([block_N, pe_dim], dtype)
                    acc_s = T.alloc_fragment([block_H, block_N], accum_dtype)                           # acc_s[i, j] = 第 i 个 query head 对第 j 个 KV token 的 attention score
                    acc_s_cast = T.alloc_fragment([block_H, block_N], dtype)                            # 变成 fp16 给 PV MMA 用的 acc_s
                    acc_o = T.alloc_fragment([block_H, dim], accum_dtype)                               # PV 累加的 Output
                    if seqlen_kv >= 8192:
                        qk_a_local_0 = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                        qk_a_local_1 = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                        qk_b_local_0 = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                        qk_b_local_1 = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                        if load_ahead_rope:
                            qk_pe_a_local_0 = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                            qk_pe_a_local_1 = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                            qk_pe_b_local_0 = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                            qk_pe_b_local_1 = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                        else:
                            qk_pe_a_local = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                            qk_pe_b_local = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                    else:
                        qk_a_local = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                        qk_b_local = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                        qk_pe_a_local = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
                        qk_pe_b_local = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
                    pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)
                    scores_max = T.alloc_fragment([block_H], accum_dtype)                               # 处理完当前 KV tile 之后的历史最大值
                    scores_max_prev = T.alloc_fragment([block_H], accum_dtype)                          # 是进当前 KV tile 之前的历史最大值
                    scores_scale = T.alloc_fragment([block_H], accum_dtype)                             # 旧状态缩放因子
                    scores_sum = T.alloc_fragment([block_H], accum_dtype)                               # 当前 tile 的指数和
                    logsum = T.alloc_fragment([block_H], accum_dtype)                                   # softmax 分母累计值 / split 的 LSE
                    cur_kv_head = hid // (kv_group_num // block_H)
                    if seqlen_kv >= 8192:
                        T.annotate_layout(
                            {
                                Q_shared: make_swizzled_layout(Q_shared),
                                KV_shared: make_swizzled_layout(KV_shared),
                                S_shared: make_swizzled_layout(S_shared),
                                Q_pe_shared: make_swizzled_layout(Q_pe_shared),
                                K_pe_shared: make_swizzled_layout(K_pe_shared),
                                O_shared: make_swizzled_layout(O_shared),
                                KV_prefetch: make_b64_prefetch_layout(KV_prefetch, dim),
                                K_pe_prefetch: make_b64_prefetch_layout(K_pe_prefetch, pe_dim),
                                acc_s: qk_mma.make_mma_store_layout(acc_s).replicate(2),
                                acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix="A"),
                                acc_o: pv_mma.make_mma_store_layout(acc_o),
                            }
                        )
                    else:
                        T.annotate_layout(
                            {
                            Q_shared: make_swizzled_layout(Q_shared),
                            KV_shared: make_swizzled_layout(KV_shared),
                            # softmax 概率 tile 会立刻作为 PV MMA 的 A operand 读取；
                            # 对其使用同类 swizzle，降低 [16, 32] 窄 tile 的 bank conflict。
                            S_shared: make_swizzled_layout(S_shared),
                            # RoPE Q/K 也走手写 MFMA；显式 swizzle 降低 64-d shared tile 的 bank conflict。
                            Q_pe_shared: make_swizzled_layout(Q_pe_shared),
                            K_pe_shared: make_swizzled_layout(K_pe_shared),
                            O_shared: make_swizzled_layout(O_shared),
                            # split kernel 现在是 256 threads；QK score fragment 原本是 128-thread layout，
                            # replicate(2) 让 layout inference 显式覆盖完整 CTA，避免后 128 线程破坏 acc_s。
                            acc_s: qk_mma.make_mma_store_layout(acc_s).replicate(2),
                            acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix="A"),
                            acc_o: pv_mma.make_mma_store_layout(acc_o),
                            }
                        )
                    # v13: sweep 后关闭 threadblock swizzle
                    if seqlen_kv <= 4096:
                        T.use_swizzle(10)
                    T.copy(Q[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_shared)
                    # swizzled shared layout 可能有未被逻辑 copy 覆盖的物理 bank；先清零，保证首次调用确定性。
                    T.fill(Q_pe_shared, 0)
                    T.copy(Q_pe[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_pe_shared)
                    T.fill(acc_o, 0)
                    T.fill(logsum, 0)
                    T.fill(scores_max, -T.infinity(accum_dtype))
                    # K_pe 的逻辑 tile 每轮都会被完整 copy 覆盖；只在 CTA 开始时清一次
                    # swizzle padding，避免每个 KV tile 重复写入同一片 shared memory。
                    T.fill(K_pe_shared, 0)
                    # 当前 CTA 只扫自己 split 内的 KV token；完整 seqlen_kv 被 bz 切成 num_split 段并行处理。
                    # bz 已经表示当前 CTA 是第 bz 个 KV split，所以这个 CTA 只需要扫 seqlen_kv / num_split 这么长的 KV 而不是完整的 seqlen_kv, 然后计算这里面有多少个 block_N ( 一次批量处理历史 KV tokens 的最小单位)
                    # 按 KV tile 而不是 token 做非等长 partition。这样 num_split 不必整除
                    # seqlen_kv / block_N，可直接使用接近 C500 计算单元数的 104-way grid。
                    total_kv_tiles = (seqlen_kv + block_N - 1) // block_N
                    split_tile_start = (total_kv_tiles * bz) // num_split
                    split_tile_end = (total_kv_tiles * (bz + 1)) // num_split
                    loop_range = split_tile_end - split_tile_start
                    split_start = split_tile_start * block_N
                    if seqlen_kv >= 8192:
                        T.copy(
                            KV[bid, split_start : split_start + block_N, cur_kv_head, :],
                            KV_prefetch,
                        )
                        T.copy(
                            K_pe[bid, split_start : split_start + block_N, cur_kv_head, :],
                            K_pe_prefetch,
                        )
                    for k in T.Pipelined(loop_range, num_stages=0):
                        # bz 决定当前 split 的起始 offset，k 决定该 split 内的第几个 block_N tile。
                        if seqlen_kv >= 8192:
                            # FlashMLA 风格 B64 预取：当前寄存器 tile 写入 shared，
                            # 随后在计算当前 tile 时提前发出下一 tile 的 global load。
                            T.copy(KV_prefetch, KV_shared)
                            T.copy(K_pe_prefetch, K_pe_shared)
                            T.sync_threads()
                            if k + 1 < loop_range:
                                next_start = split_start + (k + 1) * block_N
                                T.copy(
                                    KV[
                                        bid,
                                        next_start : next_start + block_N,
                                        cur_kv_head,
                                        :,
                                    ],
                                    KV_prefetch,
                                )
                                T.copy(
                                    K_pe[
                                        bid,
                                        next_start : next_start + block_N,
                                        cur_kv_head,
                                        :,
                                    ],
                                    K_pe_prefetch,
                                )
                        else:
                            kv_start = split_start + k * block_N
                            kv_end = kv_start + block_N
                            T.copy(
                                KV[bid, kv_start:kv_end, cur_kv_head, :],
                                KV_shared,
                            )
                            T.copy(
                                K_pe[bid, kv_start:kv_end, cur_kv_head, :],
                                K_pe_shared,
                            )

                        # 2. 算 attention score: QK content + QK rope
                        T.clear(acc_s)
                        if seqlen_kv >= 8192:
                            qk_mma.ldmatrix_a(qk_a_local_0, Q_shared, 0)
                            qk_mma.ldmatrix_b(qk_b_local_0, KV_shared, 0)
                            qk_mma.ldmatrix_a(qk_a_local_1, Q_shared, 1)
                            qk_mma.ldmatrix_b(qk_b_local_1, KV_shared, 1)
                            for pair in T.serial(0, qk_content_chunks // 2 - 1):
                                even_ki = pair * 2
                                odd_ki = even_ki + 1
                                qk_mma.mma(qk_a_local_0, qk_b_local_0, acc_s, even_ki)
                                qk_mma.ldmatrix_a(qk_a_local_0, Q_shared, even_ki + 2)
                                qk_mma.ldmatrix_b(qk_b_local_0, KV_shared, even_ki + 2)
                                qk_mma.mma(qk_a_local_1, qk_b_local_1, acc_s, odd_ki)
                                qk_mma.ldmatrix_a(qk_a_local_1, Q_shared, odd_ki + 2)
                                qk_mma.ldmatrix_b(qk_b_local_1, KV_shared, odd_ki + 2)
                            qk_mma.mma(qk_a_local_0, qk_b_local_0, acc_s, qk_content_chunks - 2)
                            qk_mma.mma(qk_a_local_1, qk_b_local_1, acc_s, qk_content_chunks - 1)
                            if load_ahead_rope:
                                qk_pe_mma.ldmatrix_a(qk_pe_a_local_0, Q_pe_shared, 0)
                                qk_pe_mma.ldmatrix_b(qk_pe_b_local_0, K_pe_shared, 0)
                                qk_pe_mma.ldmatrix_a(qk_pe_a_local_1, Q_pe_shared, 1)
                                qk_pe_mma.ldmatrix_b(qk_pe_b_local_1, K_pe_shared, 1)
                                qk_pe_mma.mma(qk_pe_a_local_0, qk_pe_b_local_0, acc_s, 0)
                                qk_pe_mma.mma(qk_pe_a_local_1, qk_pe_b_local_1, acc_s, 1)
                            else:
                                for ki in T.serial(qk_pe_chunks):
                                    qk_pe_mma.ldmatrix_a(qk_pe_a_local, Q_pe_shared, ki)
                                    qk_pe_mma.ldmatrix_b(qk_pe_b_local, K_pe_shared, ki)
                                    qk_pe_mma.mma(qk_pe_a_local, qk_pe_b_local, acc_s, ki)
                        else:
                            for ki in T.serial(qk_content_chunks):
                                qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
                                qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
                                qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
                            for ki in T.serial(qk_pe_chunks):
                                qk_pe_mma.ldmatrix_a(qk_pe_a_local, Q_pe_shared, ki)
                                qk_pe_mma.ldmatrix_b(qk_pe_b_local, K_pe_shared, ki)
                                qk_pe_mma.mma(qk_pe_a_local, qk_pe_b_local, acc_s, ki)

                        # 3. 保存旧 max 并计算新 max
                        T.copy(scores_max, scores_max_prev)     # src -> dst
                        T.fill(scores_max, -T.infinity(accum_dtype))
                        T.reduce_max(acc_s, scores_max, dim=1, clear=False)
                        for i in T.Parallel(block_H):           # 并行计算每个 query head 一行，表示第 i 个 query head 到目前为止见过的最大 score
                            scores_max[i] = T.max(scores_max[i], scores_max_prev[i])

                        # 4. 计算 old output 需要缩放多少 -> old_scale = exp(m_old - m_new)
                        for i in T.Parallel(block_H):
                            scores_scale[i] = T.exp2(scores_max_prev[i] * scale - scores_max[i] * scale)

                        # 5. 把当前 tile 的 score 变成 exp(score - m_new)   这一步后：acc_s[i, j] = exp(scpre_ij - m_new)
                        for i, j in T.Parallel(block_H, block_N):
                            acc_s[i, j] = T.exp2(acc_s[i, j] * scale - scores_max[i] * scale)

                        # 6. 当前 tile 的 softmax 分母贡献 -> scores_sum[i] = sum_j exp(scores_ij - m_new)
                        T.reduce_sum(acc_s, scores_sum, dim=1)
                        T.copy(acc_s, S_shared)
                        T.sync_threads()
                        # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。
                        T.copy(S_shared, acc_s_cast)

                        # 7. 更新 online softmax 的分母 l       数学上：l_new = l_old * exp(m_old - m_new) + sum_current exp(score - m_new)
                        for i in T.Parallel(block_H):
                            logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]

                        # 8. 更新旧 Output 的尺度，数学上 o_old_scaled = o_old * exp(m_old - m_new)
                        for i, j in T.Parallel(block_H, dim):
                            acc_o[i, j] *= scores_scale[i]

                        # 9. 做 PV
                        for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                            pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
                            pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
                        if seqlen_kv >= 8192:
                            # 单 shared buffer 在下一轮被覆盖前，必须确保当前 PV 已读完。
                            T.sync_threads()

                    # 10. k-loop 结束后归一化   ->  O = o / l
                    for i, j in T.Parallel(block_H, dim):
                        acc_o[i, j] /= logsum[i]

                    # 11. split 版本保存局部 log-sum-up 给后面 combine 用
                    for i in T.Parallel(block_H):
                        # loop 内的 logsum 是当前 split 的 softmax 分母；这里转成 logsumexp，combine 用它算权重。
                        logsum[i] = T.log2(logsum[i]) + scores_max[i] * scale
                    T.copy(logsum, glse[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz])
                    T.copy(acc_o, O_shared)
                    # 这里写出的只是当前 split 的局部 output，不是最终 Output。
                    T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])


                if seqlen_kv in (2048, 8192, 16384):
                    # Short-context cases are combine-limited with only 16 generic CTAs.
                    # Keep case 1's D4/T128 path, use D4/T256 for case 3, and use the
                    # lower-register D8/T64 mapping selected for case 4.
                    combine_d_splits = 4 if seqlen_kv <= 8192 else 8
                    specialized_combine_threads = (
                        128
                        if seqlen_kv == 2048
                        else (256 if seqlen_kv == 8192 else 64)
                    )
                    combine_dim = dim // combine_d_splits
                    with T.Kernel(
                        heads, batch, combine_d_splits,
                        threads=specialized_combine_threads,
                    ) as (hid, bz, dz):
                        po_local = T.alloc_fragment([combine_dim], dtype)
                        o_accum_local = T.alloc_fragment([combine_dim], accum_dtype)
                        lse_local_split = T.alloc_var(accum_dtype)
                        lse_logsum_local = T.alloc_var(accum_dtype)
                        lse_max_local = T.alloc_var(accum_dtype)
                        scale_local = T.alloc_var(accum_dtype)
                        T.clear(lse_logsum_local)
                        T.clear(o_accum_local)
                        lse_max_local = -T.infinity(accum_dtype)
                        d_start = dz * combine_dim
                        for k in T.serial(num_split):
                            lse_max_local = T.max(lse_max_local, glse[bz, hid, k])
                        for k in T.serial(num_split):
                            for i in T.Parallel(combine_dim):
                                po_local[i] = Output_partial[
                                    bz, hid, k, d_start + i
                                ]
                            lse_local_split = glse[bz, hid, k]
                            scale_local = T.exp2(lse_local_split - lse_max_local)
                            lse_logsum_local += scale_local
                            for i in T.Parallel(combine_dim):
                                o_accum_local[i] += po_local[i] * scale_local
                        for i in T.Parallel(combine_dim):
                            Output[bz, hid, d_start + i] = (
                                o_accum_local[i] / lse_logsum_local
                            )
                else:
                    # Generic combine: one CTA handles all 512 columns for one head/batch.
                    with T.Kernel(heads, batch, threads=combine_threads) as (hid, bz):
                        po_local = T.alloc_fragment([dim], dtype)
                        o_accum_local = T.alloc_fragment([dim], accum_dtype)
                        lse_local_split = T.alloc_var(accum_dtype)
                        lse_logsum_local = T.alloc_var(accum_dtype)
                        lse_max_local = T.alloc_var(accum_dtype)
                        scale_local = T.alloc_var(accum_dtype)
                        T.clear(lse_logsum_local)
                        T.clear(o_accum_local)
                        lse_max_local = -T.infinity(accum_dtype)
                        # 令 M=max(glse)。每个 split 的归一化权重可以写成
                        # exp2(glse-M) / sum(exp2(glse-M))；分母和加权输出在一轮中累积。
                        for k in T.serial(num_split):
                            lse_max_local = T.max(lse_max_local, glse[bz, hid, k])
                        for k in T.serial(num_split):
                            for i in T.Parallel(dim):
                                po_local[i] = Output_partial[bz, hid, k, i]
                            lse_local_split = glse[bz, hid, k]
                            scale_local = T.exp2(lse_local_split - lse_max_local)
                            lse_logsum_local += scale_local
                            for i in T.Parallel(dim):
                                o_accum_local[i] += po_local[i] * scale_local
                        for i in T.Parallel(dim):
                            Output[bz, hid, i] = o_accum_local[i] / lse_logsum_local
            @T.prim_func
            def main_no_split(
                Q: T.Tensor([batch, heads, dim], dtype),
                Q_pe: T.Tensor([batch, heads, pe_dim], dtype),
                KV: T.Tensor([batch, seqlen_kv, kv_head_num, dim], dtype),
                K_pe: T.Tensor([batch, seqlen_kv, kv_head_num, pe_dim], dtype),
                Output: T.Tensor([batch, heads, dim], dtype),
            ):
                with T.Kernel(heads // min(block_H, kv_group_num), batch, threads=128) as (hid, bid):
                    Q_shared = T.alloc_shared([block_H, dim], dtype)                # 一个 CTA 一次缓存 block_H 个 query heads，每个 head 有 dim 个元素
                    S_shared = T.alloc_shared([block_H, block_N], dtype)
                    Q_pe_shared = T.alloc_shared([block_H, pe_dim], dtype)
                    KV_shared = T.alloc_shared([block_N, dim], dtype)               # 一个 CTA 在当前循环轮次里加载 block_N 个历史 token 的 KV cache，准确说是加载这 block_N 个 token 的 V / no-pe K 共享部分。
                    K_pe_shared = T.alloc_shared([block_N, pe_dim], dtype)
                    O_shared = T.alloc_shared([block_H, dim], dtype)
                    acc_s = T.alloc_fragment([block_H, block_N], accum_dtype)       # acc_s[h, n] 表示当前 CTA 里的第 h 个 query head，对当前 KV tile 里第 n 个 token 的 score
                    acc_o = T.alloc_fragment([block_H, dim], accum_dtype)           # 它存最终 output 的 accumulator，也就是 online softmax 下的未归一化输出累加。
                    scores_max = T.alloc_fragment([block_H], accum_dtype)
                    scores_max_prev = T.alloc_fragment([block_H], accum_dtype)
                    scores_scale = T.alloc_fragment([block_H], accum_dtype)
                    scores_sum = T.alloc_fragment([block_H], accum_dtype)
                    logsum = T.alloc_fragment([block_H], accum_dtype)
                    cur_kv_head = hid // (kv_group_num // block_H)                  # 当前 head block 应该使用哪个 KV head
                    T.copy(Q[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_shared)
                    T.copy(Q_pe[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_pe_shared)
                    T.fill(acc_o, 0)
                    T.fill(logsum, 0)
                    T.fill(scores_max, -T.infinity(accum_dtype))
                    loop_range = T.ceildiv(seqlen_kv, block_N)                      # CTA 需要循环多少次才能扫完整个 KV cache
                    for k in T.Pipelined(loop_range, num_stages=0):
                        T.copy(KV[bid, k * block_N : (k + 1) * block_N, cur_kv_head, :], KV_shared)
                        T.copy(K_pe[bid, k * block_N : (k + 1) * block_N, cur_kv_head, :], K_pe_shared)
                        T.gemm(Q_shared, KV_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol, clear_accum=True)
                        T.gemm(Q_pe_shared, K_pe_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)
                        T.copy(scores_max, scores_max_prev)
                        T.fill(scores_max, -T.infinity(accum_dtype))
                        T.reduce_max(acc_s, scores_max, dim=1, clear=False)
                        for i in T.Parallel(block_H):
                            scores_max[i] = T.max(scores_max[i], scores_max_prev[i])
                        for i in T.Parallel(block_H):
                            scores_scale[i] = T.exp2(scores_max_prev[i] * scale - scores_max[i] * scale)
                        for i, j in T.Parallel(block_H, block_N):
                            acc_s[i, j] = T.exp2(acc_s[i, j] * scale - scores_max[i] * scale)
                        T.reduce_sum(acc_s, scores_sum, dim=1)
                        T.copy(acc_s, S_shared)
                        for i in T.Parallel(block_H):
                            logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]
                        for i, j in T.Parallel(block_H, dim):
                            acc_o[i, j] *= scores_scale[i]
                        T.gemm(S_shared, KV_shared, acc_o, policy=T.GemmWarpPolicy.FullCol)
                    for i, j in T.Parallel(block_H, dim):
                        acc_o[i, j] /= logsum[i]
                    T.copy(acc_o, O_shared)
                    T.copy(O_shared, Output[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :])
            if num_split > 1:
                return main_split
            else:
                return main_no_split
        kernel = flashattn(batch, heads, kv_heads, kv_ctx, dim, pe_dim, block_N, block_H, num_split, load_ahead_rope, softmax_scale)
        _KERNEL_CACHE[key] = kernel
    kernel(q, q_pe, kv, k_pe, output)
