#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void kernel_kernel(half_t* __restrict__ input, const half_t* __restrict__ input_original);
extern "C" __global__ void kernel_kernel_1(const half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ up, half_t* __restrict__ up_logits);
extern "C" __global__ void kernel_kernel_2(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits);
extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel(half_t* __restrict__ input, const half_t* __restrict__ input_original) {
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    *(uint4*)(input + ((((((((int)blockIdx.y) * 917504) + (((int)blockIdx.x) * 32768)) + (((((int)threadIdx.x) & 31) >> 3) * 8192)) + (i * 512)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)threadIdx.x) & 7) * 8))) = *(uint4*)(input_original + (((((((int)blockIdx.y) * 917504) + (i * 57344)) + ((((int)threadIdx.x) >> 5) * 7168)) + (((int)blockIdx.x) * 256)) + ((((int)threadIdx.x) & 31) * 8)));
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(const half_t* __restrict__ gate, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ up, half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float gate_local[64];
  float up_local[64];
  half_t input_prefetch[32];
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
  #pragma unroll
  for (int i_3 = 0; i_3 < 4; ++i_3) {
    *(uint4*)(input_shared + (i_3 * 8)) = *(uint4*)(input + ((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 2048)) + ((i_3 & 1) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + ((i_3 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
  }
  for (int k_pair = 0; k_pair < 56; ++k_pair) {
    if (((int)threadIdx.x) < 128) {
      #pragma unroll
      for (int i_4 = 0; i_4 < 4; ++i_4) {
        if (((((((int)threadIdx.x) >> 6) * 32) + ((i_4 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
          *(uint4*)(input_prefetch + (i_4 * 8)) = *(uint4*)(input + ((((((((((int)blockIdx.y) * 917504) + (k_pair * 16384)) + ((((int)threadIdx.x) >> 6) * 2048)) + ((i_4 & 1) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + ((i_4 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 8192));
        }
      }
    }
    #pragma unroll
    for (int i_5 = 0; i_5 < 2; ++i_5) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_5 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + ((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_5 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
    }
    if (128 <= ((int)threadIdx.x)) {
      #pragma unroll
      for (int i_6 = 0; i_6 < 4; ++i_6) {
        if (((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
          *(uint4*)(input_prefetch + (((i_6 & 1) * 16) + ((i_6 >> 1) * 8))) = *(uint4*)(input + ((((((((((int)blockIdx.y) * 917504) + (k_pair * 16384)) + ((((int)threadIdx.x) >> 6) * 2048)) + ((i_6 >> 1) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + ((i_6 & 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 8192));
        }
      }
    }
    #pragma unroll
    for (int i_7 = 0; i_7 < 2; ++i_7) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_7 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_7 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458752));
    }
    #pragma unroll
    for (int i_8 = 0; i_8 < 2; ++i_8) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_8 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + ((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_8 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
    }
    #pragma unroll
    for (int i_9 = 0; i_9 < 2; ++i_9) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_9 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_9 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458752));
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      for (int ki = 0; ki < 2; ++ki) {
        for (int j = 0; j < 8; ++j) {
          *(uint4*)(weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
        }
        for (int kp = 0; kp < 2; ++kp) {
          for (int i_10 = 0; i_10 < 2; ++i_10) {
            for (int j_1 = 0; j_1 < 8; ++j_1) {
              {
      *(((float32x4*)gate_local) + ((i_10 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_10 * 2)) + kp)),
                    *(((float32x4*)gate_local) + ((i_10 * 8) + j_1)));
    };
            }
          }
        }
        for (int j_2 = 0; j_2 < 8; ++j_2) {
          *(uint4*)(weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
        }
        for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
          for (int i_11 = 0; i_11 < 2; ++i_11) {
            for (int j_3 = 0; j_3 < 8; ++j_3) {
              {
      *(((float32x4*)up_local) + ((i_11 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_11 * 2)) + kp_1)),
                    *(((float32x4*)up_local) + ((i_11 * 8) + j_3)));
    };
            }
          }
        }
      }
    }
    __syncthreads();
    if (k_pair < 55) {
      if (((int)threadIdx.x) < 128) {
        #pragma unroll
        for (int i_12 = 0; i_12 < 4; ++i_12) {
          if (((((((int)threadIdx.x) >> 6) * 32) + ((i_12 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
            *(uint4*)(input_shared + (i_12 * 8)) = *(uint4*)(input + ((((((((((int)blockIdx.y) * 917504) + (k_pair * 16384)) + ((((int)threadIdx.x) >> 6) * 2048)) + ((i_12 & 1) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + ((i_12 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 16384));
          }
        }
      }
    }
    #pragma unroll
    for (int i_13 = 0; i_13 < 2; ++i_13) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_13 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_13 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    if (k_pair < 55) {
      if (128 <= ((int)threadIdx.x)) {
        #pragma unroll
        for (int i_14 = 0; i_14 < 4; ++i_14) {
          if (((((((int)threadIdx.x) >> 6) * 32) + ((i_14 >> 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
            *(uint4*)(input_shared + (((i_14 & 1) * 16) + ((i_14 >> 1) * 8))) = *(uint4*)(input + ((((((((((int)blockIdx.y) * 917504) + (k_pair * 16384)) + ((((int)threadIdx.x) >> 6) * 2048)) + ((i_14 >> 1) * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + ((i_14 & 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 16384));
          }
        }
      }
    }
    #pragma unroll
    for (int i_15 = 0; i_15 < 2; ++i_15) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_15 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_15 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458816));
    }
    #pragma unroll
    for (int i_16 = 0; i_16 < 2; ++i_16) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_16 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_16 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    #pragma unroll
    for (int i_17 = 0; i_17 < 2; ++i_17) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_17 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_17 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458816));
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
        for (int j_4 = 0; j_4 < 8; ++j_4) {
          *(uint4*)(weight_local + (j_4 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
        }
        for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
          for (int i_18 = 0; i_18 < 2; ++i_18) {
            for (int j_5 = 0; j_5 < 8; ++j_5) {
              {
      *(((float32x4*)gate_local) + ((i_18 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)input_prefetch) + (((ki_1 * 4) + (i_18 * 2)) + kp_2)),
                    *(((float32x4*)gate_local) + ((i_18 * 8) + j_5)));
    };
            }
          }
        }
        for (int j_6 = 0; j_6 < 8; ++j_6) {
          *(uint4*)(weight_local + (j_6 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
        }
        for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
          for (int i_19 = 0; i_19 < 2; ++i_19) {
            for (int j_7 = 0; j_7 < 8; ++j_7) {
              {
      *(((float32x4*)up_local) + ((i_19 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)input_prefetch) + (((ki_1 * 4) + (i_19 * 2)) + kp_3)),
                    *(((float32x4*)up_local) + ((i_19 * 8) + j_7)));
    };
            }
          }
        }
      }
    }
    if (k_pair < 55) {
      __syncthreads();
    }
  }
  #pragma unroll
  for (int i_20 = 0; i_20 < 16; ++i_20) {
    float broadcast_var_3 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_4 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_5 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_6 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v_ = *(float4*)(gate_local + (i_20 * 4));
      float4 __2;
        float4 v__1 = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
        float4 __3;
          float4 v__2 = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
          float4 __4;
          float4 __5;
            float4 __6;
              float4 v__3 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
              __6.x = (v_.x*v__3.x);
              __6.y = (v_.y*v__3.y);
              __6.z = (v_.z*v__3.z);
              __6.w = (v_.w*v__3.w);
            float4 v__4 = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
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
    *(float4*)(gate_local + (i_20 * 4)) = __1;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_20 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      uint2 __7;
      float4 __8;
        float4 v__5 = *(float4*)(up_local + (i_20 * 4));
        float4 v__6 = *(float4*)(gate_local + (i_20 * 4));
        __8.x = (v__5.x*v__6.x);
        __8.y = (v__5.y*v__6.y);
        __8.z = (v__5.z*v__6.z);
        __8.w = (v__5.w*v__6.w);
      ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
      ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
      *(uint2*)(up_logits + (((((((((int)blockIdx.y) * 278528) + ((((int)threadIdx.x) >> 6) * 69632)) + ((i_20 >> 3) * 34816)) + ((((int)threadIdx.x) & 15) * 2176)) + (((int)blockIdx.x) * 128)) + ((i_20 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = __7;
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_2(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits) {
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
  if (((int)blockIdx.y) < 32) {
    bx_local[0] = ((int)blockIdx.y);
    by_local[0] = ((int)blockIdx.x);
  } else {
    bx_local[0] = (((((int)blockIdx.y) >> 1) * 2) + (((int)blockIdx.x) & 1));
    by_local[0] = (((((int)blockIdx.y) & 1) * 14) + (((int)blockIdx.x) >> 1));
  }
  int bx = bx_local[0];
  int by = by_local[0];
  int condval;
  if (((0 <= bx) && (bx < 96))) {
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
  #pragma unroll
  for (int i_2 = 0; i_2 < 4; ++i_2) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_2 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval_1;
      if (((0 <= bx) && (bx < 96))) {
        condval_1 = *(uint4*)(up_logits + ((((((((int64_t)bx) * (int64_t)278528) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)69632)) + ((((int64_t)i_2) & (int64_t)1) * (int64_t)34816)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2176)) + ((((int64_t)i_2) >> (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)));
      } else {
        condval_1 = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
      }
      *(uint4*)(up_logits_shared + (i_2 * 8)) = condval_1;
    }
  }
  for (int k_pair = 0; k_pair < 16; ++k_pair) {
    #pragma unroll
    for (int producer_stage = 0; producer_stage < 2; ++producer_stage) {
      if (((int)threadIdx.x) < ((producer_stage * 128) + 128)) {
        #pragma unroll
        for (int i_3 = 0; i_3 < 4; ++i_3) {
          if ((0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_3 >> 1) * 16)) + (((int)threadIdx.x) & 15)) - (producer_stage * 64))) && (((((int)threadIdx.x) >> 7) - producer_stage) < 1)) {
            if (((((((int)threadIdx.x) >> 6) * 32) + ((i_3 >> 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
              half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
              uint4 condval_2;
              if (((0 <= bx) && (bx < 96))) {
                condval_2 = *(uint4*)(up_logits + ((((((((((int64_t)bx) * (int64_t)278528) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)69632)) + ((((int64_t)i_3) >> (int64_t)1) * (int64_t)34816)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2176)) + (((int64_t)k_pair) * (int64_t)128)) + ((((int64_t)i_3) & (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)) + (int64_t)64));
              } else {
                condval_2 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
              }
              *(uint4*)(up_logits_prefetch + (((i_3 & 1) * 16) + ((i_3 >> 1) * 8))) = condval_2;
            }
          }
        }
      }
      #pragma unroll
      for (int i_4 = 0; i_4 < 4; ++i_4) {
        half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_3;
        if (((by < 28) && (0 <= by))) {
          condval_3 = *(uint4*)(down + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)by) * (int64_t)524288)) + (((int64_t)producer_stage) * (int64_t)262144)) + (((int64_t)i_4) * (int64_t)65536)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)2048)) + (((int64_t)k_pair) * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
        } else {
          condval_3 = make_uint4(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
        }
        *(uint4*)(down_shared + ((((((producer_stage * 8192) + (i_4 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_3;
      }
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (bx * 128))) {
      for (int ki = 0; ki < 2; ++ki) {
        for (int j = 0; j < 8; ++j) {
          *(uint4*)(down_local + (j * 8)) = *(uint4*)(down_shared + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
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
        for (int j_2 = 0; j_2 < 8; ++j_2) {
          *(uint4*)(down_local + (j_2 * 8)) = *(uint4*)(down_shared + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
        }
        for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
          for (int i_6 = 0; i_6 < 2; ++i_6) {
            for (int j_3 = 0; j_3 < 8; ++j_3) {
              {
      *(((float32x4*)out_local_1) + ((i_6 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)up_logits_shared) + (((ki * 4) + (i_6 * 2)) + kp_1)),
                    *(((float32x4*)out_local_1) + ((i_6 * 8) + j_3)));
    };
            }
          }
        }
      }
    }
    __syncthreads();
    #pragma unroll
    for (int producer_stage_1 = 0; producer_stage_1 < 2; ++producer_stage_1) {
      if (k_pair < 15) {
        if (((int)threadIdx.x) < ((producer_stage_1 * 128) + 128)) {
          #pragma unroll
          for (int i_7 = 0; i_7 < 4; ++i_7) {
            if ((0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_7 >> 1) * 16)) + (((int)threadIdx.x) & 15)) - (producer_stage_1 * 64))) && (((((int)threadIdx.x) >> 7) - producer_stage_1) < 1)) {
              if (((((((int)threadIdx.x) >> 6) * 32) + ((i_7 >> 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
                half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
                uint4 condval_4;
                if (((0 <= bx) && (bx < 96))) {
                  condval_4 = *(uint4*)(up_logits + ((((((((((int64_t)bx) * (int64_t)278528) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)69632)) + ((((int64_t)i_7) >> (int64_t)1) * (int64_t)34816)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2176)) + (((int64_t)k_pair) * (int64_t)128)) + ((((int64_t)i_7) & (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)) + (int64_t)128));
                } else {
                  condval_4 = make_uint4(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
                }
                *(uint4*)(up_logits_shared + (((i_7 & 1) * 16) + ((i_7 >> 1) * 8))) = condval_4;
              }
            }
          }
        }
      }
      #pragma unroll
      for (int i_8 = 0; i_8 < 4; ++i_8) {
        half_t broadcast_var_6 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_5;
        if (((by < 28) && (0 <= by))) {
          condval_5 = *(uint4*)(down + ((((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)by) * (int64_t)524288)) + (((int64_t)producer_stage_1) * (int64_t)262144)) + (((int64_t)i_8) * (int64_t)65536)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)2048)) + (((int64_t)k_pair) * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)64));
        } else {
          condval_5 = make_uint4(__pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6));
        }
        *(uint4*)(down_shared + ((((((producer_stage_1 * 8192) + (i_8 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_5;
      }
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (bx * 128))) {
      for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
        for (int j_4 = 0; j_4 < 8; ++j_4) {
          *(uint4*)(down_local + (j_4 * 8)) = *(uint4*)(down_shared + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
        }
        for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
          for (int i_9 = 0; i_9 < 2; ++i_9) {
            for (int j_5 = 0; j_5 < 8; ++j_5) {
              {
      *(((float32x4*)out_local_0) + ((i_9 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_1 * 4) + (i_9 * 2)) + kp_2)),
                    *(((float32x4*)out_local_0) + ((i_9 * 8) + j_5)));
    };
            }
          }
        }
        for (int j_6 = 0; j_6 < 8; ++j_6) {
          *(uint4*)(down_local + (j_6 * 8)) = *(uint4*)(down_shared + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
        }
        for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
          for (int i_10 = 0; i_10 < 2; ++i_10) {
            for (int j_7 = 0; j_7 < 8; ++j_7) {
              {
      *(((float32x4*)out_local_1) + ((i_10 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_1 * 4) + (i_10 * 2)) + kp_3)),
                    *(((float32x4*)out_local_1) + ((i_10 * 8) + j_7)));
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
  for (int row_slot = 0; row_slot < 2; ++row_slot) {
    routed_weight_local[row_slot] = 0x0p+0f/*0.000000e+00*/;
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      float condval_6;
      if (((0 <= ((((((bx * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start)) && (((((((bx * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start) < 9088))) {
        condval_6 = routed_weights[((((((((int64_t)bx) * (int64_t)128) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32)) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15)) - ((int64_t)padded_start))];
      } else {
        condval_6 = 0x0p+0f/*0.000000e+00*/;
      }
      routed_weight_local[row_slot] = condval_6;
    }
  }
  #pragma unroll
  for (int i_11 = 0; i_11 < 16; ++i_11) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      uint2 __1;
      float4 __2;
        float4 v_ = *(float4*)(out_local_0 + (i_11 * 4));
        float4 v__1 = make_float4(routed_weight_local[(i_11 >> 3)], routed_weight_local[(i_11 >> 3)], routed_weight_local[(i_11 >> 3)], routed_weight_local[(i_11 >> 3)]);
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
      if (by < 28) {
        if (0 <= bx) {
          if (bx < 96) {
            *(uint2*)(output + (((((((bx * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_11 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (by * 256)) + ((i_11 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast + 0);
          }
        }
      }
    }
  }
  #pragma unroll
  for (int i_12 = 0; i_12 < 16; ++i_12) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_12 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (bx * 128))) {
      uint2 __3;
      float4 __4;
        float4 v__2 = *(float4*)(out_local_1 + (i_12 * 4));
        float4 v__3 = make_float4(routed_weight_local[(i_12 >> 3)], routed_weight_local[(i_12 >> 3)], routed_weight_local[(i_12 >> 3)], routed_weight_local[(i_12 >> 3)]);
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
      if (by < 28) {
        if (0 <= bx) {
          if (bx < 96) {
            *(uint2*)(output + ((((((((bx * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_12 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (by * 256)) + ((i_12 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_1 + 0);
          }
        }
      }
    }
  }
}

