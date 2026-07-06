import argparse
import csv
import json
import os
import sys
import statistics

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

import torch
import torch.nn.functional as F
import tilelang
from tilelang.autotuner import *
import tilelang.language as T
from tilelang.layout import make_swizzled_layout
from tilelang.intrinsics.maca_mma_macro_generator import TensorCoreIntrinEmitter
from einops import rearrange, einsum
@tilelang.jit(
    out_idx=[4],
    pass_configs={tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True},
)
def flashattn(
    batch,
    heads,
    kv_head_num,
    seqlen_kv,
    dim,
    pe_dim,
    block_N,
    block_H,
    num_split,
    softmax_scale,
    pv_block_col_warps_override,
    pv_k_pack_override,
):
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
    pv_k_pack = pv_k_pack_override
    pv_micro_size_k = 16
    pv_block_row_warps = 1
    pv_block_col_warps = pv_block_col_warps_override
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
                # v23 方法A：split kernel 使用 256 threads 服务 PV 4x。
                # QK content 暂时回退到 T.gemm，避免原 128-thread qk_mma layout 和 256-thread launch 冲突。
                T.gemm(Q_shared, KV_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol, clear_accum=True)
                T.gemm(Q_pe_shared, K_pe_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)

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
    pv_block_col_warps=2,
    pv_k_pack=2,
    warmup=500,
    check_correctness=True,
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
    kernel = flashattn(
        batch,
        heads,
        kv_heads,
        kv_ctx,
        dim,
        pe_dim,
        BLOCK_N,
        BLOCK_H,
        num_split,
        softmax_scale,
        pv_block_col_warps,
        pv_k_pack,
    )
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    if check_correctness:
        profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
    latency = profiler.do_bench(warmup=warmup)
    tflops = total_flops / latency * 1e-9
    return latency, tflops, num_split


DEFAULT_CASE_IDS = [21, 29, 31]
DEFAULT_CONFIGS = [(1, 1), (1, 2), (2, 1), (2, 2), (4, 1), (4, 2)]
BASELINE_CONFIG = (2, 2)


def mapping_desc(pv_block_col_warps, pv_k_pack):
    if (pv_block_col_warps, pv_k_pack) == BASELINE_CONFIG:
        prefix = "当前baseline："
    else:
        prefix = ""
    col_width = 512 // pv_block_col_warps
    if pv_k_pack == 1:
        k_desc = "k_pack=1，K=32 拆成2轮MMA，单轮寄存器压力较小但循环更多"
    else:
        k_desc = "k_pack=2，K=32 一轮完成，循环更少但单轮打包更重"
    return f"{prefix}列方向{pv_block_col_warps}组warp，每组约{col_width}个输出列；{k_desc}"


def parse_csv_ints(text):
    return [int(x.strip()) for x in text.split(",") if x.strip()]


def parse_configs(text):
    configs = []
    for item in text.split(","):
        item = item.strip().lower()
        if not item:
            continue
        if "x" not in item:
            raise ValueError(f"bad config {item}, expected COL_WARPSxK_PACK")
        col_warps, k_pack = item.split("x", 1)
        configs.append((int(col_warps), int(k_pack)))
    return configs


def load_cases(json_path, case_ids):
    with open(json_path) as f:
        cases = json.load(f)
    wanted = set(case_ids)
    return [case for case in cases if int(case["case_id"]) in wanted]


