#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void kernel_kernel(const half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input_original, const half_t* __restrict__ up, half_t* __restrict__ up_logits);
extern "C" __global__ void kernel_kernel_1(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits);
extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel(const half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input_original, const half_t* __restrict__ up, half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float gate_local[64];
  float up_local[64];
  half_t input_prefetch[32];
  uint input_shuffle_packed[4];
  uint input_shuffled_word[1];
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
  for (int i_2 = 0; i_2 < 8; ++i_2) {
    half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
    *(uint2*)(input_prefetch + (i_2 * 4)) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
  }
  for (int direct_row_half = 0; direct_row_half < 2; ++direct_row_half) {
    for (int direct_k_half = 0; direct_k_half < 2; ++direct_k_half) {
      *(uint4*)(input_shuffle_packed + 0) = tl::load_global_128_conditional((&(input_original[((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + (direct_row_half * 32768)) + (((((int)threadIdx.x) & 63) >> 2) * 2048)) + (direct_k_half * 32)) + ((((int)threadIdx.x) & 3) * 8))])), (((((((int)threadIdx.x) >> 6) * 32) + (direct_row_half * 16)) + ((((int)threadIdx.x) & 63) >> 2)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))));
      for (int direct_word = 0; direct_word < 4; ++direct_word) {
        input_shuffled_word[0] = __shfl_sync((uint64_t)18446744073709551615, input_shuffle_packed[direct_word], (((((int)threadIdx.x) & 15) * 4) + ((((int)threadIdx.x) & 63) >> 4)), 64);
        ushort v_ = (ushort)input_shuffled_word[0];
        input_shared[(((direct_k_half * 16) + (direct_row_half * 8)) + (direct_word * 2))] = (*(half_t *)(&(v_)));
        ushort v__1 = (ushort)(input_shuffled_word[0] >> (uint)16);
        input_shared[((((direct_k_half * 16) + (direct_row_half * 8)) + (direct_word * 2)) + 1)] = (*(half_t *)(&(v__1)));
      }
    }
  }
  for (int k_pair = 0; k_pair < 16; ++k_pair) {
    for (int odd_row_half = 0; odd_row_half < 2; ++odd_row_half) {
      for (int odd_k_half = 0; odd_k_half < 2; ++odd_k_half) {
        *(uint4*)(input_shuffle_packed + 0) = tl::load_global_128_conditional((&(input_original[((((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + (odd_row_half * 32768)) + (((((int)threadIdx.x) & 63) >> 2) * 2048)) + (k_pair * 128)) + (odd_k_half * 32)) + ((((int)threadIdx.x) & 3) * 8)) + 64)])), (((((((int)threadIdx.x) >> 6) * 32) + (odd_row_half * 16)) + ((((int)threadIdx.x) & 63) >> 2)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))));
        for (int odd_word = 0; odd_word < 4; ++odd_word) {
          input_shuffled_word[0] = __shfl_sync((uint64_t)18446744073709551615, input_shuffle_packed[odd_word], (((((int)threadIdx.x) & 15) * 4) + ((((int)threadIdx.x) & 63) >> 4)), 64);
          ushort v__2 = (ushort)input_shuffled_word[0];
          input_prefetch[(((odd_k_half * 16) + (odd_row_half * 8)) + (odd_word * 2))] = (*(half_t *)(&(v__2)));
          ushort v__3 = (ushort)(input_shuffled_word[0] >> (uint)16);
          input_prefetch[((((odd_k_half * 16) + (odd_row_half * 8)) + (odd_word * 2)) + 1)] = (*(half_t *)(&(v__3)));
        }
      }
    }
    #pragma unroll
    for (int i_3 = 0; i_3 < 2; ++i_3) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + ((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_3 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 2; ++i_4) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_4 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_4 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 131072));
    }
    #pragma unroll
    for (int i_5 = 0; i_5 < 2; ++i_5) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_5 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + ((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_5 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
    }
    #pragma unroll
    for (int i_6 = 0; i_6 < 2; ++i_6) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_6 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_6 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 131072));
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      for (int ki = 0; ki < 2; ++ki) {
        for (int j = 0; j < 8; ++j) {
          *(uint4*)(weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
        }
        for (int kp = 0; kp < 2; ++kp) {
          for (int i_7 = 0; i_7 < 2; ++i_7) {
            for (int j_1 = 0; j_1 < 8; ++j_1) {
              {
      *(((float32x4*)gate_local) + ((i_7 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_7 * 2)) + kp)),
                    *(((float32x4*)gate_local) + ((i_7 * 8) + j_1)));
    };
            }
          }
        }
        for (int j_2 = 0; j_2 < 8; ++j_2) {
          *(uint4*)(weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
        }
        for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
          for (int i_8 = 0; i_8 < 2; ++i_8) {
            for (int j_3 = 0; j_3 < 8; ++j_3) {
              {
      *(((float32x4*)up_local) + ((i_8 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_8 * 2)) + kp_1)),
                    *(((float32x4*)up_local) + ((i_8 * 8) + j_3)));
    };
            }
          }
        }
      }
    }
    __syncthreads();
    if (k_pair < 15) {
      for (int even_row_half = 0; even_row_half < 2; ++even_row_half) {
        for (int even_k_half = 0; even_k_half < 2; ++even_k_half) {
          *(uint4*)(input_shuffle_packed + 0) = tl::load_global_128_conditional((&(input_original[((((((((((int)blockIdx.y) * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + (even_row_half * 32768)) + (((((int)threadIdx.x) & 63) >> 2) * 2048)) + (k_pair * 128)) + (even_k_half * 32)) + ((((int)threadIdx.x) & 3) * 8)) + 128)])), (((((((int)threadIdx.x) >> 6) * 32) + (even_row_half * 16)) + ((((int)threadIdx.x) & 63) >> 2)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))));
          for (int even_word = 0; even_word < 4; ++even_word) {
            input_shuffled_word[0] = __shfl_sync((uint64_t)18446744073709551615, input_shuffle_packed[even_word], (((((int)threadIdx.x) & 15) * 4) + ((((int)threadIdx.x) & 63) >> 4)), 64);
            ushort v__4 = (ushort)input_shuffled_word[0];
            input_shared[(((even_k_half * 16) + (even_row_half * 8)) + (even_word * 2))] = (*(half_t *)(&(v__4)));
            ushort v__5 = (ushort)(input_shuffled_word[0] >> (uint)16);
            input_shared[((((even_k_half * 16) + (even_row_half * 8)) + (even_word * 2)) + 1)] = (*(half_t *)(&(v__5)));
          }
        }
      }
    }
    #pragma unroll
    for (int i_9 = 0; i_9 < 2; ++i_9) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_9 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_9 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    #pragma unroll
    for (int i_10 = 0; i_10 < 2; ++i_10) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_10 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_10 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 131136));
    }
    #pragma unroll
    for (int i_11 = 0; i_11 < 2; ++i_11) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_11 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_11 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    #pragma unroll
    for (int i_12 = 0; i_12 < 2; ++i_12) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_12 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((expert_id * 16777216) + (((int)blockIdx.x) * 262144)) + (i_12 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 131136));
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
        for (int j_4 = 0; j_4 < 8; ++j_4) {
          *(uint4*)(weight_local + (j_4 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
        }
        for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
          for (int i_13 = 0; i_13 < 2; ++i_13) {
            for (int j_5 = 0; j_5 < 8; ++j_5) {
              {
      *(((float32x4*)gate_local) + ((i_13 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)input_prefetch) + (((ki_1 * 4) + (i_13 * 2)) + kp_2)),
                    *(((float32x4*)gate_local) + ((i_13 * 8) + j_5)));
    };
            }
          }
        }
        for (int j_6 = 0; j_6 < 8; ++j_6) {
          *(uint4*)(weight_local + (j_6 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
        }
        for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
          for (int i_14 = 0; i_14 < 2; ++i_14) {
            for (int j_7 = 0; j_7 < 8; ++j_7) {
              {
      *(((float32x4*)up_local) + ((i_14 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)input_prefetch) + (((ki_1 * 4) + (i_14 * 2)) + kp_3)),
                    *(((float32x4*)up_local) + ((i_14 * 8) + j_7)));
    };
            }
          }
        }
      }
    }
    if (k_pair < 15) {
      __syncthreads();
    }
  }
  #pragma unroll
  for (int i_15 = 0; i_15 < 16; ++i_15) {
    float broadcast_var_3 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_4 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_5 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_6 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v__6 = *(float4*)(gate_local + (i_15 * 4));
      float4 __2;
        float4 v__7 = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
        float4 __3;
          float4 v__8 = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
          float4 __4;
          float4 __5;
            float4 __6;
              float4 v__9 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
              __6.x = (v__6.x*v__9.x);
              __6.y = (v__6.y*v__9.y);
              __6.z = (v__6.z*v__9.z);
              __6.w = (v__6.w*v__9.w);
            float4 v__10 = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
            __5.x = (__6.x*v__10.x);
            __5.y = (__6.y*v__10.y);
            __5.z = (__6.z*v__10.z);
            __5.w = (__6.w*v__10.w);
          __4.x = exp2f(__5.x);
          __4.y = exp2f(__5.y);
          __4.z = exp2f(__5.z);
          __4.w = exp2f(__5.w);
          __3.x = (v__8.x+__4.x);
          __3.y = (v__8.y+__4.y);
          __3.z = (v__8.z+__4.z);
          __3.w = (v__8.w+__4.w);
        __2.x = (v__7.x/__3.x);
        __2.y = (v__7.y/__3.y);
        __2.z = (v__7.z/__3.z);
        __2.w = (v__7.w/__3.w);
      __1.x = (v__6.x*__2.x);
      __1.y = (v__6.y*__2.y);
      __1.z = (v__6.z*__2.z);
      __1.w = (v__6.w*__2.w);
    *(float4*)(gate_local + (i_15 * 4)) = __1;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_15 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      uint2 __7;
      float4 __8;
        float4 v__11 = *(float4*)(up_local + (i_15 * 4));
        float4 v__12 = *(float4*)(gate_local + (i_15 * 4));
        __8.x = (v__11.x*v__12.x);
        __8.y = (v__11.y*v__12.y);
        __8.z = (v__11.z*v__12.z);
        __8.w = (v__11.w*v__12.w);
      ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
      ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
      *(uint2*)(up_logits + (((((((((((int)blockIdx.y) * 1048576) + (((int)blockIdx.x) * 16384)) + (((i_15 & 7) >> 1) * 4096)) + ((i_15 >> 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 512)) + ((i_15 & 1) * 256)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + ((((int)threadIdx.x) & 15) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = __7;
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits) {
  int bx_local[1];
  int by_local[1];
  float out_local_0[64];
  float out_local_1[64];
  half_t up_logits_shared[32];
  float routed_weight_local[2];
  half_t up_logits_prefetch[32];
  extern __shared__ __align__(1024) half_t down_shared[];
  half_t down_local[64];
  half_t output_local_cast[4];
  half_t output_local_cast_1[4];
  if (((int)blockIdx.y) < 8) {
    bx_local[0] = ((int)blockIdx.y);
    by_local[0] = ((int)blockIdx.x);
  } else {
    bx_local[0] = (((((int)blockIdx.y) >> 1) * 2) + (((int)blockIdx.x) & 1));
    by_local[0] = (((((int)blockIdx.y) & 1) * 4) + (((int)blockIdx.x) >> 1));
  }
  int bx = bx_local[0];
  int by = by_local[0];
  int condval;
  if (((0 <= bx) && (bx < 24))) {
    condval = group_idx_for_bx[((int64_t)bx)];
  } else {
    condval = 0;
  }
  int expert_id = condval;
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
  for (int intermediate_vec = 0; intermediate_vec < 4; ++intermediate_vec) {
    half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
    uint4 condval_1;
    if (((0 <= bx) && (bx < 24))) {
      condval_1 = *(uint4*)(up_logits + (((((int64_t)bx) * (int64_t)1048576) + (((int64_t)intermediate_vec) * (int64_t)2048)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
    } else {
      condval_1 = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
    }
    *(uint4*)(up_logits_shared + (intermediate_vec * 8)) = condval_1;
  }
  for (int k_pair = 0; k_pair < 64; ++k_pair) {
    #pragma unroll
    for (int producer_stage = 0; producer_stage < 2; ++producer_stage) {
      if (producer_stage == (((int)threadIdx.x) >> 7)) {
        for (int intermediate_vec_1 = 0; intermediate_vec_1 < 4; ++intermediate_vec_1) {
          half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
          uint4 condval_2;
          if (((0 <= bx) && (bx < 24))) {
            condval_2 = *(uint4*)(up_logits + (((((((int64_t)bx) * (int64_t)1048576) + (((int64_t)k_pair) * (int64_t)16384)) + (((int64_t)intermediate_vec_1) * (int64_t)2048)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)) + (int64_t)8192));
          } else {
            condval_2 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
          }
          *(uint4*)(up_logits_prefetch + (intermediate_vec_1 * 8)) = condval_2;
        }
      }
      #pragma unroll
      for (int i_2 = 0; i_2 < 4; ++i_2) {
        half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_3;
        if (((by < 8) && (0 <= by))) {
          condval_3 = *(uint4*)(down + (((((((((int64_t)expert_id) * (int64_t)16777216) + (((int64_t)by) * (int64_t)2097152)) + (((int64_t)producer_stage) * (int64_t)1048576)) + (((int64_t)i_2) * (int64_t)262144)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)8192)) + (((int64_t)k_pair) * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
        } else {
          condval_3 = make_uint4(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
        }
        *(uint4*)(down_shared + ((((((producer_stage * 8192) + (i_2 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_3;
      }
    }
    __syncthreads();
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 8; ++j) {
        *(uint4*)(down_local + (j * 8)) = *(uint4*)(down_shared + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_3 = 0; i_3 < 2; ++i_3) {
          for (int j_1 = 0; j_1 < 8; ++j_1) {
            {
      *(((float32x4*)out_local_0) + ((i_3 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)up_logits_shared) + (((ki * 4) + (i_3 * 2)) + kp)),
                    *(((float32x4*)out_local_0) + ((i_3 * 8) + j_1)));
    };
          }
        }
      }
      for (int j_2 = 0; j_2 < 8; ++j_2) {
        *(uint4*)(down_local + (j_2 * 8)) = *(uint4*)(down_shared + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
        for (int i_4 = 0; i_4 < 2; ++i_4) {
          for (int j_3 = 0; j_3 < 8; ++j_3) {
            {
      *(((float32x4*)out_local_1) + ((i_4 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)up_logits_shared) + (((ki * 4) + (i_4 * 2)) + kp_1)),
                    *(((float32x4*)out_local_1) + ((i_4 * 8) + j_3)));
    };
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int producer_stage_1 = 0; producer_stage_1 < 2; ++producer_stage_1) {
      if (k_pair < 63) {
        if (producer_stage_1 == (((int)threadIdx.x) >> 7)) {
          for (int intermediate_vec_2 = 0; intermediate_vec_2 < 4; ++intermediate_vec_2) {
            half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
            uint4 condval_4;
            if (((0 <= bx) && (bx < 24))) {
              condval_4 = *(uint4*)(up_logits + (((((((int64_t)bx) * (int64_t)1048576) + (((int64_t)k_pair) * (int64_t)16384)) + (((int64_t)intermediate_vec_2) * (int64_t)2048)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)) + (int64_t)16384));
            } else {
              condval_4 = make_uint4(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
            }
            *(uint4*)(up_logits_shared + (intermediate_vec_2 * 8)) = condval_4;
          }
        }
      }
      #pragma unroll
      for (int i_5 = 0; i_5 < 4; ++i_5) {
        half_t broadcast_var_6 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_5;
        if (((by < 8) && (0 <= by))) {
          condval_5 = *(uint4*)(down + ((((((((((int64_t)expert_id) * (int64_t)16777216) + (((int64_t)by) * (int64_t)2097152)) + (((int64_t)producer_stage_1) * (int64_t)1048576)) + (((int64_t)i_5) * (int64_t)262144)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)8192)) + (((int64_t)k_pair) * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)64));
        } else {
          condval_5 = make_uint4(__pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6));
        }
        *(uint4*)(down_shared + ((((((producer_stage_1 * 8192) + (i_5 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_5;
      }
    }
    __syncthreads();
    for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
      for (int j_4 = 0; j_4 < 8; ++j_4) {
        *(uint4*)(down_local + (j_4 * 8)) = *(uint4*)(down_shared + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
        for (int i_6 = 0; i_6 < 2; ++i_6) {
          for (int j_5 = 0; j_5 < 8; ++j_5) {
            {
      *(((float32x4*)out_local_0) + ((i_6 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_1 * 4) + (i_6 * 2)) + kp_2)),
                    *(((float32x4*)out_local_0) + ((i_6 * 8) + j_5)));
    };
          }
        }
      }
      for (int j_6 = 0; j_6 < 8; ++j_6) {
        *(uint4*)(down_local + (j_6 * 8)) = *(uint4*)(down_shared + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
        for (int i_7 = 0; i_7 < 2; ++i_7) {
          for (int j_7 = 0; j_7 < 8; ++j_7) {
            {
      *(((float32x4*)out_local_1) + ((i_7 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_1 * 4) + (i_7 * 2)) + kp_3)),
                    *(((float32x4*)out_local_1) + ((i_7 * 8) + j_7)));
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
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      float condval_6;
      if (((0 <= ((((((bx * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start)) && (((((((bx * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start) < 2272))) {
        condval_6 = routed_weights[((((((((int64_t)bx) * (int64_t)128) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32)) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15)) - ((int64_t)padded_start))];
      } else {
        condval_6 = 0x0p+0f/*0.000000e+00*/;
      }
      routed_weight_local[row_slot] = condval_6;
    }
  }
  #pragma unroll
  for (int i_8 = 0; i_8 < 16; ++i_8) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_8 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      uint2 __1;
      float4 __2;
        float4 v_ = *(float4*)(out_local_0 + (i_8 * 4));
        float4 v__1 = make_float4(routed_weight_local[(i_8 >> 3)], routed_weight_local[(i_8 >> 3)], routed_weight_local[(i_8 >> 3)], routed_weight_local[(i_8 >> 3)]);
        __2.x = (v_.x*v__1.x);
        __2.y = (v_.y*v__1.y);
        __2.z = (v_.z*v__1.z);
        __2.w = (v_.w*v__1.w);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
      *(uint2*)(output_local_cast + 0) = __1;
    } else {
      half_t broadcast_var_7 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast + 0) = make_uint2(__pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7));
    }
    if (0 <= by) {
      if (by < 8) {
        if (0 <= bx) {
          if (bx < 24) {
            *(uint2*)(output + (((((((bx * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_8 >> 3) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (by * 256)) + ((i_8 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast + 0);
          }
        }
      }
    }
  }
  #pragma unroll
  for (int i_9 = 0; i_9 < 16; ++i_9) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_9 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      uint2 __3;
      float4 __4;
        float4 v__2 = *(float4*)(out_local_1 + (i_9 * 4));
        float4 v__3 = make_float4(routed_weight_local[(i_9 >> 3)], routed_weight_local[(i_9 >> 3)], routed_weight_local[(i_9 >> 3)], routed_weight_local[(i_9 >> 3)]);
        __4.x = (v__2.x*v__3.x);
        __4.y = (v__2.y*v__3.y);
        __4.z = (v__2.z*v__3.z);
        __4.w = (v__2.w*v__3.w);
      ((half2*)(&__3))[0] = __float22half2_rn(((float2*)(&__4))[0]);
      ((half2*)(&__3))[1] = __float22half2_rn(((float2*)(&__4))[1]);
      *(uint2*)(output_local_cast_1 + 0) = __3;
    } else {
      half_t broadcast_var_8 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast_1 + 0) = make_uint2(__pack_half2(broadcast_var_8, broadcast_var_8), __pack_half2(broadcast_var_8, broadcast_var_8));
    }
    if (0 <= by) {
      if (by < 8) {
        if (0 <= bx) {
          if (bx < 24) {
            *(uint2*)(output + ((((((((bx * 262144) + ((((int)threadIdx.x) >> 6) * 65536)) + ((i_9 >> 3) * 32768)) + ((((int)threadIdx.x) & 15) * 2048)) + (by * 256)) + ((i_9 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_1 + 0);
          }
        }
      }
    }
  }
}
