
#include <maca_async.h>
__device__ __forceinline__ void moe_silu_fast_rcp_float4x16(float* values) {
#pragma unroll
  for (int i = 0; i < 16; ++i) {
    float4 v = reinterpret_cast<float4*>(values)[i];
    v.x *= __builtin_mxc_rcpf(1.0f + exp2f(-v.x * 1.44269504f));
    v.y *= __builtin_mxc_rcpf(1.0f + exp2f(-v.y * 1.44269504f));
    v.z *= __builtin_mxc_rcpf(1.0f + exp2f(-v.z * 1.44269504f));
    v.w *= __builtin_mxc_rcpf(1.0f + exp2f(-v.w * 1.44269504f));
    reinterpret_cast<float4*>(values)[i] = v;
  }
}
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
__device__ __forceinline__ void moe_stage_gate_up_one_wave(
    void* gate_shared_base, void* up_shared_base,
    const void* gate_global_base, const void* up_global_base,
    int row_batch, int lane) {
  const int local_lane = lane & 63;
  const int lane_row = local_lane >> 3;
  const int row = (row_batch << 3) + lane_row;
  const int logical_col = ((local_lane & 7) ^ lane_row) << 3;
  // The swizzled logical column lowers to the unswizzled lane group in
  // physical shared storage: physical_col = (local_lane & 7) * 8.
  const int shared_byte_offset = (row << 7) + ((local_lane & 7) << 4);
  const int global_byte_offset = (row << 12) + (logical_col << 1);
  if (lane < 64) {
    cooperative_groups::details::continuous_pipeline_memcpy_async<16>(
        reinterpret_cast<char*>(gate_shared_base) + shared_byte_offset,
        reinterpret_cast<const char*>(gate_global_base) + global_byte_offset);
  } else if (lane < 128) {
    cooperative_groups::details::continuous_pipeline_memcpy_async<16>(
        reinterpret_cast<char*>(up_shared_base) + shared_byte_offset,
        reinterpret_cast<const char*>(up_global_base) + global_byte_offset);
  }
}
__device__ __forceinline__ void moe_stage_gate_up_one_wave_2rows(
    void* gate_shared_base, void* up_shared_base,
    const void* gate_global_base, const void* up_global_base,
    int row_pair, int lane) {
  moe_stage_gate_up_one_wave(gate_shared_base, up_shared_base,
      gate_global_base, up_global_base, row_pair << 1, lane);
  moe_stage_gate_up_one_wave(gate_shared_base, up_shared_base,
      gate_global_base, up_global_base, (row_pair << 1) + 1, lane);
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

__device__ __forceinline__ void moe_stage_gate_up_one_wave_7168(
    void* gate_shared_base, void* up_shared_base,
    const void* gate_global_base, const void* up_global_base,
    int row_batch, int lane) {
  const int local_lane = lane & 63;
  const int lane_row = local_lane >> 3;
  const int row = (row_batch << 3) + lane_row;
  const int logical_col = ((local_lane & 7) ^ lane_row) << 3;
  const int shared_byte_offset = (row << 7) + ((local_lane & 7) << 4);
  const int global_byte_offset = row * 14336 + (logical_col << 1);
  if (lane < 64) {
    cooperative_groups::details::continuous_pipeline_memcpy_async<16>(
        reinterpret_cast<char*>(gate_shared_base) + shared_byte_offset,
        reinterpret_cast<const char*>(gate_global_base) + global_byte_offset);
  } else if (lane < 128) {
    cooperative_groups::details::continuous_pipeline_memcpy_async<16>(
        reinterpret_cast<char*>(up_shared_base) + shared_byte_offset,
        reinterpret_cast<const char*>(up_global_base) + global_byte_offset);
  }
}
__device__ __forceinline__ void moe_stage_gate_up_one_wave_2rows_7168(
    void* gate_shared_base, void* up_shared_base,
    const void* gate_global_base, const void* up_global_base,
    int row_pair, int lane) {
  moe_stage_gate_up_one_wave_7168(gate_shared_base, up_shared_base,
      gate_global_base, up_global_base, row_pair << 1, lane);
  moe_stage_gate_up_one_wave_7168(gate_shared_base, up_shared_base,
      gate_global_base, up_global_base, (row_pair << 1) + 1, lane);
}
#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void kernel_kernel(half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, half_t* __restrict__ up, half_t* __restrict__ up_logits);
extern "C" __global__ void kernel_kernel_1(half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits);
extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel(half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, half_t* __restrict__ up, half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  int cta_mapping[2];
  float gate_local[64];
  float up_local[64];
  half_t input_shared[32];
  half_t input_prefetch[32];
  half_t weight_local[64];
  if (((int)blockIdx.y) < 32) {
    cta_mapping[0] = ((int)blockIdx.y);
    cta_mapping[1] = ((int)blockIdx.x);
  } else {
    cta_mapping[0] = (((((int)blockIdx.y) >> 1) * 2) + (((int)blockIdx.x) & 1));
    cta_mapping[1] = (((((int)blockIdx.y) & 1) * 8) + (((int)blockIdx.x) >> 1));
  }
  int bx = cta_mapping[0];
  int by = cta_mapping[1];
  int condval;
  if (((0 <= bx) && (bx < 96))) {
    condval = group_idx_for_bx[((int64_t)bx)];
  } else {
    condval = 0;
  }
  int expert_id = condval;
  int group_size = group_sizes[expert_id];
  int padded_start = group_padded_offsets[expert_id];
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(gate_local + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 16; ++i_1) {
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(up_local + (i_1 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
  }
  if (0 <= by) {
    for (int row_batch_step1_init = 0; row_batch_step1_init < 8; ++row_batch_step1_init) {
      if (by < 16) {
        moe_stage_gate_up_one_wave_2rows_7168((&(((half_t*)buf_dyn_shmem)[0])), (&(((half_t*)buf_dyn_shmem)[8192])), (&(gate[((expert_id * 14680064) + (by * 917504))])), (&(up[((expert_id * 14680064) + (by * 917504))])), row_batch_step1_init, ((int)threadIdx.x));
      }
    }
  }
  #pragma unroll
  for (int i_2 = 0; i_2 < 4; ++i_2) {
    half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
    uint4 condval_1;
    if (((bx < 96) && (0 <= bx))) {
      condval_1 = *(uint4*)(input + ((((((((int64_t)bx) * (int64_t)917504) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376)) + ((((int64_t)i_2) & (int64_t)1) * (int64_t)114688)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + ((((int64_t)i_2) >> (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)));
    } else {
      condval_1 = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
    }
    *(uint4*)(input_shared + (i_2 * 8)) = condval_1;
  }
  for (int k_pair_step1_async = 0; k_pair_step1_async < 56; ++k_pair_step1_async) {
    __syncthreads();
    #pragma unroll
    for (int i_3 = 0; i_3 < 4; ++i_3) {
      if (i_3 < 2) {
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_2;
        if (((bx < 96) && (0 <= bx))) {
          condval_2 = *(uint4*)(input + (((((((((int64_t)bx) * (int64_t)917504) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376)) + (((int64_t)i_3) * (int64_t)114688)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)k_pair_step1_async) * (int64_t)128)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)) + (int64_t)64));
        } else {
          condval_2 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
        }
        *(uint4*)(input_prefetch + (i_3 * 8)) = condval_2;
      }
    }
    for (int j = 0; j < 8; ++j) {
      *(uint4*)(weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((int)threadIdx.x) & 7) >> 2) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
    }
    for (int kp = 0; kp < 2; ++kp) {
      for (int i_4 = 0; i_4 < 2; ++i_4) {
        for (int j_1 = 0; j_1 < 8; ++j_1) {
          {
      *(((float32x4*)gate_local) + ((i_4 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)input_shared) + ((i_4 * 2) + kp)),
                    *(((float32x4*)gate_local) + ((i_4 * 8) + j_1)));
    };
        }
      }
    }
    for (int j_2 = 0; j_2 < 8; ++j_2) {
      *(uint4*)(weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((int)threadIdx.x) & 7) >> 2) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
    }
    for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
      for (int i_5 = 0; i_5 < 2; ++i_5) {
        for (int j_3 = 0; j_3 < 8; ++j_3) {
          {
      *(((float32x4*)up_local) + ((i_5 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)input_shared) + ((i_5 * 2) + kp_1)),
                    *(((float32x4*)up_local) + ((i_5 * 8) + j_3)));
    };
        }
      }
    }
    #pragma unroll
    for (int i_6 = 0; i_6 < 2; ++i_6) {
      half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval_3;
      if (((bx < 96) && (0 <= bx))) {
        condval_3 = *(uint4*)(input + (((((((((int64_t)bx) * (int64_t)917504) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376)) + (((int64_t)i_6) * (int64_t)114688)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)k_pair_step1_async) * (int64_t)128)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)) + (int64_t)96));
      } else {
        condval_3 = make_uint4(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
      }
      *(uint4*)(input_prefetch + ((i_6 * 8) + 16)) = condval_3;
    }
    for (int j_4 = 0; j_4 < 8; ++j_4) {
      *(uint4*)(weight_local + (j_4 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + 1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
    }
    for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
      for (int i_7 = 0; i_7 < 2; ++i_7) {
        for (int j_5 = 0; j_5 < 8; ++j_5) {
          {
      *(((float32x4*)gate_local) + ((i_7 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)input_shared) + (((i_7 * 2) + kp_2) + 4)),
                    *(((float32x4*)gate_local) + ((i_7 * 8) + j_5)));
    };
        }
      }
    }
    for (int j_6 = 0; j_6 < 8; ++j_6) {
      *(uint4*)(weight_local + (j_6 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + 1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
    }
    for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
      for (int i_8 = 0; i_8 < 2; ++i_8) {
        for (int j_7 = 0; j_7 < 8; ++j_7) {
          {
      *(((float32x4*)up_local) + ((i_8 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)input_shared) + (((i_8 * 2) + kp_3) + 4)),
                    *(((float32x4*)up_local) + ((i_8 * 8) + j_7)));
    };
        }
      }
    }
    __syncthreads();
    if (0 <= by) {
      for (int row_batch_step1_odd = 0; row_batch_step1_odd < 8; ++row_batch_step1_odd) {
        if (by < 16) {
          moe_stage_gate_up_one_wave_2rows_7168((&(((half_t*)buf_dyn_shmem)[0])), (&(((half_t*)buf_dyn_shmem)[8192])), (&(gate[((((expert_id * 14680064) + (by * 917504)) + (k_pair_step1_async * 128)) + 64)])), (&(up[((((expert_id * 14680064) + (by * 917504)) + (k_pair_step1_async * 128)) + 64)])), row_batch_step1_odd, ((int)threadIdx.x));
        }
      }
    }
    __syncthreads();
    if (k_pair_step1_async < 55) {
      #pragma unroll
      for (int i_9 = 0; i_9 < 4; ++i_9) {
        if (i_9 < 2) {
          half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
          uint4 condval_4;
          if (((bx < 96) && (0 <= bx))) {
            condval_4 = *(uint4*)(input + (((((((((int64_t)bx) * (int64_t)917504) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376)) + (((int64_t)i_9) * (int64_t)114688)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)k_pair_step1_async) * (int64_t)128)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)) + (int64_t)128));
          } else {
            condval_4 = make_uint4(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
          }
          *(uint4*)(input_shared + (i_9 * 8)) = condval_4;
        }
      }
    }
    for (int j_8 = 0; j_8 < 8; ++j_8) {
      *(uint4*)(weight_local + (j_8 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j_8 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((int)threadIdx.x) & 7) >> 2) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
    }
    for (int kp_4 = 0; kp_4 < 2; ++kp_4) {
      for (int i_10 = 0; i_10 < 2; ++i_10) {
        for (int j_9 = 0; j_9 < 8; ++j_9) {
          {
      *(((float32x4*)gate_local) + ((i_10 * 8) + j_9)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_9 * 2) + kp_4)),
                    *(((float16x4*)input_prefetch) + ((i_10 * 2) + kp_4)),
                    *(((float32x4*)gate_local) + ((i_10 * 8) + j_9)));
    };
        }
      }
    }
    for (int j_10 = 0; j_10 < 8; ++j_10) {
      *(uint4*)(weight_local + (j_10 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_10 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((int)threadIdx.x) & 7) >> 2) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
    }
    for (int kp_5 = 0; kp_5 < 2; ++kp_5) {
      for (int i_11 = 0; i_11 < 2; ++i_11) {
        for (int j_11 = 0; j_11 < 8; ++j_11) {
          {
      *(((float32x4*)up_local) + ((i_11 * 8) + j_11)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_11 * 2) + kp_5)),
                    *(((float16x4*)input_prefetch) + ((i_11 * 2) + kp_5)),
                    *(((float32x4*)up_local) + ((i_11 * 8) + j_11)));
    };
        }
      }
    }
    if (k_pair_step1_async < 55) {
      #pragma unroll
      for (int i_12 = 0; i_12 < 2; ++i_12) {
        half_t broadcast_var_6 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_5;
        if (((bx < 96) && (0 <= bx))) {
          condval_5 = *(uint4*)(input + (((((((((int64_t)bx) * (int64_t)917504) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376)) + (((int64_t)i_12) * (int64_t)114688)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)k_pair_step1_async) * (int64_t)128)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)) + (int64_t)160));
        } else {
          condval_5 = make_uint4(__pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6));
        }
        *(uint4*)(input_shared + ((i_12 * 8) + 16)) = condval_5;
      }
    }
    for (int j_12 = 0; j_12 < 8; ++j_12) {
      *(uint4*)(weight_local + (j_12 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j_12 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + 1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
    }
    for (int kp_6 = 0; kp_6 < 2; ++kp_6) {
      for (int i_13 = 0; i_13 < 2; ++i_13) {
        for (int j_13 = 0; j_13 < 8; ++j_13) {
          {
      *(((float32x4*)gate_local) + ((i_13 * 8) + j_13)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_13 * 2) + kp_6)),
                    *(((float16x4*)input_prefetch) + (((i_13 * 2) + kp_6) + 4)),
                    *(((float32x4*)gate_local) + ((i_13 * 8) + j_13)));
    };
        }
      }
    }
    for (int j_14 = 0; j_14 < 8; ++j_14) {
      *(uint4*)(weight_local + (j_14 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_14 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + 1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
    }
    for (int kp_7 = 0; kp_7 < 2; ++kp_7) {
      for (int i_14 = 0; i_14 < 2; ++i_14) {
        for (int j_15 = 0; j_15 < 8; ++j_15) {
          {
      *(((float32x4*)up_local) + ((i_14 * 8) + j_15)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_15 * 2) + kp_7)),
                    *(((float16x4*)input_prefetch) + (((i_14 * 2) + kp_7) + 4)),
                    *(((float32x4*)up_local) + ((i_14 * 8) + j_15)));
    };
        }
      }
    }
    if (k_pair_step1_async < 55) {
      __syncthreads();
      if (0 <= by) {
        for (int row_batch_step1_next_even = 0; row_batch_step1_next_even < 8; ++row_batch_step1_next_even) {
          if (by < 16) {
            moe_stage_gate_up_one_wave_2rows_7168((&(((half_t*)buf_dyn_shmem)[0])), (&(((half_t*)buf_dyn_shmem)[8192])), (&(gate[((((expert_id * 14680064) + (by * 917504)) + (k_pair_step1_async * 128)) + 128)])), (&(up[((((expert_id * 14680064) + (by * 917504)) + (k_pair_step1_async * 128)) + 128)])), row_batch_step1_next_even, ((int)threadIdx.x));
          }
        }
      }
    }
  }
  #pragma unroll
  for (int i_15 = 0; i_15 < 16; ++i_15) {
    float broadcast_var_7 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_8 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_9 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_10 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v_ = *(float4*)(gate_local + (i_15 * 4));
      float4 __2;
        float4 v__1 = make_float4(broadcast_var_7, broadcast_var_7, broadcast_var_7, broadcast_var_7);
        float4 __3;
          float4 v__2 = make_float4(broadcast_var_8, broadcast_var_8, broadcast_var_8, broadcast_var_8);
          float4 __4;
          float4 __5;
            float4 __6;
              float4 v__3 = make_float4(broadcast_var_9, broadcast_var_9, broadcast_var_9, broadcast_var_9);
              __6.x = (v_.x*v__3.x);
              __6.y = (v_.y*v__3.y);
              __6.z = (v_.z*v__3.z);
              __6.w = (v_.w*v__3.w);
            float4 v__4 = make_float4(broadcast_var_10, broadcast_var_10, broadcast_var_10, broadcast_var_10);
            __5.x = (__6.x*v__4.x);
            __5.y = (__6.y*v__4.y);
            __5.z = (__6.z*v__4.z);
            __5.w = (__6.w*v__4.w);
          __4.x = exp2f(__5.x);
          __4.y = exp2f(__5.y);
          __4.z = exp2f(__5.z);
          __4.w = exp2f(__5.w);
          __3.x = (v__2.x+__4.x);
          __3.y = (v__2.y+__4.y);
          __3.z = (v__2.z+__4.z);
          __3.w = (v__2.w+__4.w);
        __2.x = (v__1.x/__3.x);
        __2.y = (v__1.y/__3.y);
        __2.z = (v__1.z/__3.z);
        __2.w = (v__1.w/__3.w);
      __1.x = (v_.x*__2.x);
      __1.y = (v_.y*__2.y);
      __1.z = (v_.z*__2.z);
      __1.w = (v_.w*__2.w);
    *(float4*)(gate_local + (i_15 * 4)) = __1;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_15 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      if (0 <= by) {
        if (by < 16) {
          if (0 <= bx) {
            if (bx < 96) {
              uint2 __7;
              float4 __8;
                float4 v__5 = *(float4*)(up_local + (i_15 * 4));
                float4 v__6 = *(float4*)(gate_local + (i_15 * 4));
                __8.x = (v__5.x*v__6.x);
                __8.y = (v__5.y*v__6.y);
                __8.z = (v__5.z*v__6.z);
                __8.w = (v__5.w*v__6.w);
              ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
              ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
              *(uint2*)(up_logits + (((((((bx * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_15 >> 3) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (by * 128)) + ((i_15 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = __7;
            }
          }
        }
      }
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits) {
  int cta_mapping[2];
  float out_local_0[64];
  float out_local_1[64];
  half_t up_logits_shared[32];
  extern __shared__ __align__(1024) half_t down_shared[];
  float routed_weight_local[2];
  uint down_copy_barrier[16];
  half_t up_logits_prefetch[32];
  half_t down_local[64];
  half_t output_local_cast[4];
  half_t output_local_cast_1[4];
  if (((int)blockIdx.y) < 32) {
    cta_mapping[0] = ((int)blockIdx.y);
    cta_mapping[1] = ((int)blockIdx.x);
  } else {
    cta_mapping[0] = (((((int)blockIdx.y) >> 1) * 2) + (((int)blockIdx.x) & 1));
    cta_mapping[1] = (((((int)blockIdx.y) & 1) * 14) + (((int)blockIdx.x) >> 1));
  }
  int bx = cta_mapping[0];
  int by = cta_mapping[1];
  int expert_id = group_idx_for_bx[bx];
  int group_size = group_sizes[expert_id];
  int raw_start = group_offsets[expert_id];
  int padded_start = group_padded_offsets[expert_id];
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(out_local_0 + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 16; ++i_1) {
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(out_local_1 + (i_1 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
  }
  #pragma unroll
  for (int i_2 = 0; i_2 < 4; ++i_2) {
    *(uint4*)(up_logits_shared + (i_2 * 8)) = *(uint4*)(up_logits + ((((((bx * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_2 & 1) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + ((i_2 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 4; ++i_3) {
    *(uint4*)(down_shared + ((((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(down + (((((expert_id * 14680064) + (by * 524288)) + (i_3 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + ((((int)threadIdx.x) & 7) * 8)));
  }
  __syncthreads();
  for (int k_pair = 0; k_pair < 16; ++k_pair) {
    for (int row_batch_0 = 0; row_batch_0 < 4; ++row_batch_0) {
      moe_select_memcpy_async_16((&(down_shared[(((((row_batch_0 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8))])), (&(down[(((((((expert_id * 14680064) + (by * 524288)) + (row_batch_0 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 262144)])), (&(down_copy_barrier[(row_batch_0 * 4)])), (bool)0);
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 4; ++i_4) {
      *(uint4*)(up_logits_prefetch + (i_4 * 8)) = *(uint4*)(up_logits + ((((((((bx * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_4 & 1) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (k_pair * 128)) + ((i_4 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 64));
    }
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 8; ++j) {
        *(uint4*)(down_local + (j * 8)) = *(uint4*)(down_shared + ((((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_5 = 0; i_5 < 2; ++i_5) {
          for (int j_1 = 0; j_1 < 8; ++j_1) {
            {
      *(((float32x4*)out_local_0) + ((i_5 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)up_logits_shared) + (((ki * 4) + (i_5 * 2)) + kp)),
                    *(((float32x4*)out_local_0) + ((i_5 * 8) + j_1)));
    };
          }
        }
      }
    }
    for (int wait_slot_0 = 0; wait_slot_0 < 4; ++wait_slot_0) {
      moe_select_wait_async_16((&(down_copy_barrier[(wait_slot_0 * 4)])), (bool)0);
    }
    __syncthreads();
    for (int row_batch_1 = 0; row_batch_1 < 4; ++row_batch_1) {
      moe_memcpy_sync_16((&(down_shared[((((((row_batch_1 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8)) + 8192)])), (&(down[(((((((expert_id * 14680064) + (by * 524288)) + (row_batch_1 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 64)])), (&(down_copy_barrier[(row_batch_1 * 4)])));
    }
    for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
      for (int j_2 = 0; j_2 < 8; ++j_2) {
        *(uint4*)(down_local + (j_2 * 8)) = *(uint4*)(down_shared + (((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
        for (int i_6 = 0; i_6 < 2; ++i_6) {
          for (int j_3 = 0; j_3 < 8; ++j_3) {
            {
      *(((float32x4*)out_local_1) + ((i_6 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)up_logits_shared) + (((ki_1 * 4) + (i_6 * 2)) + kp_1)),
                    *(((float32x4*)out_local_1) + ((i_6 * 8) + j_3)));
    };
          }
        }
      }
    }
    __syncthreads();
    for (int row_batch_2 = 0; row_batch_2 < 4; ++row_batch_2) {
      moe_select_memcpy_async_16((&(down_shared[(((((row_batch_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8))])), (&(down[(((((((expert_id * 14680064) + (by * 524288)) + (row_batch_2 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 262208)])), (&(down_copy_barrier[(row_batch_2 * 4)])), (bool)0);
    }
    if (k_pair < 15) {
      #pragma unroll
      for (int i_7 = 0; i_7 < 4; ++i_7) {
        *(uint4*)(up_logits_shared + (i_7 * 8)) = *(uint4*)(up_logits + ((((((((bx * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_7 & 1) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (k_pair * 128)) + ((i_7 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 128));
      }
    }
    for (int ki_2 = 0; ki_2 < 2; ++ki_2) {
      for (int j_4 = 0; j_4 < 8; ++j_4) {
        *(uint4*)(down_local + (j_4 * 8)) = *(uint4*)(down_shared + ((((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_2) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
        for (int i_8 = 0; i_8 < 2; ++i_8) {
          for (int j_5 = 0; j_5 < 8; ++j_5) {
            {
      *(((float32x4*)out_local_0) + ((i_8 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_2 * 4) + (i_8 * 2)) + kp_2)),
                    *(((float32x4*)out_local_0) + ((i_8 * 8) + j_5)));
    };
          }
        }
      }
    }
    for (int wait_slot_2 = 0; wait_slot_2 < 4; ++wait_slot_2) {
      moe_select_wait_async_16((&(down_copy_barrier[(wait_slot_2 * 4)])), (bool)0);
    }
    __syncthreads();
    if (k_pair < 15) {
      for (int row_batch_3 = 0; row_batch_3 < 4; ++row_batch_3) {
        moe_select_memcpy_async_16((&(down_shared[((((((row_batch_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8)) + 8192)])), (&(down[(((((((expert_id * 14680064) + (by * 524288)) + (row_batch_3 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 128)])), (&(down_copy_barrier[(row_batch_3 * 4)])), (bool)0);
      }
    }
    for (int ki_3 = 0; ki_3 < 2; ++ki_3) {
      for (int j_6 = 0; j_6 < 8; ++j_6) {
        *(uint4*)(down_local + (j_6 * 8)) = *(uint4*)(down_shared + (((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_3) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
        for (int i_9 = 0; i_9 < 2; ++i_9) {
          for (int j_7 = 0; j_7 < 8; ++j_7) {
            {
      *(((float32x4*)out_local_1) + ((i_9 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_3 * 4) + (i_9 * 2)) + kp_3)),
                    *(((float32x4*)out_local_1) + ((i_9 * 8) + j_7)));
    };
          }
        }
      }
    }
    if (k_pair < 15) {
      for (int wait_slot_3 = 0; wait_slot_3 < 4; ++wait_slot_3) {
        moe_select_wait_async_16((&(down_copy_barrier[(wait_slot_3 * 4)])), (bool)0);
      }
      __syncthreads();
    }
  }
  for (int row_slot = 0; row_slot < 2; ++row_slot) {
    routed_weight_local[row_slot] = 0x0p+0f/*0.000000e+00*/;
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      float condval;
      if (((0 <= ((((((bx * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start)) && (((((((bx * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start) < 9088))) {
        condval = routed_weights[((((((((int64_t)bx) * (int64_t)128) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32)) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15)) - ((int64_t)padded_start))];
      } else {
        condval = 0x0p+0f/*0.000000e+00*/;
      }
      routed_weight_local[row_slot] = condval;
    }
  }
  #pragma unroll
  for (int i_10 = 0; i_10 < 16; ++i_10) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_10 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      uint2 __1;
      float4 __2;
        float4 v_ = *(float4*)(out_local_0 + (i_10 * 4));
        float4 v__1 = make_float4(routed_weight_local[(i_10 >> 3)], routed_weight_local[(i_10 >> 3)], routed_weight_local[(i_10 >> 3)], routed_weight_local[(i_10 >> 3)]);
        __2.x = (v_.x*v__1.x);
        __2.y = (v_.y*v__1.y);
        __2.z = (v_.z*v__1.z);
        __2.w = (v_.w*v__1.w);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
      *(uint2*)(output_local_cast + 0) = __1;
    } else {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast + 0) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
    }
    *(uint2*)(output + (((((((bx * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_10 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (by * 256)) + ((i_10 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast + 0);
  }
  #pragma unroll
  for (int i_11 = 0; i_11 < 16; ++i_11) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      uint2 __3;
      float4 __4;
        float4 v__2 = *(float4*)(out_local_1 + (i_11 * 4));
        float4 v__3 = make_float4(routed_weight_local[(i_11 >> 3)], routed_weight_local[(i_11 >> 3)], routed_weight_local[(i_11 >> 3)], routed_weight_local[(i_11 >> 3)]);
        __4.x = (v__2.x*v__3.x);
        __4.y = (v__2.y*v__3.y);
        __4.z = (v__2.z*v__3.z);
        __4.w = (v__2.w*v__3.w);
      ((half2*)(&__3))[0] = __float22half2_rn(((float2*)(&__4))[0]);
      ((half2*)(&__3))[1] = __float22half2_rn(((float2*)(&__4))[1]);
      *(uint2*)(output_local_cast_1 + 0) = __3;
    } else {
      half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast_1 + 0) = make_uint2(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
    }
    *(uint2*)(output + ((((((((bx * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_11 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (by * 256)) + ((i_11 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_1 + 0);
  }
}
