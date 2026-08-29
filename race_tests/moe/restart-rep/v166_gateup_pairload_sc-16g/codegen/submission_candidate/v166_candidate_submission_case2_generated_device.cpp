#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void kernel_kernel(int* __restrict__ expert_rank, const int* __restrict__ group_sizes);
extern "C" __global__ void kernel_kernel_1(const int* __restrict__ expert_rank, const int* __restrict__ group_padded_offsets, const half_t* __restrict__ input_original, half_t* __restrict__ short_input);
extern "C" __global__ void kernel_kernel_2(const int* __restrict__ expert_rank, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ input, const half_t* __restrict__ input_original);
extern "C" __global__ void kernel_kernel_3(const int* __restrict__ expert_rank, const half_t* __restrict__ gate, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ short_input, const half_t* __restrict__ up, half_t* __restrict__ up_logits);
extern "C" __global__ void kernel_kernel_4(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits);
extern "C" __global__ void __launch_bounds__(64, 1) kernel_kernel(int* __restrict__ expert_rank, const int* __restrict__ group_sizes) {
  int map_rank[1];
  map_rank[0] = 0;
  if (((int)threadIdx.x) < 32) {
    if (group_sizes[((int)threadIdx.x)] <= 128) {
      for (int map_expert = 0; map_expert < 32; ++map_expert) {
        if ((map_expert < ((int)threadIdx.x)) && (group_sizes[map_expert] <= 128)) {
          map_rank[0] = (map_rank[0] + 1);
        }
      }
      if (0 <= map_rank[0]) {
        if (map_rank[0] < 32) {
          expert_rank[map_rank[(int64_t)0]] = ((int)threadIdx.x);
        }
      }
    } else {
      for (int map_expert_1 = 0; map_expert_1 < 32; ++map_expert_1) {
        if ((map_expert_1 < ((int)threadIdx.x)) && (128 < group_sizes[map_expert_1])) {
          map_rank[0] = (map_rank[0] + 1);
        }
      }
      if (-16 <= map_rank[0]) {
        if (map_rank[0] < 16) {
          expert_rank[(((int64_t)map_rank[(int64_t)0]) + (int64_t)16)] = ((int)threadIdx.x);
        }
      }
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(const int* __restrict__ expert_rank, const int* __restrict__ group_padded_offsets, const half_t* __restrict__ input_original, half_t* __restrict__ short_input) {
  extern __shared__ __align__(1024) half_t short_copy_shared[];
  int short_copy_expert = expert_rank[((int)blockIdx.y)];
  int condval;
  if (((0 <= short_copy_expert) && (short_copy_expert < 33))) {
    condval = group_padded_offsets[((int64_t)short_copy_expert)];
  } else {
    condval = 0;
  }
  int short_copy_padded_start = condval;
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
    uint4 condval_1;
    if (((((((((int)threadIdx.x) >> 5) + short_copy_padded_start) >> 3) + i) < 768) && (0 <= (((i * 8) + (((int)threadIdx.x) >> 5)) + short_copy_padded_start)))) {
      condval_1 = *(uint4*)(input_original + (((((((int64_t)i) * (int64_t)57344) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)5) * (int64_t)7168)) + (((int64_t)short_copy_padded_start) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)256)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)31) * (int64_t)8)));
    } else {
      condval_1 = make_uint4(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
    }
    *(uint4*)(short_copy_shared + ((i * 2048) + (((int)threadIdx.x) * 8))) = condval_1;
  }
  __syncthreads();
  for (int short_copy_k_sub = 0; short_copy_k_sub < 4; ++short_copy_k_sub) {
    for (int short_native_vec = 0; short_native_vec < 4; ++short_native_vec) {
      *(uint4*)(short_input + (((((((int)blockIdx.y) * 917504) + (((int)blockIdx.x) * 32768)) + (short_copy_k_sub * 8192)) + (short_native_vec * 2048)) + (((int)threadIdx.x) * 8))) = *(uint4*)(short_copy_shared + (((((((((int)threadIdx.x) >> 6) * 8192) + ((short_native_vec & 1) * 4096)) + ((((int)threadIdx.x) & 15) * 256)) + (short_copy_k_sub * 64)) + ((short_native_vec >> 1) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)));
    }
  }
}

