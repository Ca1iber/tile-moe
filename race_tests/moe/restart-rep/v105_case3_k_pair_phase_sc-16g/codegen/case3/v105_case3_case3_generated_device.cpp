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
    *(uint4*)(input_shared + (native_vec * 8)) = *(uint4*)(input + ((((((int)blockIdx.y) * 917504) + ((((int)blockIdx.x) & 1) * 458752)) + (native_vec * 2048)) + (((int)threadIdx.x) * 8)));
  }
  for (int k_pair_iter = 0; k_pair_iter < 56; ++k_pair_iter) {
    for (int native_vec_1 = 0; native_vec_1 < 4; ++native_vec_1) {
      if (((((((int)threadIdx.x) >> 6) * 32) + ((native_vec_1 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        int condval_1;
        if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
          condval_1 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
        } else {
          condval_1 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
        }
        int condval_2;
        if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
          condval_2 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
        } else {
          condval_2 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
        }
        uint4 condval;
        if (((0 <= condval_1) && (condval_2 < 56))) {
          int64_t condval_3;
          if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
            condval_3 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
          } else {
            condval_3 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
          }
          int64_t condval_4;
          if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
            condval_4 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
          } else {
            condval_4 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
          }
          condval = *(uint4*)(input + (((((((int64_t)((int)blockIdx.y)) * (int64_t)917504) + (condval_4 * (int64_t)16384)) + (((int64_t)native_vec_1) * (int64_t)2048)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)) + (int64_t)8192));
        } else {
          condval = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
        }
        *(uint4*)(input_prefetch + (native_vec_1 * 8)) = condval;
      }
    }
    #pragma unroll
    for (int i_3 = 0; i_3 < 2; ++i_3) {
      half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_6;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_6 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_6 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_7;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_7 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_7 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_5;
      if (((condval_6 < 56) && (0 <= condval_7))) {
        int64_t condval_8;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_8 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_8 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_9;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_9 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_9 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_5 = *(uint4*)(gate + ((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_3) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_9 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
      } else {
        condval_5 = make_uint4(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_5;
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 2; ++i_4) {
      half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_11;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_11 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_11 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_12;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_12 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_12 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_10;
      if (((condval_11 < 56) && (0 <= condval_12))) {
        int64_t condval_13;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_13 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_13 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_14;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_14 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_14 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_10 = *(uint4*)(gate + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_4) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_14 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)458752));
      } else {
        condval_10 = make_uint4(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_4 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = condval_10;
    }
    #pragma unroll
    for (int i_5 = 0; i_5 < 2; ++i_5) {
      half_t broadcast_var_6 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_16;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_16 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_16 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_17;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_17 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_17 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_15;
      if (((condval_16 < 56) && (0 <= condval_17))) {
        int64_t condval_18;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_18 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_18 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_19;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_19 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_19 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_15 = *(uint4*)(up + ((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_5) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_19 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
      } else {
        condval_15 = make_uint4(__pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6), __pack_half2(broadcast_var_6, broadcast_var_6));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_5 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = condval_15;
    }
    #pragma unroll
    for (int i_6 = 0; i_6 < 2; ++i_6) {
      half_t broadcast_var_7 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_21;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_21 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_21 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_22;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_22 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_22 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_20;
      if (((condval_21 < 56) && (0 <= condval_22))) {
        int64_t condval_23;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_23 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_23 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_24;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_24 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_24 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_20 = *(uint4*)(up + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_6) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_24 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)458752));
      } else {
        condval_20 = make_uint4(__pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7), __pack_half2(broadcast_var_7, broadcast_var_7));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_6 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = condval_20;
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
    if (k_pair_iter < 55) {
      for (int native_vec_2 = 0; native_vec_2 < 4; ++native_vec_2) {
        if (((((((int)threadIdx.x) >> 6) * 32) + ((native_vec_2 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
          half_t broadcast_var_8 = half_t(0x0p+0f/*0.000000e+00*/);
          int condval_27;
          if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
            condval_27 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
          } else {
            condval_27 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
          }
          int condval_26;
          if ((55 <= condval_27)) {
            condval_26 = 0;
          } else {
            int condval_28;
            if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
              condval_28 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
            } else {
              condval_28 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
            }
            condval_26 = (condval_28 + 1);
          }
          int condval_30;
          if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
            condval_30 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
          } else {
            condval_30 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
          }
          int condval_29;
          if ((55 <= condval_30)) {
            condval_29 = 0;
          } else {
            int condval_31;
            if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
              condval_31 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
            } else {
              condval_31 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
            }
            condval_29 = (condval_31 + 1);
          }
          uint4 condval_25;
          if (((0 <= condval_26) && (condval_29 < 56))) {
            int64_t condval_33;
            if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
              condval_33 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
            } else {
              condval_33 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
            }
            int64_t condval_32;
            if (((int64_t)55 <= condval_33)) {
              condval_32 = (int64_t)0;
            } else {
              int64_t condval_34;
              if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
                condval_34 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
              } else {
                condval_34 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
              }
              condval_32 = (condval_34 + (int64_t)1);
            }
            int64_t condval_36;
            if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
              condval_36 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
            } else {
              condval_36 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
            }
            int64_t condval_35;
            if (((int64_t)55 <= condval_36)) {
              condval_35 = (int64_t)0;
            } else {
              int64_t condval_37;
              if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
                condval_37 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
              } else {
                condval_37 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
              }
              condval_35 = (condval_37 + (int64_t)1);
            }
            condval_25 = *(uint4*)(input + ((((((int64_t)((int)blockIdx.y)) * (int64_t)917504) + (condval_35 * (int64_t)16384)) + (((int64_t)native_vec_2) * (int64_t)2048)) + (((int64_t)((int)threadIdx.x)) * (int64_t)8)));
          } else {
            condval_25 = make_uint4(__pack_half2(broadcast_var_8, broadcast_var_8), __pack_half2(broadcast_var_8, broadcast_var_8), __pack_half2(broadcast_var_8, broadcast_var_8), __pack_half2(broadcast_var_8, broadcast_var_8));
          }
          *(uint4*)(input_shared + (native_vec_2 * 8)) = condval_25;
        }
      }
    }
    #pragma unroll
    for (int i_9 = 0; i_9 < 2; ++i_9) {
      half_t broadcast_var_9 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_39;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_39 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_39 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_40;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_40 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_40 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_38;
      if (((condval_39 < 56) && (0 <= condval_40))) {
        int64_t condval_41;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_41 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_41 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_42;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_42 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_42 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_38 = *(uint4*)(gate + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_9) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_42 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)64));
      } else {
        condval_38 = make_uint4(__pack_half2(broadcast_var_9, broadcast_var_9), __pack_half2(broadcast_var_9, broadcast_var_9), __pack_half2(broadcast_var_9, broadcast_var_9), __pack_half2(broadcast_var_9, broadcast_var_9));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + (((((i_9 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_38;
    }
    #pragma unroll
    for (int i_10 = 0; i_10 < 2; ++i_10) {
      half_t broadcast_var_10 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_44;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_44 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_44 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_45;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_45 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_45 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_43;
      if (((condval_44 < 56) && (0 <= condval_45))) {
        int64_t condval_46;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_46 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_46 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_47;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_47 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_47 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_43 = *(uint4*)(gate + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_10) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_47 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)458816));
      } else {
        condval_43 = make_uint4(__pack_half2(broadcast_var_10, broadcast_var_10), __pack_half2(broadcast_var_10, broadcast_var_10), __pack_half2(broadcast_var_10, broadcast_var_10), __pack_half2(broadcast_var_10, broadcast_var_10));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_10 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = condval_43;
    }
    #pragma unroll
    for (int i_11 = 0; i_11 < 2; ++i_11) {
      half_t broadcast_var_11 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_49;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_49 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_49 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_50;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_50 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_50 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_48;
      if (((condval_49 < 56) && (0 <= condval_50))) {
        int64_t condval_51;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_51 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_51 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_52;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_52 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_52 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_48 = *(uint4*)(up + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_11) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_52 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)64));
      } else {
        condval_48 = make_uint4(__pack_half2(broadcast_var_11, broadcast_var_11), __pack_half2(broadcast_var_11, broadcast_var_11), __pack_half2(broadcast_var_11, broadcast_var_11), __pack_half2(broadcast_var_11, broadcast_var_11));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_11 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = condval_48;
    }
    #pragma unroll
    for (int i_12 = 0; i_12 < 2; ++i_12) {
      half_t broadcast_var_12 = half_t(0x0p+0f/*0.000000e+00*/);
      int condval_54;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_54 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_54 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      int condval_55;
      if ((((k_pair_iter / 28) + (((int)blockIdx.x) & 1)) == 2)) {
        condval_55 = ((((((int)blockIdx.x) & 1) * 28) + k_pair_iter) - 56);
      } else {
        condval_55 = (((((int)blockIdx.x) & 1) * 28) + k_pair_iter);
      }
      uint4 condval_53;
      if (((condval_54 < 56) && (0 <= condval_55))) {
        int64_t condval_56;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_56 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_56 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        int64_t condval_57;
        if ((((((int64_t)k_pair_iter) / (int64_t)28) + (((int64_t)((int)blockIdx.x)) & (int64_t)1)) == (int64_t)2)) {
          condval_57 = ((((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter)) - (int64_t)56);
        } else {
          condval_57 = (((((int64_t)((int)blockIdx.x)) & (int64_t)1) * (int64_t)28) + ((int64_t)k_pair_iter));
        }
        condval_53 = *(uint4*)(up + (((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)917504)) + (((int64_t)i_12) * (int64_t)229376)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)7168)) + (condval_57 * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)) + (int64_t)458816));
      } else {
        condval_53 = make_uint4(__pack_half2(broadcast_var_12, broadcast_var_12), __pack_half2(broadcast_var_12, broadcast_var_12), __pack_half2(broadcast_var_12, broadcast_var_12), __pack_half2(broadcast_var_12, broadcast_var_12));
      }
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_12 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = condval_53;
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
    if (k_pair_iter < 55) {
      __syncthreads();
    }
  }
  #pragma unroll
  for (int i_15 = 0; i_15 < 16; ++i_15) {
    float broadcast_var_13 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_14 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_15 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_16 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v_ = *(float4*)(gate_local + (i_15 * 4));
      float4 __2;
        float4 v__1 = make_float4(broadcast_var_13, broadcast_var_13, broadcast_var_13, broadcast_var_13);
        float4 __3;
          float4 v__2 = make_float4(broadcast_var_14, broadcast_var_14, broadcast_var_14, broadcast_var_14);
          float4 __4;
          float4 __5;
            float4 __6;
              float4 v__3 = make_float4(broadcast_var_15, broadcast_var_15, broadcast_var_15, broadcast_var_15);
              __6.x = (v_.x*v__3.x);
              __6.y = (v_.y*v__3.y);
              __6.z = (v_.z*v__3.z);
              __6.w = (v_.w*v__3.w);
            float4 v__4 = make_float4(broadcast_var_16, broadcast_var_16, broadcast_var_16, broadcast_var_16);
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
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_15 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
      *(uint2*)(up_logits + (((((((((int)blockIdx.y) * 278528) + ((((int)threadIdx.x) >> 6) * 69632)) + ((i_15 >> 3) * 34816)) + ((((int)threadIdx.x) & 15) * 2176)) + (((int)blockIdx.x) * 128)) + ((i_15 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = __7;
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
  #pragma unroll
  for (int i_2 = 0; i_2 < 4; ++i_2) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_2 & 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
      *(uint4*)(up_logits_shared + (i_2 * 8)) = *(uint4*)(up_logits + ((((((((int)blockIdx.y) * 278528) + ((((int)threadIdx.x) >> 6) * 69632)) + ((i_2 & 1) * 34816)) + ((((int)threadIdx.x) & 15) * 2176)) + ((i_2 >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
    }
  }
  for (int k_pair = 0; k_pair < 16; ++k_pair) {
    #pragma unroll
    for (int producer_stage = 0; producer_stage < 2; ++producer_stage) {
      if (((int)threadIdx.x) < ((producer_stage * 128) + 128)) {
        #pragma unroll
        for (int i_3 = 0; i_3 < 4; ++i_3) {
          if ((0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_3 >> 1) * 16)) + (((int)threadIdx.x) & 15)) - (producer_stage * 64))) && (((((int)threadIdx.x) >> 7) - producer_stage) < 1)) {
            if (((((((int)threadIdx.x) >> 6) * 32) + ((i_3 >> 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
              *(uint4*)(up_logits_prefetch + (((i_3 & 1) * 16) + ((i_3 >> 1) * 8))) = *(uint4*)(up_logits + ((((((((((int)blockIdx.y) * 278528) + ((((int)threadIdx.x) >> 6) * 69632)) + ((i_3 >> 1) * 34816)) + ((((int)threadIdx.x) & 15) * 2176)) + (k_pair * 128)) + ((i_3 & 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 64));
            }
          }
        }
      }
      #pragma unroll
      for (int i_4 = 0; i_4 < 4; ++i_4) {
        *(uint4*)(down_shared + ((((((producer_stage * 8192) + (i_4 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(down + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 524288)) + (producer_stage * 262144)) + (i_4 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
      }
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
              if (((((((int)threadIdx.x) >> 6) * 32) + ((i_7 >> 1) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
                *(uint4*)(up_logits_shared + (((i_7 & 1) * 16) + ((i_7 >> 1) * 8))) = *(uint4*)(up_logits + ((((((((((int)blockIdx.y) * 278528) + ((((int)threadIdx.x) >> 6) * 69632)) + ((i_7 >> 1) * 34816)) + ((((int)threadIdx.x) & 15) * 2176)) + (k_pair * 128)) + ((i_7 & 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) + 128));
              }
            }
          }
        }
      }
      #pragma unroll
      for (int i_8 = 0; i_8 < 4; ++i_8) {
        *(uint4*)(down_shared + ((((((producer_stage_1 * 8192) + (i_8 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(down + ((((((((expert_id * 14680064) + (((int)blockIdx.x) * 524288)) + (producer_stage_1 * 262144)) + (i_8 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
      }
    }
    __syncthreads();
    if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
  for (int i_11 = 0; i_11 < 16; ++i_11) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast + 0) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
    }
    *(uint2*)(output + (((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_11 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (((int)blockIdx.x) * 256)) + ((i_11 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast + 0);
  }
  #pragma unroll
  for (int i_12 = 0; i_12 < 16; ++i_12) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_12 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
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
      half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(output_local_cast_1 + 0) = make_uint2(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
    }
    *(uint2*)(output + ((((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_12 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (((int)blockIdx.x) * 256)) + ((i_12 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_1 + 0);
  }
}

