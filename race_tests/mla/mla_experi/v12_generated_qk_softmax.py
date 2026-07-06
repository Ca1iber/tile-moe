import torch
import torch.nn.functional as F
import tilelang
from tilelang.autotuner import *
import tilelang.language as T
from tilelang.layout import make_swizzled_layout
from tilelang.intrinsics.maca_mma_macro_generator import TensorCoreIntrinEmitter
from einops import rearrange, einsum
import argparse
import json
@tilelang.jit(
    out_idx=[4],
    pass_configs={tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True},
)
def flashattn_qk_softmax(batch, heads, kv_head_num, seqlen_kv, dim, pe_dim, block_N, block_H, num_split, softmax_scale):
    scale = float(softmax_scale * 1.44269504)  # log2(e)
    dtype = T.float16
    accum_dtype = T.float32
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
    qk_mma = TensorCoreIntrinEmitter(
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
    pv_k_pack = 2
    pv_micro_size_k = 16
    pv_block_row_warps = 1
    pv_block_col_warps = 2
    pv_warp_row_tiles = block_H // pv_block_row_warps
    pv_warp_col_tiles = dim // pv_block_col_warps
    pv_warp_cols = pv_warp_col_tiles // 16
    pv_local_size_b = (16 * pv_micro_size_k) // 64
    pv_mma = TensorCoreIntrinEmitter(
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
        with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=128) as (bid, hid, bz):
            Q_shared = T.alloc_shared([block_H, dim], dtype)
            S_shared = T.alloc_shared([block_H, block_N], dtype)
            Q_pe_shared = T.alloc_shared([block_H, pe_dim], dtype)
            KV_shared = T.alloc_shared([block_N, dim], dtype)
            K_pe_shared = T.alloc_shared([block_N, pe_dim], dtype)
            O_shared = T.alloc_shared([block_H, dim], dtype)
            acc_s = T.alloc_fragment([block_H, block_N], accum_dtype)
            acc_s_cast = T.alloc_fragment([block_H, block_N], dtype)
            acc_o = T.alloc_fragment([block_H, dim], accum_dtype)
            qk_a_local = T.alloc_local((qk_warp_rows * qk_k_pack * qk_local_size_a), dtype)
            qk_b_local = T.alloc_local((qk_warp_cols * qk_k_pack * qk_local_size_b), dtype)
            pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)
            scores_max = T.alloc_fragment([block_H], accum_dtype)
            scores_max_prev = T.alloc_fragment([block_H], accum_dtype)
            scores_scale = T.alloc_fragment([block_H], accum_dtype)
            scores_sum = T.alloc_fragment([block_H], accum_dtype)
            logsum = T.alloc_fragment([block_H], accum_dtype)
            cur_kv_head = hid // (kv_group_num // block_H)
            T.annotate_layout(
                {
                    Q_shared: make_swizzled_layout(Q_shared),
                    KV_shared: make_swizzled_layout(KV_shared),
                    acc_s: qk_mma.make_mma_store_layout(acc_s),
                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix="A"),
                    acc_o: pv_mma.make_mma_store_layout(acc_o),
                }
            )
            T.use_swizzle(10)
            T.copy(Q[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_shared)
            T.copy(Q_pe[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_pe_shared)
            T.fill(acc_o, 0)
            T.fill(logsum, 0)
            T.fill(scores_max, -T.infinity(accum_dtype))
            # 当前 CTA 只扫自己 split 内的 KV token；完整 seqlen_kv 被 bz 切成 num_split 段并行处理。
            loop_range = T.ceildiv((seqlen_kv // num_split), block_N)
            for k in T.Pipelined(loop_range, num_stages=0):
                # bz 决定当前 split 的起始 offset，k 决定该 split 内的第几个 block_N tile。
                kv_start = (seqlen_kv // num_split) * bz + k * block_N
                kv_end = (seqlen_kv // num_split) * bz + (k + 1) * block_N
                T.copy(KV[bid, kv_start:kv_end, cur_kv_head, :], KV_shared)
                T.copy(K_pe[bid, kv_start:kv_end, cur_kv_head, :], K_pe_shared)
                T.clear(acc_s)
                for ki in T.serial(0, dim // (qk_micro_size_k * qk_k_pack)):
                    qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
                    qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
                    qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
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
                # v12 ablation: skip PV path, keep online softmax/logsum.
                for i in T.Parallel(block_H):
                    logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]
            for i in T.Parallel(block_H):
                logsum[i] = T.log2(logsum[i]) + scores_max[i] * scale
            T.copy(logsum, glse[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz])
            for i in T.Parallel(block_H):
                Output[bid, hid * VALID_BLOCK_H + i, 0] = logsum[i]
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
