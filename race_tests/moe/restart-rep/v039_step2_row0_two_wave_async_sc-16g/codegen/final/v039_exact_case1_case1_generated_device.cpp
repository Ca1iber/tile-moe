
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
#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void kernel_kernel(const half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ up, half_t* __restrict__ up_logits);
extern "C" __global__ void kernel_kernel_1(half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits);
extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel(const half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ up, half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float gate_local[64];
  float up_local[64];
  half_t input_shared[32];
  half_t weight_local[64];
  int expert_id = group_idx_for_bx[((int)blockIdx.y)];
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
  #pragma unroll
  for (int i_2 = 0; i_2 < 4; ++i_2) {
    *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + (((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_2 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + ((((int)threadIdx.x) & 7) * 8)));
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 4; ++i_3) {
    *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + (((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_3 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + ((((int)threadIdx.x) & 7) * 8)));
  }
  for (int k = 0; k < 31; ++k) {
    #pragma unroll
    for (int i_4 = 0; i_4 < 4; ++i_4) {
      *(uint4*)(input_shared + (i_4 * 8)) = *(uint4*)(input + (((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_4 & 1) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (k * 64)) + ((i_4 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
    }
    __syncthreads();
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 8; ++j) {
        *(uint4*)(weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_5 = 0; i_5 < 2; ++i_5) {
          for (int j_1 = 0; j_1 < 8; ++j_1) {
            {
      *(((float32x4*)gate_local) + ((i_5 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_5 * 2)) + kp)),
                    *(((float32x4*)gate_local) + ((i_5 * 8) + j_1)));
    };
          }
        }
      }
      for (int j_2 = 0; j_2 < 8; ++j_2) {
        *(uint4*)(weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
        for (int i_6 = 0; i_6 < 2; ++i_6) {
          for (int j_3 = 0; j_3 < 8; ++j_3) {
            {
      *(((float32x4*)up_local) + ((i_6 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_6 * 2)) + kp_1)),
                    *(((float32x4*)up_local) + ((i_6 * 8) + j_3)));
    };
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int i_7 = 0; i_7 < 4; ++i_7) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_7 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_7 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k * 64)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    #pragma unroll
    for (int i_8 = 0; i_8 < 4; ++i_8) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_8 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_8 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k * 64)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
  }
  #pragma unroll
  for (int i_9 = 0; i_9 < 4; ++i_9) {
    *(uint4*)(input_shared + (i_9 * 8)) = *(uint4*)(input + (((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_9 & 1) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + ((i_9 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 1984));
  }
  __syncthreads();
  for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
    for (int j_4 = 0; j_4 < 8; ++j_4) {
      *(uint4*)(weight_local + (j_4 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
    }
    for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
      for (int i_10 = 0; i_10 < 2; ++i_10) {
        for (int j_5 = 0; j_5 < 8; ++j_5) {
          {
      *(((float32x4*)gate_local) + ((i_10 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)input_shared) + (((ki_1 * 4) + (i_10 * 2)) + kp_2)),
                    *(((float32x4*)gate_local) + ((i_10 * 8) + j_5)));
    };
        }
      }
    }
    for (int j_6 = 0; j_6 < 8; ++j_6) {
      *(uint4*)(weight_local + (j_6 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
    }
    for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
      for (int i_11 = 0; i_11 < 2; ++i_11) {
        for (int j_7 = 0; j_7 < 8; ++j_7) {
          {
      *(((float32x4*)up_local) + ((i_11 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)input_shared) + (((ki_1 * 4) + (i_11 * 2)) + kp_3)),
                    *(((float32x4*)up_local) + ((i_11 * 8) + j_7)));
    };
        }
      }
    }
  }
  #pragma unroll
  for (int i_12 = 0; i_12 < 16; ++i_12) {
    float broadcast_var_2 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_3 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_4 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_5 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v_ = *(float4*)(gate_local + (i_12 * 4));
      float4 __2;
        float4 v__1 = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
        float4 __3;
          float4 v__2 = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
          float4 __4;
          float4 __5;
            float4 __6;
              float4 v__3 = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
              __6.x = (v_.x*v__3.x);
              __6.y = (v_.y*v__3.y);
              __6.z = (v_.z*v__3.z);
              __6.w = (v_.w*v__3.w);
            float4 v__4 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
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
    *(float4*)(gate_local + (i_12 * 4)) = __1;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_12 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      uint2 __7;
      float4 __8;
        float4 v__5 = *(float4*)(up_local + (i_12 * 4));
        float4 v__6 = *(float4*)(gate_local + (i_12 * 4));
        __8.x = (v__5.x*v__6.x);
        __8.y = (v__5.y*v__6.y);
        __8.z = (v__5.z*v__6.z);
        __8.w = (v__5.w*v__6.w);
      ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
      ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
      *(uint2*)(up_logits + (((((((((int)blockIdx.y) * 1048576) + ((((int)threadIdx.x) >> 6) * 262144)) + ((i_12 >> 3) * 131072)) + ((((int)threadIdx.x) & 15) * 8192)) + (((int)blockIdx.x) * 128)) + ((i_12 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = __7;
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits) {
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
  int expert_id = group_idx_for_bx[((int)blockIdx.y)];
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
    *(uint4*)(up_logits_shared + (i_2 * 8)) = *(uint4*)(up_logits + ((((((((int)blockIdx.y) * 1048576) + ((((int)threadIdx.x) >> 6) * 262144)) + ((i_2 & 1) * 131072)) + ((((int)threadIdx.x) & 15) * 8192)) + ((i_2 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 4; ++i_3) {
    *(uint4*)(down_shared + ((((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(down + (((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + (i_3 * 262144)) + ((((int)threadIdx.x) >> 3) * 8192)) + ((((int)threadIdx.x) & 7) * 8)));
  }
  __syncthreads();
  for (int k_pair = 0; k_pair < 64; ++k_pair) {
    if (((int)threadIdx.x) < 128) {
      for (int row_batch_0 = 0; row_batch_0 < 8; ++row_batch_0) {
        moe_select_memcpy_async_16((&(down_shared[(((((row_batch_0 * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8))])), (&(down[(((((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + (row_batch_0 * 131072)) + ((((int)threadIdx.x) >> 3) * 8192)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 1048576)])), (&(down_copy_barrier[(row_batch_0 * 4)])), (bool)1);
      }
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 4; ++i_4) {
      *(uint4*)(up_logits_prefetch + (i_4 * 8)) = *(uint4*)(up_logits + ((((((((((int)blockIdx.y) * 1048576) + ((((int)threadIdx.x) >> 6) * 262144)) + ((i_4 & 1) * 131072)) + ((((int)threadIdx.x) & 15) * 8192)) + (k_pair * 128)) + ((i_4 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 64));
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
    __syncthreads();
    if (((int)threadIdx.x) < 128) {
      for (int double_issue_1 = 0; double_issue_1 < 2; ++double_issue_1) {
        moe_select_memcpy_async_16((&(down_shared[((((((double_issue_1 * 1024) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8)) + 8192)])), (&(down[(((((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + (double_issue_1 * 131072)) + ((((int)threadIdx.x) >> 3) * 8192)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 64)])), (&(down_copy_barrier[(double_issue_1 * 4)])), (bool)1);
      }
    }
    moe_memcpy_sync_16((&(down_shared[((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8)) + 10240)])), (&(down[((((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + ((((int)threadIdx.x) >> 3) * 8192)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 262208)])), (&(down_copy_barrier[4])));
    for (int row_batch_1_async = 2; row_batch_1_async < 4; ++row_batch_1_async) {
      moe_select_memcpy_async_16((&(down_shared[((((((row_batch_1_async * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8)) + 8192)])), (&(down[(((((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + (row_batch_1_async * 262144)) + ((((int)threadIdx.x) >> 3) * 8192)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 64)])), (&(down_copy_barrier[(row_batch_1_async * 4)])), (bool)1);
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
      moe_select_memcpy_async_16((&(down_shared[(((((row_batch_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8))])), (&(down[(((((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + (row_batch_2 * 262144)) + ((((int)threadIdx.x) >> 3) * 8192)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 1048640)])), (&(down_copy_barrier[(row_batch_2 * 4)])), (bool)1);
    }
    if (k_pair < 63) {
      #pragma unroll
      for (int i_7 = 0; i_7 < 4; ++i_7) {
        *(uint4*)(up_logits_shared + (i_7 * 8)) = *(uint4*)(up_logits + ((((((((((int)blockIdx.y) * 1048576) + ((((int)threadIdx.x) >> 6) * 262144)) + ((i_7 & 1) * 131072)) + ((((int)threadIdx.x) & 15) * 8192)) + (k_pair * 128)) + ((i_7 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 128));
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
    __syncthreads();
    if (k_pair < 63) {
      for (int row_batch_3 = 0; row_batch_3 < 4; ++row_batch_3) {
        moe_select_memcpy_async_16((&(down_shared[((((((row_batch_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) & 1)) & 1) * 8)) + 8192)])), (&(down[(((((((expert_id * 16777216) + (((int)blockIdx.x) * 2097152)) + (row_batch_3 * 262144)) + ((((int)threadIdx.x) >> 3) * 8192)) + (k_pair * 128)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 128)])), (&(down_copy_barrier[(row_batch_3 * 4)])), (bool)1);
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
    if (k_pair < 63) {
      __syncthreads();
    }
  }
  for (int row_slot = 0; row_slot < 2; ++row_slot) {
    routed_weight_local[row_slot] = 0x0p+0f/*0.000000e+00*/;
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      float condval;
      if (((0 <= ((((((((int)blockIdx.y) * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start)) && (((((((((int)blockIdx.y) * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start) < 2272))) {
        condval = routed_weights[((((((((int64_t)((int)blockIdx.y)) * (int64_t)128) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32)) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15)) - ((int64_t)padded_start))];
      } else {
        condval = 0x0p+0f/*0.000000e+00*/;
      }
      routed_weight_local[row_slot] = condval;
    }
  }
  #pragma unroll
  for (int i_10 = 0; i_10 < 16; ++i_10) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_10 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
    *(uint2*)(output + (((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_10 >> 3) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (((int)blockIdx.x) * 256)) + ((i_10 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast + 0);
  }
  #pragma unroll
  for (int i_11 = 0; i_11 < 16; ++i_11) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
    *(uint2*)(output + ((((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_11 >> 3) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (((int)blockIdx.x) * 256)) + ((i_11 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_1 + 0);
  }
}

