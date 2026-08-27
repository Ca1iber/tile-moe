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
  extern __shared__ __align__(1024) half_t copy_shared[];
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    *(uint4*)(copy_shared + ((i * 2048) + (((int)threadIdx.x) * 8))) = *(uint4*)(input_original + (((((((int)blockIdx.y) * 917504) + (i * 57344)) + ((((int)threadIdx.x) >> 5) * 7168)) + (((int)blockIdx.x) * 256)) + ((((int)threadIdx.x) & 31) * 8)));
  }
  __syncthreads();
  for (int copy_k_sub = 0; copy_k_sub < 4; ++copy_k_sub) {
    for (int native_vec = 0; native_vec < 4; ++native_vec) {
      *(uint4*)(input + (((((((int)blockIdx.y) * 917504) + (((int)blockIdx.x) * 32768)) + (copy_k_sub * 8192)) + (native_vec * 2048)) + (((int)threadIdx.x) * 8))) = *(uint4*)(copy_shared + (((((((((int)threadIdx.x) >> 6) * 8192) + ((native_vec & 1) * 4096)) + ((((int)threadIdx.x) & 15) * 256)) + (copy_k_sub * 64)) + ((native_vec >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
    }
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
  for (int native_vec = 0; native_vec < 4; ++native_vec) {
    *(uint4*)(input_shared + (native_vec * 8)) = *(uint4*)(input + (((((int)blockIdx.y) * 917504) + (native_vec * 2048)) + (((int)threadIdx.x) * 8)));
  }
  for (int k_pair = 0; k_pair < 56; ++k_pair) {
    for (int native_vec_1 = 0; native_vec_1 < 4; ++native_vec_1) {
      if (((((((int)threadIdx.x) >> 6) * 32) + ((native_vec_1 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
        *(uint4*)(input_prefetch + (native_vec_1 * 8)) = *(uint4*)(input + (((((((int)blockIdx.y) * 917504) + (k_pair * 16384)) + (native_vec_1 * 2048)) + (((int)threadIdx.x) * 8)) + 8192));
      }
    }
    #pragma unroll
    for (int i_3 = 0; i_3 < 2; ++i_3) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + ((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_3 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 2; ++i_4) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_4 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_4 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458752));
    }
    #pragma unroll
    for (int i_5 = 0; i_5 < 2; ++i_5) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_5 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + ((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_5 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
    }
    #pragma unroll
    for (int i_6 = 0; i_6 < 2; ++i_6) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_6 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_6 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458752));
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
    if (k_pair < 55) {
      for (int native_vec_2 = 0; native_vec_2 < 4; ++native_vec_2) {
        if (((((((int)threadIdx.x) >> 6) * 32) + ((native_vec_2 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
          *(uint4*)(input_shared + (native_vec_2 * 8)) = *(uint4*)(input + (((((((int)blockIdx.y) * 917504) + (k_pair * 16384)) + (native_vec_2 * 2048)) + (((int)threadIdx.x) * 8)) + 16384));
        }
      }
    }
    #pragma unroll
    for (int i_9 = 0; i_9 < 2; ++i_9) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_9 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_9 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    #pragma unroll
    for (int i_10 = 0; i_10 < 2; ++i_10) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_10 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_10 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458816));
    }
    #pragma unroll
    for (int i_11 = 0; i_11 < 2; ++i_11) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_11 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_11 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
    }
    #pragma unroll
    for (int i_12 = 0; i_12 < 2; ++i_12) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_12 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_12 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458816));
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
    if (k_pair < 55) {
      __syncthreads();
    }
  }
  #pragma unroll
  for (int i_15 = 0; i_15 < 16; ++i_15) {
    float4 silu_x = *(float4*)(gate_local + (i_15 * 4));
    float broadcast_var_3 = -0x1.6p+2f/*-5.500000e+00*/;
    float broadcast_var_4 = 0x1.6p+2f/*5.500000e+00*/;
    float4 __1;
      float4 v_ = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
      float4 __2;
        float4 v__1 = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
        __2.x = min(v__1.x, silu_x.x);
        __2.y = min(v__1.y, silu_x.y);
        __2.z = min(v__1.z, silu_x.z);
        __2.w = min(v__1.w, silu_x.w);
      __1.x = max(v_.x, __2.x);
      __1.y = max(v_.y, __2.y);
      __1.z = max(v_.z, __2.z);
      __1.w = max(v_.w, __2.w);
    float4 silu_clamped = __1;
    float4 __3;
      __3.x = (silu_clamped.x*silu_clamped.x);
      __3.y = (silu_clamped.y*silu_clamped.y);
      __3.z = (silu_clamped.z*silu_clamped.z);
      __3.w = (silu_clamped.w*silu_clamped.w);
    float4 silu_z = __3;
    float broadcast_var_5 = -0x1.bbde26027afb1p-16f/*-2.645658e-05*/;
    float broadcast_var_6 = 0x1.4816990b6e8e4p-22f/*3.055560e-07*/;
    float4 __4;
      float4 v__2 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
      float4 __5;
        float4 v__3 = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
        __5.x = (silu_z.x*v__3.x);
        __5.y = (silu_z.y*v__3.y);
        __5.z = (silu_z.z*v__3.z);
        __5.w = (silu_z.w*v__3.w);
      __4.x = (v__2.x+__5.x);
      __4.y = (v__2.y+__5.y);
      __4.z = (v__2.z+__5.z);
      __4.w = (v__2.w+__5.w);
    float4 silu_p7 = __4;
    float broadcast_var_7 = 0x1.db9f0a6c59536p-11f/*9.071755e-04*/;
    float4 __6;
      float4 v__4 = make_float4(broadcast_var_7, broadcast_var_7, broadcast_var_7, broadcast_var_7);
      float4 __7;
        __7.x = (silu_z.x*silu_p7.x);
        __7.y = (silu_z.y*silu_p7.y);
        __7.z = (silu_z.z*silu_p7.z);
        __7.w = (silu_z.w*silu_p7.w);
      __6.x = (v__4.x+__7.x);
      __6.y = (v__4.y+__7.y);
      __6.z = (v__4.z+__7.z);
      __6.w = (v__4.w+__7.w);
    float4 silu_p5 = __6;
    float broadcast_var_8 = -0x1.134dd8c26a9efp-6f/*-1.680323e-02*/;
    float4 __8;
      float4 v__5 = make_float4(broadcast_var_8, broadcast_var_8, broadcast_var_8, broadcast_var_8);
      float4 __9;
        __9.x = (silu_z.x*silu_p5.x);
        __9.y = (silu_z.y*silu_p5.y);
        __9.z = (silu_z.z*silu_p5.z);
        __9.w = (silu_z.w*silu_p5.w);
      __8.x = (v__5.x+__9.x);
      __8.y = (v__5.y+__9.y);
      __8.z = (v__5.z+__9.z);
      __8.w = (v__5.w+__9.w);
    float4 silu_p3 = __8;
    float broadcast_var_9 = 0x1.f6e65882d1e5ep-3f/*2.455565e-01*/;
    float4 __10;
      float4 v__6 = make_float4(broadcast_var_9, broadcast_var_9, broadcast_var_9, broadcast_var_9);
      float4 __11;
        __11.x = (silu_z.x*silu_p3.x);
        __11.y = (silu_z.y*silu_p3.y);
        __11.z = (silu_z.z*silu_p3.z);
        __11.w = (silu_z.w*silu_p3.w);
      __10.x = (v__6.x+__11.x);
      __10.y = (v__6.y+__11.y);
      __10.z = (v__6.z+__11.z);
      __10.w = (v__6.w+__11.w);
    float4 silu_p1 = __10;
    float broadcast_var_10 = 0x1p-1f/*5.000000e-01*/;
    float4 __12;
      float4 __13;
        float4 v__7 = make_float4(broadcast_var_10, broadcast_var_10, broadcast_var_10, broadcast_var_10);
        float4 __14;
          __14.x = (silu_clamped.x*silu_p1.x);
          __14.y = (silu_clamped.y*silu_p1.y);
          __14.z = (silu_clamped.z*silu_p1.z);
          __14.w = (silu_clamped.w*silu_p1.w);
        __13.x = (v__7.x+__14.x);
        __13.y = (v__7.y+__14.y);
        __13.z = (v__7.z+__14.z);
        __13.w = (v__7.w+__14.w);
      __12.x = (silu_x.x*__13.x);
      __12.y = (silu_x.y*__13.y);
      __12.z = (silu_x.z*__13.z);
      __12.w = (silu_x.w*__13.w);
    *(float4*)(gate_local + (i_15 * 4)) = __12;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_15 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      uint2 __15;
      float4 __16;
        float4 v__8 = *(float4*)(up_local + (i_15 * 4));
        float4 v__9 = *(float4*)(gate_local + (i_15 * 4));
        __16.x = (v__8.x*v__9.x);
        __16.y = (v__8.y*v__9.y);
        __16.z = (v__8.z*v__9.z);
        __16.w = (v__8.w*v__9.w);
      ((half2*)(&__15))[0] = __float22half2_rn(((float2*)(&__16))[0]);
      ((half2*)(&__15))[1] = __float22half2_rn(((float2*)(&__16))[1]);
      *(uint2*)(up_logits + (((((((((((int)blockIdx.y) * 262144) + (((int)blockIdx.x) * 16384)) + (((i_15 & 7) >> 1) * 4096)) + ((i_15 >> 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 512)) + ((i_15 & 1) * 256)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + ((((int)threadIdx.x) & 15) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = __15;
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_2(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits) {
  float out_local_0[64];
  float out_local_1[64];
  half_t up_logits_shared[32];
  float routed_weight_local[2];
  half_t up_logits_prefetch[32];
  extern __shared__ __align__(1024) half_t down_shared[];
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
  for (int intermediate_vec = 0; intermediate_vec < 4; ++intermediate_vec) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((intermediate_vec & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      *(uint4*)(up_logits_shared + (intermediate_vec * 8)) = *(uint4*)(up_logits + (((((int)blockIdx.y) * 262144) + (intermediate_vec * 2048)) + (((int)threadIdx.x) * 8)));
    }
  }
  for (int k_pair = 0; k_pair < 16; ++k_pair) {
    #pragma unroll
    for (int producer_stage = 0; producer_stage < 2; ++producer_stage) {
      if (producer_stage == (((int)threadIdx.x) >> 7)) {
        for (int intermediate_vec_1 = 0; intermediate_vec_1 < 4; ++intermediate_vec_1) {
          if (((((((int)threadIdx.x) >> 6) * 32) + ((intermediate_vec_1 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
            *(uint4*)(up_logits_prefetch + (intermediate_vec_1 * 8)) = *(uint4*)(up_logits + (((((((int)blockIdx.y) * 262144) + (k_pair * 16384)) + (intermediate_vec_1 * 2048)) + (((int)threadIdx.x) * 8)) + 8192));
          }
        }
      }
      #pragma unroll
      for (int i_2 = 0; i_2 < 4; ++i_2) {
        *(uint4*)(down_shared + ((((((producer_stage * 8192) + (i_2 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(down + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 524288)) + (producer_stage * 262144)) + (i_2 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
      }
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
    }
    __syncthreads();
    #pragma unroll
    for (int producer_stage_1 = 0; producer_stage_1 < 2; ++producer_stage_1) {
      if (k_pair < 15) {
        if (producer_stage_1 == (((int)threadIdx.x) >> 7)) {
          for (int intermediate_vec_2 = 0; intermediate_vec_2 < 4; ++intermediate_vec_2) {
            if (((((((int)threadIdx.x) >> 6) * 32) + ((intermediate_vec_2 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
              *(uint4*)(up_logits_shared + (intermediate_vec_2 * 8)) = *(uint4*)(up_logits + (((((((int)blockIdx.y) * 262144) + (k_pair * 16384)) + (intermediate_vec_2 * 2048)) + (((int)threadIdx.x) * 8)) + 16384));
            }
          }
        }
      }
      #pragma unroll
      for (int i_5 = 0; i_5 < 4; ++i_5) {
        *(uint4*)(down_shared + ((((((producer_stage_1 * 8192) + (i_5 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(down + ((((((((expert_id * 14680064) + (((int)blockIdx.x) * 524288)) + (producer_stage_1 * 262144)) + (i_5 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
      }
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
    }
    if (k_pair < 15) {
      __syncthreads();
    }
  }
  for (int row_slot = 0; row_slot < 2; ++row_slot) {
    routed_weight_local[row_slot] = 0x0p+0f/*0.000000e+00*/;
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      float condval;
      if (((0 <= ((((((((int)blockIdx.y) * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start)) && (((((((((int)blockIdx.y) * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start) < 9088))) {
        condval = routed_weights[((((((((int64_t)((int)blockIdx.y)) * (int64_t)128) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32)) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15)) - ((int64_t)padded_start))];
      } else {
        condval = 0x0p+0f/*0.000000e+00*/;
      }
      routed_weight_local[row_slot] = condval;
    }
  }
  #pragma unroll
  for (int i_8 = 0; i_8 < 16; ++i_8) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_8 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast + 0) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
    }
    *(uint2*)(output + (((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_8 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (((int)blockIdx.x) * 256)) + ((i_8 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast + 0);
  }
  #pragma unroll
  for (int i_9 = 0; i_9 < 16; ++i_9) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_9 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
      half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast_1 + 0) = make_uint2(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
    }
    *(uint2*)(output + ((((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_9 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (((int)blockIdx.x) * 256)) + ((i_9 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_1 + 0);
  }
}
