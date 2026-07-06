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
import csv
import os
import statistics
import sys

os.environ.setdefault("MACA_PATH", "/opt/maca")
os.environ.setdefault("MACA_CLANG_PATH", os.path.join(os.environ["MACA_PATH"], "mxgpu_llvm/bin"))
os.environ["LD_LIBRARY_PATH"] = (
    f"{os.environ['MACA_PATH']}/lib:"
    f"{os.environ['MACA_PATH']}/ompi/lib:"
    f"{os.environ['MACA_PATH']}/ucx/lib:"
    f"/opt/mxdriver/lib:"
    f"{os.environ.get('LD_LIBRARY_PATH', '')}"
)

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, "../../.."))
if REPO_ROOT not in sys.path:
    sys.path.insert(0, REPO_ROOT)
@tilelang.jit(
    out_idx=[4],
    pass_configs={tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True},
)
def flashattn(batch, heads, kv_head_num, seqlen_kv, dim, pe_dim, block_N, block_H, num_split, softmax_scale, variant="full", qk_row_warps=1, qk_col_warps=2, qk_k_pack_arg=2):
    scale = float(softmax_scale * 1.44269504)  # log2(e)
    dtype = T.float16
    accum_dtype = T.float32
    do_qk = variant not in ("copy_only", "pv_dummyS", "pv_load_only", "pv_no_mma_output", "pv_no_combine")
    do_softmax = variant in ("full", "qk_softmax", "no_pv")
    do_pv = variant in ("full", "pv_dummyS", "pv_no_combine")
    do_final_normalize = variant == "full"
    force_qk_use = variant == "qk_only"
    force_copy_use = variant == "copy_only"
    do_pv_ldmatrix_only = variant == "pv_load_only"
    do_pv_no_mma_output = variant == "pv_no_mma_output"
    do_combine = variant != "pv_no_combine"
    kv_group_num = heads // kv_head_num
    VALID_BLOCK_H = min(block_H, kv_group_num)
    assert kv_head_num == 1, "kv_head_num must be 1"
    qk_k_pack = qk_k_pack_arg
    qk_micro_size_k = 16
    qk_block_row_warps = qk_row_warps
    qk_block_col_warps = qk_col_warps
    qk_warp_row_tiles = block_H // qk_block_row_warps
    qk_warp_col_tiles = block_N // qk_block_col_warps
    qk_warp_rows = qk_warp_row_tiles // 16
    qk_warp_cols = qk_warp_col_tiles // 16
    qk_local_size_a = (16 * qk_micro_size_k) // 64
    qk_local_size_b = (16 * qk_micro_size_k) // 64
    qk_layout_replicate = 256 // (64 * qk_block_row_warps * qk_block_col_warps)
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
    qk_pe_mma = TensorCoreIntrinEmitter(
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
        # num_split = 沿 KV sequence 维度切成多少个并行 split。
        with T.Kernel(batch, heads // min(block_H, kv_group_num), num_split, threads=256) as (bid, hid, bz):
            Q_shared = T.alloc_shared([block_H, dim], dtype)
            S_shared = T.alloc_shared([block_H, block_N], dtype)
            Q_pe_shared = T.alloc_shared([block_H, pe_dim], dtype)
            KV_shared = T.alloc_shared([block_N, dim], dtype)
            K_pe_shared = T.alloc_shared([block_N, pe_dim], dtype)
            O_shared = T.alloc_shared([block_H, dim], dtype)
            acc_s = T.alloc_fragment([block_H, block_N], accum_dtype)                           # acc_s[i, j] = 第 i 个 query head 对第 j 个 KV token 的 attention score
            acc_s_cast = T.alloc_fragment([block_H, block_N], dtype)                            # 变成 fp16 给 PV MMA 用的 acc_s
            acc_o = T.alloc_fragment([block_H, dim], accum_dtype)                               # PV 累加的 Output
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
            T.annotate_layout(
                {
                    Q_shared: make_swizzled_layout(Q_shared),
                    KV_shared: make_swizzled_layout(KV_shared),
                    # split kernel 现在是 256 threads；QK score fragment 原本是 128-thread layout，
                    # replicate(2) 让 layout inference 显式覆盖完整 CTA，避免后 128 线程破坏 acc_s。
                    acc_s: qk_mma.make_mma_store_layout(acc_s).replicate(qk_layout_replicate),
                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix="A"),
                    acc_o: pv_mma.make_mma_store_layout(acc_o),
                }
            )
            # v13: sweep 后关闭 threadblock swizzle
            T.copy(Q[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_shared)
            T.copy(Q_pe[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :], Q_pe_shared)
            T.fill(acc_o, 0)
            T.fill(logsum, 0)
            T.fill(scores_max, -T.infinity(accum_dtype))
            # 当前 CTA 只扫自己 split 内的 KV token；完整 seqlen_kv 被 bz 切成 num_split 段并行处理。
            # bz 已经表示当前 CTA 是第 bz 个 KV split，所以这个 CTA 只需要扫 seqlen_kv / num_split 这么长的 KV 而不是完整的 seqlen_kv, 然后计算这里面有多少个 block_N ( 一次批量处理历史 KV tokens 的最小单位)
            loop_range = T.ceildiv((seqlen_kv // num_split), block_N)
            for k in T.Pipelined(loop_range, num_stages=0):
                # bz 决定当前 split 的起始 offset，k 决定该 split 内的第几个 block_N tile。
                # 1.先 ld 当前 KV tile
                kv_start = (seqlen_kv // num_split) * bz + k * block_N
                kv_end = (seqlen_kv // num_split) * bz + (k + 1) * block_N
                T.copy(KV[bid, kv_start:kv_end, cur_kv_head, :], KV_shared)
                T.copy(K_pe[bid, kv_start:kv_end, cur_kv_head, :], K_pe_shared)

                # 2. 算 attention score: QK content + QK rope
                if do_qk:
                    T.clear(acc_s)
                    for ki in T.serial(0, dim // (qk_micro_size_k * qk_k_pack)):
                        qk_mma.ldmatrix_a(qk_a_local, Q_shared, ki)
                        qk_mma.ldmatrix_b(qk_b_local, KV_shared, ki)
                        qk_mma.mma(qk_a_local, qk_b_local, acc_s, ki)
                    for ki in T.serial(0, pe_dim // (qk_micro_size_k * qk_k_pack)):
                        qk_pe_mma.ldmatrix_a(qk_pe_a_local, Q_pe_shared, ki)
                        qk_pe_mma.ldmatrix_b(qk_pe_b_local, K_pe_shared, ki)
                        qk_pe_mma.mma(qk_pe_a_local, qk_pe_b_local, acc_s, ki)

                if force_qk_use:
                    T.fill(scores_max, -T.infinity(accum_dtype))
                    T.reduce_max(acc_s, scores_max, dim=1, clear=False)
                    for i in T.Parallel(block_H):
                        logsum[i] += scores_max[i] * scores_max[i] + 1.0

                if force_copy_use:
                    for i in T.Parallel(block_H):
                        logsum[i] += (
                            T.cast(KV_shared[0, i], accum_dtype) *
                            T.cast(KV_shared[0, i], accum_dtype) + 1.0
                        )

                if do_softmax:
                    # 3. 保存旧 max 并计算新 max
                    T.copy(scores_max, scores_max_prev)     # src -> dst
                    T.fill(scores_max, -T.infinity(accum_dtype))
                    T.reduce_max(acc_s, scores_max, dim=1, clear=False)
                    for i in T.Parallel(block_H):           # 并行计算每个 query head 一行，表示第 i 个 query head 到目前为止见过的最大 score
                        scores_max[i] = T.max(scores_max[i], scores_max_prev[i])

                    # 4. 计算 old output 需要缩放多少 -> old_scale = exp(m_old - m_new)
                    for i in T.Parallel(block_H):
                        scores_scale[i] = T.exp2(scores_max_prev[i] * scale - scores_max[i] * scale)

                    # 5. 把当前 tile 的 score 变成 exp(score - m_new)
                    for i, j in T.Parallel(block_H, block_N):
                        acc_s[i, j] = T.exp2(acc_s[i, j] * scale - scores_max[i] * scale)

                    # 6. 当前 tile 的 softmax 分母贡献 -> scores_sum[i] = sum_j exp(scores_ij - m_new)
                    T.reduce_sum(acc_s, scores_sum, dim=1)
                    T.copy(acc_s, S_shared)
                    T.sync_threads()
                    # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。
                    T.copy(S_shared, acc_s_cast)

                    # 7. 更新 online softmax 的分母 l
                    for i in T.Parallel(block_H):
                        logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]
                elif do_pv or do_pv_ldmatrix_only:
                    for i, j in T.Parallel(block_H, block_N):
                        acc_s_cast[i, j] = 1.0

                if do_final_normalize:
                    # 8. 更新旧 Output 的尺度，数学上 o_old_scaled = o_old * exp(m_old - m_new)
                    for i, j in T.Parallel(block_H, dim):
                        acc_o[i, j] *= scores_scale[i]

                if do_pv:
                    # 9. 做 PV
                    for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                        pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
                        pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)

                if do_pv_ldmatrix_only:
                    for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                        pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
                    for i in T.Parallel(block_H):
                        logsum[i] += T.cast(pv_b_local[0], accum_dtype) * T.cast(pv_b_local[0], accum_dtype) + 1.0

                if do_pv_no_mma_output:
                    for i, j in T.Parallel(block_H, dim):
                        acc_o[i, j] += 1.0

            # 10. k-loop 结束后归一化   ->  O = o / l
            if do_final_normalize:
                for i, j in T.Parallel(block_H, dim):
                    acc_o[i, j] /= logsum[i]
            if variant in ("pv_dummyS", "pv_no_mma_output", "pv_no_combine"):
                for i in T.Parallel(block_H):
                    logsum[i] = 1.0
                    scores_max[i] = 0.0
            if variant in ("copy_only", "pv_load_only"):
                for i in T.Parallel(block_H):
                    scores_max[i] = 0.0

            # 11. split 版本保存局部 log-sum-up 给后面 combine 用
            for i in T.Parallel(block_H):
                # loop 内的 logsum 是当前 split 的 softmax 分母；这里转成 logsumexp，combine 用它算权重。
                logsum[i] = T.log2(logsum[i]) + scores_max[i] * scale
            T.copy(logsum, glse[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz])
            T.copy(acc_o, O_shared)
            # 这里写出的只是当前 split 的局部 output，不是最终 Output。
            T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])


        # combine: 每个 CTA 负责一个 (head, batch)，沿 split 维把 Output_partial 做加权求和。
        # 注意这里变量名 bz 复用了；在 combine kernel 中 bz 实际表示 batch id，不是 split id。
        with T.Kernel(heads, batch, threads=128) as (hid, bz):
            po_local = T.alloc_fragment([dim], dtype)
            o_accum_local = T.alloc_fragment([dim], accum_dtype)
            lse_local_split = T.alloc_var(accum_dtype)
            lse_logsum_local = T.alloc_var(accum_dtype)
            lse_max_local = T.alloc_var(accum_dtype)
            scale_local = T.alloc_var(accum_dtype)
            T.clear(lse_logsum_local)
            T.clear(o_accum_local)
            lse_max_local = -T.infinity(accum_dtype)
            if do_combine:
                # 先对所有 split 的 logsumexp 做一次全局 logsumexp，得到完整 KV 上的 softmax 分母。
                for k in T.serial(num_split):
                    lse_max_local = T.max(lse_max_local, glse[bz, hid, k])
                for k in T.Pipelined(num_split, num_stages=1):
                    lse_local_split = glse[bz, hid, k]
                    lse_logsum_local += T.exp2(lse_local_split - lse_max_local)
                lse_logsum_local = T.log2(lse_logsum_local) + lse_max_local
                # 每个 partial output 的权重是该 split 的 softmax 分母占全局分母的比例：
                # weight_k = exp(lse_k - global_lse)，所以这里是 reduce，不是 concat。
                for k in T.serial(num_split):
                    for i in T.Parallel(dim):
                        po_local[i] = Output_partial[bz, hid, k, i]
                    lse_local_split = glse[bz, hid, k]
                    scale_local = T.exp2(lse_local_split - lse_logsum_local)
                    for i in T.Parallel(dim):
                        o_accum_local[i] += po_local[i] * scale_local
            for i in T.Parallel(dim):
                Output[bz, hid, i] = o_accum_local[i]
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
def ref_program(q, q_pe, kv, k_pe):
    #     """
    #     Inputs:
    #     - q (Tensor): [batch, heads, dim]
    #     - q_pe (Tensor): [batch, heads, pe_dim]
    #     - kv (Tensor): [batch, seqlen_kv, kv_head_num, dim]
    #     - k_pe (Tensor): [batch, seqlen_kv, kv_head_num, pe_dim]
    #     Outputs:
    #     - output (Tensor): [batch, heads, dim]
    #     """
    dim = q.shape[-1]
    pe_dim = q_pe.shape[-1]
    num_head_groups = q.shape[1] // kv.shape[2]
    scale = (dim + pe_dim) ** 0.5
    q = rearrange(q, "b (h g) d -> b g h d", g=num_head_groups)  # [batch_size, num_head_groups, groups, dim]
    q_pe = rearrange(q_pe, "b (h g) d -> b g h d", g=num_head_groups)  # [batch_size, num_head_groups, groups, pe_dim]
    kv = rearrange(kv, "b n h d -> b h n d")  # [batch_size, groups, seqlen_kv, dim]
    k_pe = rearrange(k_pe, "b n h d -> b h n d")  # [batch_size, num_head_groups, groups, pe_dim]
    query = torch.concat([q, q_pe], dim=-1)
    key = torch.concat([kv, k_pe], dim=-1)
    scores = einsum(query, key, "b g h d, b h s d -> b g h s")  # [batch_size, num_head_groups, groups, seqlen_kv]
    attention = F.softmax(scores / scale, dim=-1)  # [batch_size, num_head_groups, groups, seqlen_kv]
    out = einsum(attention, kv, "b g h s, b h s d -> b g h d")  # [batch_size, num_head_groups, groups, dim]
    out = rearrange(out, "b g h d -> b (h g) d")  # [batch_size, heads, dim]
    return out
def main(
    batch=1,
    heads=128,
    kv_heads=1,
    kv_ctx=8192,
    dim=512,
    pe_dim=64,
    variant="full",
    warmup=500,
    check_correctness=True,
    qk_row_warps=1,
    qk_col_warps=2,
    qk_k_pack=2,
):
    qk_flops = 2 * batch * heads * kv_ctx * (dim + pe_dim)
    pv_flops = 2 * batch * heads * kv_ctx * dim
    total_flops = qk_flops + pv_flops
    BLOCK_N = 32                            # 一次处理多少个历史 KV tokens
    BLOCK_H = min(16, heads // kv_heads)    # 一次处理多少个 query heads
    if batch >= 32:
        num_split = 32 if kv_ctx <= 2048 else 16
    elif batch == 16:
        num_split = 32
    elif batch == 8:
        num_split = 32 if kv_ctx <= 2048 else 64
    elif batch == 4:
        num_split = 32 if kv_ctx <= 2048 else 64
    elif batch == 2:
        num_split = 32 if kv_ctx <= 16384 else 64
    else:
        num_split = 64
    softmax_scale = (dim + pe_dim) ** -0.5
    kernel = flashattn(batch, heads, kv_heads, kv_ctx, dim, pe_dim, BLOCK_N, BLOCK_H, num_split, softmax_scale, variant, qk_row_warps, qk_col_warps, qk_k_pack)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    if check_correctness:
        profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
    latency = profiler.do_bench(warmup=warmup)
    tflops = total_flops / latency * 1e-9
    return latency, tflops, num_split
def run_regression_perf(
    batch=1,
    heads=128,
    kv_heads=1,
    kv_ctx=8192,
    dim=512,
    pe_dim=64,
):
    BLOCK_N = 64
    BLOCK_H = min(64, heads // kv_heads)
    num_split = 1
    softmax_scale = (dim + pe_dim) ** -0.5
    kernel = flashattn(batch, heads, kv_heads, kv_ctx, dim, pe_dim, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
    return profiler.do_bench(backend="cupti")

VARIANT_DESCRIPTIONS = {
    "full": "完整 v26 实现，只有这个 variant 做 correctness 校验",
    "copy_only": "只搬运 KV/K_pe 并消费 KV_shared，估计基础 copy 下限",
    "qk_only": "只做 QK content + QK RoPE，并消费 score 防止 DCE",
    "qk_softmax": "做 QK + online softmax + S bridge，不做 PV",
    "no_pv": "做 QK + online softmax + partial/combine 框架，不做 PV",
    "pv_dummyS": "不做 QK/softmax，用常数 S 做 PV4 MMA，估计 PV 路径",
    "pv_load_only": "不做 PV MMA，只做 PV ldmatrix_b 并消费 fragment",
    "pv_no_mma_output": "不做 PV MMA，只写 dummy Output_partial，估计写出/combine",
    "pv_no_combine": "做 dummyS + PV4 MMA + partial 写出，但跳过 combine reduce",
}

VARIANTS = list(VARIANT_DESCRIPTIONS)
DEFAULT_CASE_IDS = [21, 29, 31]


def load_cases(json_path, case_ids):
    with open(json_path) as f:
        cases = json.load(f)
    wanted = set(case_ids)
    return [case for case in cases if int(case["case_id"]) in wanted]


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=str, default="race_tests/mla/test_cases_mla_batch_ctx.json")
    parser.add_argument("--cases", type=str, default=",".join(str(x) for x in DEFAULT_CASE_IDS))
    parser.add_argument("--variants", type=str, default="full,qk_only,qk_softmax")
    parser.add_argument("--configs", type=str, default="1x1x1,1x1x2,1x2x1,1x2x2,1x2x4", help="qk_row_warps x qk_col_warps x qk_k_pack")
    parser.add_argument("--repeats", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=500)
    parser.add_argument("--output", type=str, default="race_tests/mla/mla_experi/v28_qk_mapping_sweep.csv")
    args = parser.parse_args()

    case_ids = [int(x) for x in args.cases.split(",") if x.strip()]
    variants = [x.strip() for x in args.variants.split(",") if x.strip()]
    unknown = [x for x in variants if x not in VARIANTS]
    if unknown:
        raise SystemExit(f"unknown variants: {unknown}")

    os.makedirs(os.path.dirname(args.output), exist_ok=True)
    cases = load_cases(args.json, case_ids)
    configs = []
    for item in args.configs.split(","):
        item = item.strip().lower()
        if not item:
            continue
        r, c, k = item.split("x")
        configs.append((int(r), int(c), int(k), item))
    fieldnames = [
        "case_id", "batch", "heads", "kv_heads", "kv_ctx", "dim", "pe_dim",
        "config", "qk_row_warps", "qk_col_warps", "qk_k_pack",
        "variant", "variant_desc", "repeat", "latency_ms", "median_latency_ms",
        "tflops", "num_split", "status",
    ]

    with open(args.output, "w", newline="") as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for c in cases:
            case_id = int(c.get("case_id", -1))
            batch = c.get("batch", 1)
            heads = c.get("heads", 16)
            kv_heads = c.get("kv_heads", 1)
            kv_ctx = c.get("kv_ctx", 8192)
            dim = c.get("dim", 512)
            pe_dim = c.get("pe_dim", 64)
            print(f"\n[Case {case_id}] batch={batch}, kv_ctx={kv_ctx}")
            for qk_row_warps, qk_col_warps, qk_k_pack, config_name in configs:
                print(f"  [config {config_name}]")
                for variant in variants:
                    latencies = []
                    variant_rows = []
                    for rep in range(args.repeats):
                        try:
                            latency, tflops, num_split = main(
                                batch, heads, kv_heads, kv_ctx, dim, pe_dim,
                                variant=variant,
                                warmup=args.warmup,
                                check_correctness=(variant == "full" and rep == 0),
                                qk_row_warps=qk_row_warps,
                                qk_col_warps=qk_col_warps,
                                qk_k_pack=qk_k_pack,
                            )
                            latencies.append(latency)
                            row = {
                                "case_id": case_id, "batch": batch, "heads": heads, "kv_heads": kv_heads,
                                "kv_ctx": kv_ctx, "dim": dim, "pe_dim": pe_dim,
                                "config": config_name, "qk_row_warps": qk_row_warps,
                                "qk_col_warps": qk_col_warps, "qk_k_pack": qk_k_pack,
                                "variant": variant, "variant_desc": VARIANT_DESCRIPTIONS[variant], "repeat": rep,
                                "latency_ms": round(latency, 6), "median_latency_ms": "",
                                "tflops": round(tflops, 4), "num_split": num_split, "status": "PASS",
                            }
                            print(f"    {variant:18s} rep={rep} latency={latency:.6f} ms")
                        except Exception as e:
                            row = {
                                "case_id": case_id, "batch": batch, "heads": heads, "kv_heads": kv_heads,
                                "kv_ctx": kv_ctx, "dim": dim, "pe_dim": pe_dim,
                                "config": config_name, "qk_row_warps": qk_row_warps,
                                "qk_col_warps": qk_col_warps, "qk_k_pack": qk_k_pack,
                                "variant": variant, "variant_desc": VARIANT_DESCRIPTIONS[variant], "repeat": rep,
                                "latency_ms": -1, "median_latency_ms": "",
                                "tflops": -1, "num_split": -1, "status": f"FAIL: {str(e).splitlines()[0]}",
                            }
                            print(f"    {variant:18s} rep={rep} FAIL: {e}")
                        variant_rows.append(row)
                    if latencies:
                        med = statistics.median(latencies)
                        for row in variant_rows:
                            if row["status"] == "PASS":
                                row["median_latency_ms"] = round(med, 6)
                    for row in variant_rows:
                        writer.writerow(row)
                        csvfile.flush()

    print(f"\nCSV saved to: {args.output}")