extern "C" __global__ void __launch_bounds__(512, 1) kernel_kernel_2(const int* __restrict__ expert_rank, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ input, const half_t* __restrict__ input_original) {
  extern __shared__ __align__(1024) half_t copy_shared[];
  int copy_expert = expert_rank[(((int)blockIdx.y) + 16)];
  int condval;
  if (((0 <= copy_expert) && (copy_expert < 33))) {
    condval = group_padded_offsets[((int64_t)copy_expert)];
  } else {
    condval = 0;
  }
  int copy_padded_start = condval;
  int condval_1;
  if (((0 <= copy_expert) && (copy_expert < 32))) {
    condval_1 = group_sizes[((int64_t)copy_expert)];
  } else {
    condval_1 = 0;
  }
  int copy_group_size = condval_1;
  for (int copy_panel = 0; copy_panel < 2; ++copy_panel) {
    for (int copy_phase = 0; copy_phase < 2; ++copy_phase) {
      for (int copy_vec = 0; copy_vec < 3; ++copy_vec) {
        if (((copy_phase * 96) + (((((int)threadIdx.x) * 3) + copy_vec) >> 4)) < copy_group_size) {
          half_t broadcast_var = half_t(0x0p+0f/*0.000000e+00*/);
          uint4 condval_2;
          if (((0 <= (((copy_phase * 96) + (((((int)threadIdx.x) * 3) + copy_vec) >> 4)) + copy_padded_start)) && ((((((((((int)threadIdx.x) * 3) + copy_vec) >> 4) + copy_padded_start) / 96) + ((((((((int)threadIdx.x) * 3) + copy_vec) >> 4) + copy_padded_start) % 96) >> 31)) + copy_phase) < 64))) {
            condval_2 = *(uint4*)(input_original + ((((((((int64_t)copy_phase) * (int64_t)688128) + ((((((int64_t)((int)threadIdx.x)) * (int64_t)3) + ((int64_t)copy_vec)) >> (int64_t)4) * (int64_t)7168)) + (((int64_t)copy_padded_start) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)256)) + (((int64_t)copy_panel) * (int64_t)128)) + ((((((int64_t)((int)threadIdx.x)) * (int64_t)3) + ((int64_t)copy_vec)) & (int64_t)15) * (int64_t)8)));
          } else {
            condval_2 = make_uint4(__pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var), __pack_half2(broadcast_var, broadcast_var));
          }
          *(uint4*)(copy_shared + ((((int)threadIdx.x) * 24) + (copy_vec * 8))) = condval_2;
        } else {
          half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
          *(uint4*)(copy_shared + ((((int)threadIdx.x) * 24) + (copy_vec * 8))) = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
        }
      }
      __syncthreads();
      if ((((int)threadIdx.x) < 256) && (copy_phase == (((int)threadIdx.x) >> 7))) {
        for (int copy_k_sub = 0; copy_k_sub < 2; ++copy_k_sub) {
          for (int native_vec = 0; native_vec < 6; ++native_vec) {
            *(uint4*)(input + ((((((((int)blockIdx.y) * 1376256) + (((int)blockIdx.x) * 49152)) + (copy_panel * 24576)) + (copy_k_sub * 12288)) + (native_vec * 2048)) + (((int)threadIdx.x) * 8))) = *(uint4*)(copy_shared + ((((((((((int)threadIdx.x) >> 6) * 6144) + ((native_vec % 3) * 2048)) + ((((int)threadIdx.x) & 15) * 128)) + (copy_k_sub * 64)) + ((native_vec / 3) * 32)) + (((((int)threadIdx.x) & 63) >> 4) * 8)) - (copy_phase * 12288)));
          }
        }
      }
      if ((copy_phase < 1) || (copy_panel < 1)) {
        __syncthreads();
      }
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_3(const int* __restrict__ expert_rank, const half_t* __restrict__ gate, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ short_input, const half_t* __restrict__ up, half_t* __restrict__ up_logits) {
  float short_gate_local[64];
  float short_up_local[64];
  half_t short_input_prefetch[32];
  half_t short_input_shared[32];
  extern __shared__ __align__(1024) half_t weight_shared[];
  float gate_local[48];
  float up_local[48];
  half_t input_prefetch[48];
  half_t input_shared[48];
  half_t short_weight_local[64];
  half_t gate_vec[8];
  half_t up_vec[8];
  half_t gate_vec_1[8];
  half_t up_vec_1[8];
  half_t weight_local[32];
  half_t gate_vec_2[8];
  half_t up_vec_2[8];
  half_t gate_vec_3[8];
  half_t up_vec_3[8];
  if (((int)blockIdx.y) < 16) {
    int short_expert_id = expert_rank[((int)blockIdx.y)];
    int short_group_size = group_sizes[short_expert_id];
    int short_block_start = group_padded_offsets[short_expert_id];
    #pragma unroll
    for (int i = 0; i < 16; ++i) {
      float broadcast_var = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(short_gate_local + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
    }
    #pragma unroll
    for (int i_1 = 0; i_1 < 16; ++i_1) {
      float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(short_up_local + (i_1 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
    }
    #pragma unroll
    for (int i_2 = 0; i_2 < 8; ++i_2) {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(short_input_prefetch + (i_2 * 4)) = make_uint2(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
    }
    for (int short_native_vec = 0; short_native_vec < 4; ++short_native_vec) {
      *(uint4*)(short_input_shared + (short_native_vec * 8)) = *(uint4*)(short_input + (((((int)blockIdx.y) * 917504) + (short_native_vec * 2048)) + (((int)threadIdx.x) * 8)));
    }
    for (int short_k_pair = 0; short_k_pair < 56; ++short_k_pair) {
      for (int short_native_vec_1 = 0; short_native_vec_1 < 4; ++short_native_vec_1) {
        if (((((((int)threadIdx.x) >> 6) * 32) + ((short_native_vec_1 & 1) * 16)) + (((int)threadIdx.x) & 15)) < short_group_size) {
          *(uint4*)(short_input_prefetch + (short_native_vec_1 * 8)) = *(uint4*)(short_input + (((((((int)blockIdx.y) * 917504) + (short_k_pair * 16384)) + (short_native_vec_1 * 2048)) + (((int)threadIdx.x) * 8)) + 8192));
        }
      }
      #pragma unroll
      for (int i_3 = 0; i_3 < 2; ++i_3) {
        *(uint4*)(weight_shared + (((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + ((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_3 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
      }
      #pragma unroll
      for (int i_4 = 0; i_4 < 2; ++i_4) {
        *(uint4*)(weight_shared + ((((((i_4 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_4 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458752));
      }
      #pragma unroll
      for (int i_5 = 0; i_5 < 2; ++i_5) {
        *(uint4*)(weight_shared + ((((((i_5 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + ((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_5 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
      }
      #pragma unroll
      for (int i_6 = 0; i_6 < 2; ++i_6) {
        *(uint4*)(weight_shared + ((((((i_6 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_6 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458752));
      }
      __syncthreads();
      if (((((int)threadIdx.x) >> 6) * 32) < short_group_size) {
        for (int ki = 0; ki < 2; ++ki) {
          for (int j = 0; j < 8; ++j) {
            *(uint4*)(short_weight_local + (j * 8)) = *(uint4*)(weight_shared + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
          }
          for (int kp = 0; kp < 2; ++kp) {
            for (int i_7 = 0; i_7 < 2; ++i_7) {
              for (int j_1 = 0; j_1 < 8; ++j_1) {
                {
      *(((float32x4*)short_gate_local) + ((i_7 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)short_weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)short_input_shared) + (((ki * 4) + (i_7 * 2)) + kp)),
                    *(((float32x4*)short_gate_local) + ((i_7 * 8) + j_1)));
    };
              }
            }
          }
          for (int j_2 = 0; j_2 < 8; ++j_2) {
            *(uint4*)(short_weight_local + (j_2 * 8)) = *(uint4*)(weight_shared + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
          }
          for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
            for (int i_8 = 0; i_8 < 2; ++i_8) {
              for (int j_3 = 0; j_3 < 8; ++j_3) {
                {
      *(((float32x4*)short_up_local) + ((i_8 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)short_weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)short_input_shared) + (((ki * 4) + (i_8 * 2)) + kp_1)),
                    *(((float32x4*)short_up_local) + ((i_8 * 8) + j_3)));
    };
              }
            }
          }
        }
      }
      __syncthreads();
      if (short_k_pair < 55) {
        for (int short_native_vec_2 = 0; short_native_vec_2 < 4; ++short_native_vec_2) {
          if (((((((int)threadIdx.x) >> 6) * 32) + ((short_native_vec_2 & 1) * 16)) + (((int)threadIdx.x) & 15)) < short_group_size) {
            *(uint4*)(short_input_shared + (short_native_vec_2 * 8)) = *(uint4*)(short_input + (((((((int)blockIdx.y) * 917504) + (short_k_pair * 16384)) + (short_native_vec_2 * 2048)) + (((int)threadIdx.x) * 8)) + 16384));
          }
        }
      }
      #pragma unroll
      for (int i_9 = 0; i_9 < 2; ++i_9) {
        *(uint4*)(weight_shared + (((((i_9 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate + (((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_9 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
      }
      #pragma unroll
      for (int i_10 = 0; i_10 < 2; ++i_10) {
        *(uint4*)(weight_shared + ((((((i_10 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)) = *(uint4*)(gate + (((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_10 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458816));
      }
      #pragma unroll
      for (int i_11 = 0; i_11 < 2; ++i_11) {
        *(uint4*)(weight_shared + ((((((i_11 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up + (((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_11 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
      }
      #pragma unroll
      for (int i_12 = 0; i_12 < 2; ++i_12) {
        *(uint4*)(weight_shared + ((((((i_12 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(up + (((((((short_expert_id * 14680064) + (((int)blockIdx.x) * 917504)) + (i_12 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (short_k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 458816));
      }
      __syncthreads();
      if (((((int)threadIdx.x) >> 6) * 32) < short_group_size) {
        for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
          for (int j_4 = 0; j_4 < 8; ++j_4) {
            *(uint4*)(short_weight_local + (j_4 * 8)) = *(uint4*)(weight_shared + (((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
          }
          for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
            for (int i_13 = 0; i_13 < 2; ++i_13) {
              for (int j_5 = 0; j_5 < 8; ++j_5) {
                {
      *(((float32x4*)short_gate_local) + ((i_13 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)short_weight_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)short_input_prefetch) + (((ki_1 * 4) + (i_13 * 2)) + kp_2)),
                    *(((float32x4*)short_gate_local) + ((i_13 * 8) + j_5)));
    };
              }
            }
          }
          for (int j_6 = 0; j_6 < 8; ++j_6) {
            *(uint4*)(short_weight_local + (j_6 * 8)) = *(uint4*)(weight_shared + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
          }
          for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
            for (int i_14 = 0; i_14 < 2; ++i_14) {
              for (int j_7 = 0; j_7 < 8; ++j_7) {
                {
      *(((float32x4*)short_up_local) + ((i_14 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)short_weight_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)short_input_prefetch) + (((ki_1 * 4) + (i_14 * 2)) + kp_3)),
                    *(((float32x4*)short_up_local) + ((i_14 * 8) + j_7)));
    };
              }
            }
          }
        }
      }
      if (short_k_pair < 55) {
        __syncthreads();
      }
    }
    #pragma unroll
    for (int i_15 = 0; i_15 < 16; ++i_15) {
      float4 short_silu_x = *(float4*)(short_gate_local + (i_15 * 4));
      float broadcast_var_3 = -0x1.6p+2f/*-5.500000e+00*/;
      float broadcast_var_4 = 0x1.6p+2f/*5.500000e+00*/;
      float4 __1;
        float4 v_ = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
        float4 __2;
          float4 v__1 = make_float4(broadcast_var_4, broadcast_var_4, broadcast_var_4, broadcast_var_4);
          __2.x = min(v__1.x, short_silu_x.x);
          __2.y = min(v__1.y, short_silu_x.y);
          __2.z = min(v__1.z, short_silu_x.z);
          __2.w = min(v__1.w, short_silu_x.w);
        __1.x = max(v_.x, __2.x);
        __1.y = max(v_.y, __2.y);
        __1.z = max(v_.z, __2.z);
        __1.w = max(v_.w, __2.w);
      float4 short_silu_clamped = __1;
      float4 __3;
        __3.x = (short_silu_clamped.x*short_silu_clamped.x);
        __3.y = (short_silu_clamped.y*short_silu_clamped.y);
        __3.z = (short_silu_clamped.z*short_silu_clamped.z);
        __3.w = (short_silu_clamped.w*short_silu_clamped.w);
      float4 short_silu_z = __3;
      float broadcast_var_5 = -0x1.bbde26027afb1p-16f/*-2.645658e-05*/;
      float broadcast_var_6 = 0x1.4816990b6e8e4p-22f/*3.055560e-07*/;
      float4 __4;
        float4 v__2 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
        float4 __5;
          float4 v__3 = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
          __5.x = (short_silu_z.x*v__3.x);
          __5.y = (short_silu_z.y*v__3.y);
          __5.z = (short_silu_z.z*v__3.z);
          __5.w = (short_silu_z.w*v__3.w);
        __4.x = (v__2.x+__5.x);
        __4.y = (v__2.y+__5.y);
        __4.z = (v__2.z+__5.z);
        __4.w = (v__2.w+__5.w);
      float4 short_silu_p7 = __4;
      float broadcast_var_7 = 0x1.db9f0a6c59536p-11f/*9.071755e-04*/;
      float4 __6;
        float4 v__4 = make_float4(broadcast_var_7, broadcast_var_7, broadcast_var_7, broadcast_var_7);
        float4 __7;
          __7.x = (short_silu_z.x*short_silu_p7.x);
          __7.y = (short_silu_z.y*short_silu_p7.y);
          __7.z = (short_silu_z.z*short_silu_p7.z);
          __7.w = (short_silu_z.w*short_silu_p7.w);
        __6.x = (v__4.x+__7.x);
        __6.y = (v__4.y+__7.y);
        __6.z = (v__4.z+__7.z);
        __6.w = (v__4.w+__7.w);
      float4 short_silu_p5 = __6;
      float broadcast_var_8 = -0x1.134dd8c26a9efp-6f/*-1.680323e-02*/;
      float4 __8;
        float4 v__5 = make_float4(broadcast_var_8, broadcast_var_8, broadcast_var_8, broadcast_var_8);
        float4 __9;
          __9.x = (short_silu_z.x*short_silu_p5.x);
          __9.y = (short_silu_z.y*short_silu_p5.y);
          __9.z = (short_silu_z.z*short_silu_p5.z);
          __9.w = (short_silu_z.w*short_silu_p5.w);
        __8.x = (v__5.x+__9.x);
        __8.y = (v__5.y+__9.y);
        __8.z = (v__5.z+__9.z);
        __8.w = (v__5.w+__9.w);
      float4 short_silu_p3 = __8;
      float broadcast_var_9 = 0x1.f6e65882d1e5ep-3f/*2.455565e-01*/;
      float4 __10;
        float4 v__6 = make_float4(broadcast_var_9, broadcast_var_9, broadcast_var_9, broadcast_var_9);
        float4 __11;
          __11.x = (short_silu_z.x*short_silu_p3.x);
          __11.y = (short_silu_z.y*short_silu_p3.y);
          __11.z = (short_silu_z.z*short_silu_p3.z);
          __11.w = (short_silu_z.w*short_silu_p3.w);
        __10.x = (v__6.x+__11.x);
        __10.y = (v__6.y+__11.y);
        __10.z = (v__6.z+__11.z);
        __10.w = (v__6.w+__11.w);
      float4 short_silu_p1 = __10;
      float broadcast_var_10 = 0x1p-1f/*5.000000e-01*/;
      float4 __12;
        float4 __13;
          float4 v__7 = make_float4(broadcast_var_10, broadcast_var_10, broadcast_var_10, broadcast_var_10);
          float4 __14;
            __14.x = (short_silu_clamped.x*short_silu_p1.x);
            __14.y = (short_silu_clamped.y*short_silu_p1.y);
            __14.z = (short_silu_clamped.z*short_silu_p1.z);
            __14.w = (short_silu_clamped.w*short_silu_p1.w);
          __13.x = (v__7.x+__14.x);
          __13.y = (v__7.y+__14.y);
          __13.z = (v__7.z+__14.z);
          __13.w = (v__7.w+__14.w);
        __12.x = (short_silu_x.x*__13.x);
        __12.y = (short_silu_x.y*__13.y);
        __12.z = (short_silu_x.z*__13.z);
        __12.w = (short_silu_x.w*__13.w);
      *(float4*)(short_gate_local + (i_15 * 4)) = __12;
      if (((((((int)threadIdx.x) >> 6) * 32) + ((i_15 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < short_group_size) {
        if (0 <= short_block_start) {
          if (short_block_start < 6144) {
            uint2 __15;
            float4 __16;
              float4 v__8 = *(float4*)(short_up_local + (i_15 * 4));
              float4 v__9 = *(float4*)(short_gate_local + (i_15 * 4));
              __16.x = (v__8.x*v__9.x);
              __16.y = (v__8.y*v__9.y);
              __16.z = (v__8.z*v__9.z);
              __16.w = (v__8.w*v__9.w);
            ((half2*)(&__15))[0] = __float22half2_rn(((float2*)(&__16))[0]);
            ((half2*)(&__15))[1] = __float22half2_rn(((float2*)(&__16))[1]);
            *(uint2*)(up_logits + ((((((((((short_block_start >> 7) * 262144) + (((int)blockIdx.x) * 16384)) + (((i_15 & 7) >> 1) * 4096)) + ((i_15 >> 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 512)) + ((i_15 & 1) * 256)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + ((((int)threadIdx.x) & 15) * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 4))) = __15;
          }
        }
      }
    }
  } else {
    int copy_expert = expert_rank[((((int)blockIdx.y) >> 1) + 8)];
    int group_size = group_sizes[copy_expert];
    int block_start = group_padded_offsets[copy_expert];
    #pragma unroll
    for (int i_16 = 0; i_16 < 12; ++i_16) {
      float broadcast_var_11 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(gate_local + (i_16 * 4)) = make_float4(broadcast_var_11, broadcast_var_11, broadcast_var_11, broadcast_var_11);
    }
    #pragma unroll
    for (int i_17 = 0; i_17 < 12; ++i_17) {
      float broadcast_var_12 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(up_local + (i_17 * 4)) = make_float4(broadcast_var_12, broadcast_var_12, broadcast_var_12, broadcast_var_12);
    }
    #pragma unroll
    for (int i_18 = 0; i_18 < 12; ++i_18) {
      half_t broadcast_var_13 = half_t(0x0p+0f/*0.000000e+00*/);
      *(uint2*)(input_prefetch + (i_18 * 4)) = make_uint2(__pack_half2(broadcast_var_13, broadcast_var_13), __pack_half2(broadcast_var_13, broadcast_var_13));
    }
    for (int native_vec = 0; native_vec < 6; ++native_vec) {
      *(uint4*)(input_shared + (native_vec * 8)) = *(uint4*)(input + (((((((int)blockIdx.y) >> 1) * 1376256) + (native_vec * 2048)) + (((int)threadIdx.x) * 8)) - 11010048));
    }
    for (int k_pair = 0; k_pair < 56; ++k_pair) {
      for (int native_vec_1 = 0; native_vec_1 < 6; ++native_vec_1) {
        if (((((((int)threadIdx.x) >> 6) * 48) + ((native_vec_1 % 3) * 16)) + (((int)threadIdx.x) & 15)) < group_size) {
          *(uint4*)(input_prefetch + (native_vec_1 * 8)) = *(uint4*)(input + ((((((((int)blockIdx.y) >> 1) * 1376256) + (k_pair * 24576)) + (native_vec_1 * 2048)) + (((int)threadIdx.x) * 8)) - 10997760));
        }
      }
      *(uint4*)(gate_vec + 0) = *(uint4*)(gate + ((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
      *(uint4*)(up_vec + 0) = *(uint4*)(up + ((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
      *(uint4*)(weight_shared + (((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate_vec + 0);
      *(uint4*)(weight_shared + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up_vec + 0);
      *(uint4*)(gate_vec_1 + 0) = *(uint4*)(gate + (((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 229376));
      *(uint4*)(up_vec_1 + 0) = *(uint4*)(up + (((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 229376));
      *(uint4*)(weight_shared + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 2048)) = *(uint4*)(gate_vec_1 + 0);
      *(uint4*)(weight_shared + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 10240)) = *(uint4*)(up_vec_1 + 0);
      __syncthreads();
      if (((((int)threadIdx.x) >> 6) * 48) < group_size) {
        for (int ki_2 = 0; ki_2 < 2; ++ki_2) {
          for (int j_8 = 0; j_8 < 4; ++j_8) {
            *(uint4*)(weight_local + (j_8 * 8)) = *(uint4*)(weight_shared + (((((j_8 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_2) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
          }
          for (int kp_4 = 0; kp_4 < 2; ++kp_4) {
            for (int i_19 = 0; i_19 < 3; ++i_19) {
              for (int j_9 = 0; j_9 < 4; ++j_9) {
                {
      *(((float32x4*)gate_local) + ((i_19 * 4) + j_9)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_9 * 2) + kp_4)),
                    *(((float16x4*)input_shared) + (((ki_2 * 6) + (i_19 * 2)) + kp_4)),
                    *(((float32x4*)gate_local) + ((i_19 * 4) + j_9)));
    };
              }
            }
          }
          for (int j_10 = 0; j_10 < 4; ++j_10) {
            *(uint4*)(weight_local + (j_10 * 8)) = *(uint4*)(weight_shared + ((((((j_10 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_2) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
          }
          for (int kp_5 = 0; kp_5 < 2; ++kp_5) {
            for (int i_20 = 0; i_20 < 3; ++i_20) {
              for (int j_11 = 0; j_11 < 4; ++j_11) {
                {
      *(((float32x4*)up_local) + ((i_20 * 4) + j_11)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_11 * 2) + kp_5)),
                    *(((float16x4*)input_shared) + (((ki_2 * 6) + (i_20 * 2)) + kp_5)),
                    *(((float32x4*)up_local) + ((i_20 * 4) + j_11)));
    };
              }
            }
          }
        }
      }
      __syncthreads();
      if (k_pair < 55) {
        for (int native_vec_2 = 0; native_vec_2 < 6; ++native_vec_2) {
          if (((((((int)threadIdx.x) >> 6) * 48) + ((native_vec_2 % 3) * 16)) + (((int)threadIdx.x) & 15)) < group_size) {
            *(uint4*)(input_shared + (native_vec_2 * 8)) = *(uint4*)(input + ((((((((int)blockIdx.y) >> 1) * 1376256) + (k_pair * 24576)) + (native_vec_2 * 2048)) + (((int)threadIdx.x) * 8)) - 10985472));
          }
        }
      }
      *(uint4*)(gate_vec_2 + 0) = *(uint4*)(gate + (((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
      *(uint4*)(up_vec_2 + 0) = *(uint4*)(up + (((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
      *(uint4*)(weight_shared + (((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(gate_vec_2 + 0);
      *(uint4*)(weight_shared + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(up_vec_2 + 0);
      *(uint4*)(gate_vec_3 + 0) = *(uint4*)(gate + (((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 229440));
      *(uint4*)(up_vec_3 + 0) = *(uint4*)(up + (((((((copy_expert * 14680064) + (((int)blockIdx.x) * 917504)) + ((((int)blockIdx.y) & 1) * 458752)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 229440));
      *(uint4*)(weight_shared + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 2048)) = *(uint4*)(gate_vec_3 + 0);
      *(uint4*)(weight_shared + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 10240)) = *(uint4*)(up_vec_3 + 0);
      __syncthreads();
      if (((((int)threadIdx.x) >> 6) * 48) < group_size) {
        for (int ki_3 = 0; ki_3 < 2; ++ki_3) {
          for (int j_12 = 0; j_12 < 4; ++j_12) {
            *(uint4*)(weight_local + (j_12 * 8)) = *(uint4*)(weight_shared + (((((j_12 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_3) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
          }
          for (int kp_6 = 0; kp_6 < 2; ++kp_6) {
            for (int i_21 = 0; i_21 < 3; ++i_21) {
              for (int j_13 = 0; j_13 < 4; ++j_13) {
                {
      *(((float32x4*)gate_local) + ((i_21 * 4) + j_13)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_13 * 2) + kp_6)),
                    *(((float16x4*)input_prefetch) + (((ki_3 * 6) + (i_21 * 2)) + kp_6)),
                    *(((float32x4*)gate_local) + ((i_21 * 4) + j_13)));
    };
              }
            }
          }
          for (int j_14 = 0; j_14 < 4; ++j_14) {
            *(uint4*)(weight_local + (j_14 * 8)) = *(uint4*)(weight_shared + ((((((j_14 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_3) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
          }
          for (int kp_7 = 0; kp_7 < 2; ++kp_7) {
            for (int i_22 = 0; i_22 < 3; ++i_22) {
              for (int j_15 = 0; j_15 < 4; ++j_15) {
                {
      *(((float32x4*)up_local) + ((i_22 * 4) + j_15)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)weight_local) + ((j_15 * 2) + kp_7)),
                    *(((float16x4*)input_prefetch) + (((ki_3 * 6) + (i_22 * 2)) + kp_7)),
                    *(((float32x4*)up_local) + ((i_22 * 4) + j_15)));
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
    for (int i_23 = 0; i_23 < 12; ++i_23) {
      float4 silu_x = *(float4*)(gate_local + (i_23 * 4));
      float broadcast_var_14 = -0x1.6p+2f/*-5.500000e+00*/;
      float broadcast_var_15 = 0x1.6p+2f/*5.500000e+00*/;
      float4 __17;
        float4 v__10 = make_float4(broadcast_var_14, broadcast_var_14, broadcast_var_14, broadcast_var_14);
        float4 __18;
          float4 v__11 = make_float4(broadcast_var_15, broadcast_var_15, broadcast_var_15, broadcast_var_15);
          __18.x = min(v__11.x, silu_x.x);
          __18.y = min(v__11.y, silu_x.y);
          __18.z = min(v__11.z, silu_x.z);
          __18.w = min(v__11.w, silu_x.w);
        __17.x = max(v__10.x, __18.x);
        __17.y = max(v__10.y, __18.y);
        __17.z = max(v__10.z, __18.z);
        __17.w = max(v__10.w, __18.w);
      float4 silu_clamped = __17;
      float4 __19;
        __19.x = (silu_clamped.x*silu_clamped.x);
        __19.y = (silu_clamped.y*silu_clamped.y);
        __19.z = (silu_clamped.z*silu_clamped.z);
        __19.w = (silu_clamped.w*silu_clamped.w);
      float4 silu_z = __19;
      float broadcast_var_16 = -0x1.bbde26027afb1p-16f/*-2.645658e-05*/;
      float broadcast_var_17 = 0x1.4816990b6e8e4p-22f/*3.055560e-07*/;
      float4 __20;
        float4 v__12 = make_float4(broadcast_var_16, broadcast_var_16, broadcast_var_16, broadcast_var_16);
        float4 __21;
          float4 v__13 = make_float4(broadcast_var_17, broadcast_var_17, broadcast_var_17, broadcast_var_17);
          __21.x = (silu_z.x*v__13.x);
          __21.y = (silu_z.y*v__13.y);
          __21.z = (silu_z.z*v__13.z);
          __21.w = (silu_z.w*v__13.w);
        __20.x = (v__12.x+__21.x);
        __20.y = (v__12.y+__21.y);
        __20.z = (v__12.z+__21.z);
        __20.w = (v__12.w+__21.w);
      float4 silu_p7 = __20;
      float broadcast_var_18 = 0x1.db9f0a6c59536p-11f/*9.071755e-04*/;
      float4 __22;
        float4 v__14 = make_float4(broadcast_var_18, broadcast_var_18, broadcast_var_18, broadcast_var_18);
        float4 __23;
          __23.x = (silu_z.x*silu_p7.x);
          __23.y = (silu_z.y*silu_p7.y);
          __23.z = (silu_z.z*silu_p7.z);
          __23.w = (silu_z.w*silu_p7.w);
        __22.x = (v__14.x+__23.x);
        __22.y = (v__14.y+__23.y);
        __22.z = (v__14.z+__23.z);
        __22.w = (v__14.w+__23.w);
      float4 silu_p5 = __22;
      float broadcast_var_19 = -0x1.134dd8c26a9efp-6f/*-1.680323e-02*/;
      float4 __24;
        float4 v__15 = make_float4(broadcast_var_19, broadcast_var_19, broadcast_var_19, broadcast_var_19);
        float4 __25;
          __25.x = (silu_z.x*silu_p5.x);
          __25.y = (silu_z.y*silu_p5.y);
          __25.z = (silu_z.z*silu_p5.z);
          __25.w = (silu_z.w*silu_p5.w);
        __24.x = (v__15.x+__25.x);
        __24.y = (v__15.y+__25.y);
        __24.z = (v__15.z+__25.z);
        __24.w = (v__15.w+__25.w);
      float4 silu_p3 = __24;
      float broadcast_var_20 = 0x1.f6e65882d1e5ep-3f/*2.455565e-01*/;
      float4 __26;
        float4 v__16 = make_float4(broadcast_var_20, broadcast_var_20, broadcast_var_20, broadcast_var_20);
        float4 __27;
          __27.x = (silu_z.x*silu_p3.x);
          __27.y = (silu_z.y*silu_p3.y);
          __27.z = (silu_z.z*silu_p3.z);
          __27.w = (silu_z.w*silu_p3.w);
        __26.x = (v__16.x+__27.x);
        __26.y = (v__16.y+__27.y);
        __26.z = (v__16.z+__27.z);
        __26.w = (v__16.w+__27.w);
      float4 silu_p1 = __26;
      float broadcast_var_21 = 0x1p-1f/*5.000000e-01*/;
      float4 __28;
        float4 __29;
          float4 v__17 = make_float4(broadcast_var_21, broadcast_var_21, broadcast_var_21, broadcast_var_21);
          float4 __30;
            __30.x = (silu_clamped.x*silu_p1.x);
            __30.y = (silu_clamped.y*silu_p1.y);
            __30.z = (silu_clamped.z*silu_p1.z);
            __30.w = (silu_clamped.w*silu_p1.w);
          __29.x = (v__17.x+__30.x);
          __29.y = (v__17.y+__30.y);
          __29.z = (v__17.z+__30.z);
          __29.w = (v__17.w+__30.w);
        __28.x = (silu_x.x*__29.x);
        __28.y = (silu_x.y*__29.y);
        __28.z = (silu_x.z*__29.z);
        __28.w = (silu_x.w*__29.w);
      *(float4*)(gate_local + (i_23 * 4)) = __28;
      if (((((((int)threadIdx.x) >> 6) * 48) + ((i_23 >> 2) * 16)) + (((int)threadIdx.x) & 15)) < group_size) {
        if (0 <= ((block_start >> 7) + ((((((int)threadIdx.x) >> 6) * 3) + (i_23 >> 2)) >> 3))) {
          if (((block_start >> 7) + ((((((int)threadIdx.x) >> 6) * 3) + (i_23 >> 2)) >> 3)) < 48) {
            uint2 __31;
            float4 __32;
              float4 v__18 = *(float4*)(up_local + (i_23 * 4));
              float4 v__19 = *(float4*)(gate_local + (i_23 * 4));
              __32.x = (v__18.x*v__19.x);
              __32.y = (v__18.y*v__19.y);
              __32.z = (v__18.z*v__19.z);
              __32.w = (v__18.w*v__19.w);
            ((half2*)(&__31))[0] = __float22half2_rn(((float2*)(&__32))[0]);
            ((half2*)(&__31))[1] = __float22half2_rn(((float2*)(&__32))[1]);
            *(uint2*)(up_logits + ((((((((((((((int64_t)block_start) >> (int64_t)7) * (int64_t)262144) + (((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)3) + (((int64_t)i_23) >> (int64_t)2)) >> (int64_t)3) * (int64_t)262144)) + (((int64_t)((int)blockIdx.x)) * (int64_t)16384)) + ((((int64_t)((int)blockIdx.y)) & (int64_t)1) * (int64_t)8192)) + (((((int64_t)i_23) & (int64_t)3) >> (int64_t)1) * (int64_t)4096)) + (((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)3) + (((int64_t)i_23) >> (int64_t)2)) & (int64_t)1) * (int64_t)2048)) + ((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)3) + (((int64_t)i_23) >> (int64_t)2)) & (int64_t)7) >> (int64_t)1) * (int64_t)512)) + ((((int64_t)i_23) & (int64_t)1) * (int64_t)256)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)5) * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)8)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)31) >> (int64_t)4) * (int64_t)4))) = __31;
          }
        }
      }
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_4(const half_t* __restrict__ down, const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const float* __restrict__ routed_weights, const half_t* __restrict__ up_logits) {
  float out_long[96];
  extern __shared__ __align__(1024) half_t down_shared[];
  float routed_long[3];
  float out_local_0[64];
  float out_local_1[64];
  half_t up_logits_shared[32];
  float routed_weight_local[2];
  half_t up_long[48];
  half_t down_long_local[64];
  half_t output_local_cast[4];
  half_t up_logits_prefetch[32];
  half_t down_local[64];
  half_t output_local_cast_1[4];
  half_t output_local_cast_2[4];
  int expert_id = group_idx_for_bx[((int)blockIdx.y)];
  int group_size = group_sizes[expert_id];
  int raw_start = group_offsets[expert_id];
  int padded_start = group_padded_offsets[expert_id];
  if (128 < group_size) {
    #pragma unroll
    for (int i = 0; i < 24; ++i) {
      float broadcast_var = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(out_long + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
    }
    for (int long_k = 0; long_k < 32; ++long_k) {
      #pragma unroll
      for (int i_1 = 0; i_1 < 6; ++i_1) {
        if (((((((int)threadIdx.x) >> 6) * 48) + ((i_1 % 3) * 16)) + (((int)threadIdx.x) & 15)) < group_size) {
          half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
          uint4 condval;
          if (((0 <= ((padded_start >> 7) + ((((((int)threadIdx.x) >> 6) * 3) + (i_1 % 3)) >> 3))) && (((padded_start >> 7) + ((((((int)threadIdx.x) >> 6) * 3) + (i_1 % 3)) >> 3)) < 48))) {
            condval = *(uint4*)(up_logits + ((((((((((int64_t)padded_start) >> (int64_t)7) * (int64_t)262144) + (((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)3) + (((int64_t)i_1) % (int64_t)3)) >> (int64_t)3) * (int64_t)262144)) + (((int64_t)long_k) * (int64_t)8192)) + ((((int64_t)i_1) / (int64_t)3) * (int64_t)4096)) + (((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)3) + (((int64_t)i_1) % (int64_t)3)) & (int64_t)1) * (int64_t)2048)) + ((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)3) + (((int64_t)i_1) % (int64_t)3)) & (int64_t)7) >> (int64_t)1) * (int64_t)512)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)63) * (int64_t)8)));
          } else {
            condval = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
          }
          *(uint4*)(up_long + (i_1 * 8)) = condval;
        } else {
          half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
          *(uint4*)(up_long + (i_1 * 8)) = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
        }
      }
      #pragma unroll
      for (int i_2 = 0; i_2 < 4; ++i_2) {
        half_t broadcast_var_3 = half_t(0x0p+0f/*0.000000e+00*/);
        uint4 condval_1;
        if ((((((((0 - padded_start) >> 7) + ((int)blockIdx.y)) >> 1) + ((int)blockIdx.x)) < 28) && (0 <= (((((int)blockIdx.x) * 2) + ((0 - padded_start) >> 7)) + ((int)blockIdx.y))))) {
          condval_1 = *(uint4*)(down + ((((((((((int64_t)expert_id) * (int64_t)14680064) + (((int64_t)((int)blockIdx.x)) * (int64_t)524288)) + ((((int64_t)0 - ((int64_t)padded_start)) >> (int64_t)7) * (int64_t)262144)) + (((int64_t)((int)blockIdx.y)) * (int64_t)262144)) + (((int64_t)i_2) * (int64_t)65536)) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)3) * (int64_t)2048)) + (((int64_t)long_k) * (int64_t)64)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)7) * (int64_t)8)));
        } else {
          condval_1 = make_uint4(__pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3), __pack_half2(broadcast_var_3, broadcast_var_3));
        }
        *(uint4*)(down_shared + (((((i_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = condval_1;
      }
      __syncthreads();
      for (int ki = 0; ki < 2; ++ki) {
        for (int j = 0; j < 8; ++j) {
          *(uint4*)(down_long_local + (j * 8)) = *(uint4*)(down_shared + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
        }
        for (int kp = 0; kp < 2; ++kp) {
          for (int i_3 = 0; i_3 < 3; ++i_3) {
            for (int j_1 = 0; j_1 < 8; ++j_1) {
              {
      *(((float32x4*)out_long) + ((i_3 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_long_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)up_long) + (((ki * 6) + (i_3 * 2)) + kp)),
                    *(((float32x4*)out_long) + ((i_3 * 8) + j_1)));
    };
            }
          }
        }
      }
      if (long_k < 31) {
        __syncthreads();
      }
    }
    for (int long_slot = 0; long_slot < 3; ++long_slot) {
      routed_long[long_slot] = 0x0p+0f/*0.000000e+00*/;
      if (((((((int)threadIdx.x) >> 6) * 48) + (long_slot * 16)) + (((int)threadIdx.x) & 15)) < group_size) {
        float condval_2;
        if (((0 <= (((((((int)threadIdx.x) >> 6) * 48) + (long_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15))) && ((((((((int)threadIdx.x) >> 6) * 48) + (long_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) < 4544))) {
          condval_2 = routed_weights[(((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)48) + (((int64_t)long_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15))];
        } else {
          condval_2 = 0x0p+0f/*0.000000e+00*/;
        }
        routed_long[long_slot] = condval_2;
      }
    }
    #pragma unroll
    for (int i_4 = 0; i_4 < 24; ++i_4) {
      if (((((((int)threadIdx.x) >> 6) * 48) + ((i_4 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < group_size) {
        uint2 __1;
        float4 __2;
          float4 v_ = *(float4*)(out_long + (i_4 * 4));
          float4 v__1 = make_float4(routed_long[(i_4 >> 3)], routed_long[(i_4 >> 3)], routed_long[(i_4 >> 3)], routed_long[(i_4 >> 3)]);
          __2.x = (v_.x*v__1.x);
          __2.y = (v_.y*v__1.y);
          __2.z = (v_.z*v__1.z);
          __2.w = (v_.w*v__1.w);
        ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
        ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
        *(uint2*)(output_local_cast + 0) = __1;
      } else {
        half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
        *(uint2*)(output_local_cast + 0) = make_uint2(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
      }
      if (0 <= (((((int)blockIdx.x) * 2) + ((0 - padded_start) >> 7)) + ((int)blockIdx.y))) {
        if ((((((0 - padded_start) >> 7) + ((int)blockIdx.y)) >> 1) + ((int)blockIdx.x)) < 28) {
          if (0 <= (((((((int)threadIdx.x) >> 6) * 48) + ((i_4 >> 3) * 16)) + padded_start) + (((int)threadIdx.x) & 15))) {
            if ((((((((int)threadIdx.x) >> 6) * 48) + ((i_4 >> 3) * 16)) + padded_start) + (((int)threadIdx.x) & 15)) < 6144) {
              *(uint2*)(output + ((((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)344064) + ((((int64_t)i_4) >> (int64_t)3) * (int64_t)114688)) + (((int64_t)padded_start) * (int64_t)7168)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)256)) + ((((int64_t)0 - ((int64_t)padded_start)) >> (int64_t)7) * (int64_t)128)) + (((int64_t)((int)blockIdx.y)) * (int64_t)128)) + ((((int64_t)i_4) & (int64_t)7) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4))) = *(uint2*)(output_local_cast + 0);
            }
          }
        }
      }
    }
    if (0 <= (((((int)blockIdx.x) * 2) + ((0 - padded_start) >> 7)) + ((int)blockIdx.y))) {
      #pragma unroll
      for (int i_5 = 0; i_5 < 4; ++i_5) {
        if ((((((0 - padded_start) >> 7) + ((int)blockIdx.y)) >> 1) + ((int)blockIdx.x)) < 28) {
          if (-192 <= (((i_5 * 16) + (((int)threadIdx.x) >> 4)) + padded_start)) {
            if (((((((int)threadIdx.x) >> 4) + padded_start) >> 4) + i_5) < 372) {
              half_t broadcast_var_5 = half_t(0x0p+0f/*0.000000e+00*/);
              *(uint4*)(output + ((((((((((int64_t)i_5) * (int64_t)114688) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)4) * (int64_t)7168)) + (((int64_t)padded_start) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)256)) + ((((int64_t)0 - ((int64_t)padded_start)) >> (int64_t)7) * (int64_t)128)) + (((int64_t)((int)blockIdx.y)) * (int64_t)128)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)8)) + (int64_t)1376256)) = make_uint4(__pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5), __pack_half2(broadcast_var_5, broadcast_var_5));
            }
          }
        }
      }
    }
  } else {
    #pragma unroll
    for (int i_6 = 0; i_6 < 16; ++i_6) {
      float broadcast_var_6 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(out_local_0 + (i_6 * 4)) = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
    }
    #pragma unroll
    for (int i_7 = 0; i_7 < 16; ++i_7) {
      float broadcast_var_7 = 0x0p+0f/*0.000000e+00*/;
      *(float4*)(out_local_1 + (i_7 * 4)) = make_float4(broadcast_var_7, broadcast_var_7, broadcast_var_7, broadcast_var_7);
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
        for (int i_8 = 0; i_8 < 4; ++i_8) {
          *(uint4*)(down_shared + ((((((producer_stage * 8192) + (i_8 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(down + (((((((expert_id * 14680064) + (((int)blockIdx.x) * 524288)) + (producer_stage * 262144)) + (i_8 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)));
        }
      }
      __syncthreads();
      if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
        for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
          for (int j_2 = 0; j_2 < 8; ++j_2) {
            *(uint4*)(down_local + (j_2 * 8)) = *(uint4*)(down_shared + (((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
          }
          for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
            for (int i_9 = 0; i_9 < 2; ++i_9) {
              for (int j_3 = 0; j_3 < 8; ++j_3) {
                {
      *(((float32x4*)out_local_0) + ((i_9 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)up_logits_shared) + (((ki_1 * 4) + (i_9 * 2)) + kp_1)),
                    *(((float32x4*)out_local_0) + ((i_9 * 8) + j_3)));
    };
              }
            }
          }
          for (int j_4 = 0; j_4 < 8; ++j_4) {
            *(uint4*)(down_local + (j_4 * 8)) = *(uint4*)(down_shared + ((((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
          }
          for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
            for (int i_10 = 0; i_10 < 2; ++i_10) {
              for (int j_5 = 0; j_5 < 8; ++j_5) {
                {
      *(((float32x4*)out_local_1) + ((i_10 * 8) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)up_logits_shared) + (((ki_1 * 4) + (i_10 * 2)) + kp_2)),
                    *(((float32x4*)out_local_1) + ((i_10 * 8) + j_5)));
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
        for (int i_11 = 0; i_11 < 4; ++i_11) {
          *(uint4*)(down_shared + ((((((producer_stage_1 * 8192) + (i_11 * 2048)) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))) = *(uint4*)(down + ((((((((expert_id * 14680064) + (((int)blockIdx.x) * 524288)) + (producer_stage_1 * 262144)) + (i_11 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k_pair * 128)) + ((((int)threadIdx.x) & 7) * 8)) + 64));
        }
      }
      __syncthreads();
      if (((((int)threadIdx.x) >> 6) * 32) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
        for (int ki_2 = 0; ki_2 < 2; ++ki_2) {
          for (int j_6 = 0; j_6 < 8; ++j_6) {
            *(uint4*)(down_local + (j_6 * 8)) = *(uint4*)(down_shared + (((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_2) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
          }
          for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
            for (int i_12 = 0; i_12 < 2; ++i_12) {
              for (int j_7 = 0; j_7 < 8; ++j_7) {
                {
      *(((float32x4*)out_local_0) + ((i_12 * 8) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_2 * 4) + (i_12 * 2)) + kp_3)),
                    *(((float32x4*)out_local_0) + ((i_12 * 8) + j_7)));
    };
              }
            }
          }
          for (int j_8 = 0; j_8 < 8; ++j_8) {
            *(uint4*)(down_local + (j_8 * 8)) = *(uint4*)(down_shared + ((((((j_8 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_2) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
          }
          for (int kp_4 = 0; kp_4 < 2; ++kp_4) {
            for (int i_13 = 0; i_13 < 2; ++i_13) {
              for (int j_9 = 0; j_9 < 8; ++j_9) {
                {
      *(((float32x4*)out_local_1) + ((i_13 * 8) + j_9)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_local) + ((j_9 * 2) + kp_4)),
                    *(((float16x4*)up_logits_prefetch) + (((ki_2 * 4) + (i_13 * 2)) + kp_4)),
                    *(((float32x4*)out_local_1) + ((i_13 * 8) + j_9)));
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
        float condval_3;
        if (((0 <= ((((((((int)blockIdx.y) * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start)) && (((((((((int)blockIdx.y) * 128) + ((((int)threadIdx.x) >> 6) * 32)) + (row_slot * 16)) + raw_start) + (((int)threadIdx.x) & 15)) - padded_start) < 4544))) {
          condval_3 = routed_weights[((((((((int64_t)((int)blockIdx.y)) * (int64_t)128) + ((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32)) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)raw_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15)) - ((int64_t)padded_start))];
        } else {
          condval_3 = 0x0p+0f/*0.000000e+00*/;
        }
        routed_weight_local[row_slot] = condval_3;
      }
    }
    #pragma unroll
    for (int i_14 = 0; i_14 < 16; ++i_14) {
      if (((((((int)threadIdx.x) >> 6) * 32) + ((i_14 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
        uint2 __3;
        float4 __4;
          float4 v__2 = *(float4*)(out_local_0 + (i_14 * 4));
          float4 v__3 = make_float4(routed_weight_local[(i_14 >> 3)], routed_weight_local[(i_14 >> 3)], routed_weight_local[(i_14 >> 3)], routed_weight_local[(i_14 >> 3)]);
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
      *(uint2*)(output + (((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_14 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (((int)blockIdx.x) * 256)) + ((i_14 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4))) = *(uint2*)(output_local_cast_1 + 0);
    }
    #pragma unroll
    for (int i_15 = 0; i_15 < 16; ++i_15) {
      if (((((((int)threadIdx.x) >> 6) * 32) + ((i_15 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < ((group_size + padded_start) - (((int)blockIdx.y) * 128))) {
        uint2 __5;
        float4 __6;
          float4 v__4 = *(float4*)(out_local_1 + (i_15 * 4));
          float4 v__5 = make_float4(routed_weight_local[(i_15 >> 3)], routed_weight_local[(i_15 >> 3)], routed_weight_local[(i_15 >> 3)], routed_weight_local[(i_15 >> 3)]);
          __6.x = (v__4.x*v__5.x);
          __6.y = (v__4.y*v__5.y);
          __6.z = (v__4.z*v__5.z);
          __6.w = (v__4.w*v__5.w);
        ((half2*)(&__5))[0] = __float22half2_rn(((float2*)(&__6))[0]);
        ((half2*)(&__5))[1] = __float22half2_rn(((float2*)(&__6))[1]);
        *(uint2*)(output_local_cast_2 + 0) = __5;
      } else {
        half_t broadcast_var_9 = half_t(0x0p+0f/*0.000000e+00*/);
        *(uint2*)(output_local_cast_2 + 0) = make_uint2(__pack_half2(broadcast_var_9, broadcast_var_9), __pack_half2(broadcast_var_9, broadcast_var_9));
      }
      *(uint2*)(output + ((((((((((int)blockIdx.y) * 917504) + ((((int)threadIdx.x) >> 6) * 229376)) + ((i_15 >> 3) * 114688)) + ((((int)threadIdx.x) & 15) * 7168)) + (((int)blockIdx.x) * 256)) + ((i_15 & 7) * 16)) + (((((int)threadIdx.x) & 63) >> 4) * 4)) + 128)) = *(uint2*)(output_local_cast_2 + 0);
    }
  }
}