def summarize_rows(rows):
    grouped = {}
    for row in rows:
        if row["status"] != "PASS":
            continue
        key = (row["case_id"], row["pv_block_col_warps"], row["pv_k_pack"])
        grouped.setdefault(key, []).append(row)

    medians = {}
    for key, items in grouped.items():
        medians[key] = statistics.median(float(row["latency_ms"]) for row in items)

    summary = []
    for key in sorted(medians):
        case_id, col_warps, k_pack = key
        baseline = medians.get((case_id, BASELINE_CONFIG[0], BASELINE_CONFIG[1]))
        median_latency = medians[key]
        speedup = baseline / median_latency if baseline else None
        speedup_pct = (speedup - 1.0) * 100.0 if speedup else None
        first = grouped[key][0]
        summary.append({
            "case_id": case_id,
            "batch": first["batch"],
            "kv_ctx": first["kv_ctx"],
            "pv_block_col_warps": col_warps,
            "pv_k_pack": k_pack,
            "mapping_desc": first["mapping_desc"],
            "median_latency_ms": round(median_latency, 6),
            "baseline_2x2_latency_ms": round(baseline, 6) if baseline else "",
            "speedup_vs_2x2": round(speedup, 6) if speedup else "",
            "speedup_pct_vs_2x2": round(speedup_pct, 3) if speedup_pct is not None else "",
            "num_split": first["num_split"],
            "status": "PASS",
        })
    return summary


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=str, default="race_tests/mla/test_cases_mla_batch_ctx.json")
    parser.add_argument("--cases", type=str, default=",".join(str(x) for x in DEFAULT_CASE_IDS))
    parser.add_argument("--configs", type=str, default=",".join(f"{a}x{b}" for a, b in DEFAULT_CONFIGS))
    parser.add_argument("--repeats", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=500)
    parser.add_argument("--output", type=str, default="race_tests/mla/mla_experi/v23_full256_qkgemm.csv")
    parser.add_argument("--summary-output", type=str, default="race_tests/mla/mla_experi/v23_full256_qkgemm_summary.csv")
    args = parser.parse_args()

    case_ids = parse_csv_ints(args.cases)
    configs = parse_configs(args.configs)
    cases = load_cases(args.json, case_ids)
    os.makedirs(os.path.dirname(args.output), exist_ok=True)

    fieldnames = [
        "case_id", "batch", "heads", "kv_heads", "kv_ctx", "dim", "pe_dim",
        "pv_block_col_warps", "pv_k_pack", "mapping_desc", "repeat",
        "latency_ms", "median_latency_ms", "tflops", "num_split", "status",
    ]
    rows = []
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
            for col_warps, k_pack in configs:
                desc = mapping_desc(col_warps, k_pack)
                latencies = []
                config_rows = []
                config_failed = False
                print(f"  config={col_warps}x{k_pack}  {desc}")
                for rep in range(args.repeats):
                    if config_failed:
                        row = {
                            "case_id": case_id, "batch": batch, "heads": heads, "kv_heads": kv_heads,
                            "kv_ctx": kv_ctx, "dim": dim, "pe_dim": pe_dim,
                            "pv_block_col_warps": col_warps, "pv_k_pack": k_pack,
                            "mapping_desc": desc, "repeat": rep,
                            "latency_ms": -1, "median_latency_ms": "",
                            "tflops": -1, "num_split": -1,
                            "status": "SKIP: first repeat failed correctness or compile",
                        }
                        print(f"    rep={rep} SKIP: first repeat failed")
                        config_rows.append(row)
                        continue
                    try:
                        latency, tflops, num_split = main(
                            batch,
                            heads,
                            kv_heads,
                            kv_ctx,
                            dim,
                            pe_dim,
                            pv_block_col_warps=col_warps,
                            pv_k_pack=k_pack,
                            warmup=args.warmup,
                            check_correctness=(rep == 0),
                        )
                        latencies.append(latency)
                        row = {
                            "case_id": case_id, "batch": batch, "heads": heads, "kv_heads": kv_heads,
                            "kv_ctx": kv_ctx, "dim": dim, "pe_dim": pe_dim,
                            "pv_block_col_warps": col_warps, "pv_k_pack": k_pack,
                            "mapping_desc": desc, "repeat": rep,
                            "latency_ms": round(latency, 6), "median_latency_ms": "",
                            "tflops": round(tflops, 4), "num_split": num_split, "status": "PASS",
                        }
                        print(f"    rep={rep} latency={latency:.6f} ms")
                    except Exception as e:
                        config_failed = True
                        row = {
                            "case_id": case_id, "batch": batch, "heads": heads, "kv_heads": kv_heads,
                            "kv_ctx": kv_ctx, "dim": dim, "pe_dim": pe_dim,
                            "pv_block_col_warps": col_warps, "pv_k_pack": k_pack,
                            "mapping_desc": desc, "repeat": rep,
                            "latency_ms": -1, "median_latency_ms": "",
                            "tflops": -1, "num_split": -1,
                            "status": f"FAIL: {str(e).splitlines()[0]}",
                        }
                        print(f"    rep={rep} FAIL: {e}")
                    config_rows.append(row)
                if latencies:
                    median_latency = statistics.median(latencies)
                    for row in config_rows:
                        if row["status"] == "PASS":
                            row["median_latency_ms"] = round(median_latency, 6)
                for row in config_rows:
                    writer.writerow(row)
                    csvfile.flush()
                    rows.append(row)

    summary = summarize_rows(rows)
    summary_fields = [
        "case_id", "batch", "kv_ctx", "pv_block_col_warps", "pv_k_pack",
        "mapping_desc", "median_latency_ms", "baseline_2x2_latency_ms",
        "speedup_vs_2x2", "speedup_pct_vs_2x2", "num_split", "status",
    ]
    with open(args.summary_output, "w", newline="") as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=summary_fields)
        writer.writeheader()
        writer.writerows(summary)

    print(f"\nCSV saved to: {args.output}")
    print(f"Summary saved to: {args.summary_output}")
