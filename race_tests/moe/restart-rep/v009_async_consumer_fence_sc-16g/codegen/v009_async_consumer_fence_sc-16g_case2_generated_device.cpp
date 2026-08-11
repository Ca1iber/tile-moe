#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void kernel_kernel(const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ routed_expert_gate, const half_t* __restrict__ routed_expert_up, half_t* __restrict__ up_logits);
extern "C" __global__ void kernel_kernel_1(const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const half_t* __restrict__ routed_expert_down, const half_t* __restrict__ routed_expert_weights, const half_t* __restrict__ up_logits);
extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel(const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, const half_t* __restrict__ input, const half_t* __restrict__ routed_expert_gate, const half_t* __restrict__ routed_expert_up, half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float gate_logits_local[32];
  float up_logits_local[32];
  b128vectype step1_gate_barrier[1];
  b128vectype step1_up_barrier[1];
  half_t input_shared[32];
  half_t expert_weight_local[32];
  int cur_group_idx = group_idx_for_bx[((int)blockIdx.y)];
  int cur_group_size = group_sizes[cur_group_idx];
  int m_start = (((((int)blockIdx.y) * 128) + group_offsets[cur_group_idx]) - group_padded_offsets[cur_group_idx]);
  int actual_rows = max(0, min(128, ((cur_group_size + group_padded_offsets[cur_group_idx]) - (((int)blockIdx.y) * 128))));
  #pragma unroll
  for (int i = 0; i < 8; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(gate_logits_local + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 8; ++i_1) {
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(up_logits_local + (i_1 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
  }
  #pragma unroll
  for (int i_2 = 0; i_2 < 2; ++i_2) {
    step1_gate_barrier[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((i_2 * 2048) + (((int)threadIdx.x) * 8))])), (void* __restrict__)(&(routed_expert_gate[(((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 458752)) + (i_2 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + ((((int)threadIdx.x) & 7) * 8))])));
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 2; ++i_3) {
    step1_up_barrier[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[(((i_3 * 2048) + (((int)threadIdx.x) * 8)) + 4096)])), (void* __restrict__)(&(routed_expert_up[(((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 458752)) + (i_3 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + ((((int)threadIdx.x) & 7) * 8))])));
  }
  for (int k = 0; k < 112; ++k) {
    #pragma unroll
    for (int i_4 = 0; i_4 < 4; ++i_4) {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval;
      if ((((((((((int)threadIdx.x) >> 6) * 32) + ((i_4 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 4544) && (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_4 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15))))) {
        condval = *(uint4*)(input + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376) + ((((int64_t)i_4) & (int64_t)1) * (int64_t)114688)) + (((int64_t)m_start) * (int64_t)7168)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)k) * (int64_t)64)) + ((((int64_t)i_4) >> (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)));
      } else {
        condval = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
      }
      *(uint4*)(input_shared + (i_4 * 8)) = condval;
    }
    barrier_arrive_and_wait(step1_gate_barrier[0]);
    barrier_arrive_and_wait(step1_up_barrier[0]);
    __syncthreads();
    #pragma unroll
    for (int i_5 = 0; i_5 < 2; ++i_5) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_5 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_5 * 2048) + (((int)threadIdx.x) * 8)));
    }
    #pragma unroll
    for (int i_6 = 0; i_6 < 2; ++i_6) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_6 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((i_6 * 2048) + (((int)threadIdx.x) * 8)) + 4096));
    }
    __syncthreads();
    if (k < 111) {
      #pragma unroll
      for (int i_7 = 0; i_7 < 2; ++i_7) {
        step1_gate_barrier[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((i_7 * 2048) + (((int)threadIdx.x) * 8))])), (void* __restrict__)(&(routed_expert_gate[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 458752)) + (i_7 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k * 64)) + ((((int)threadIdx.x) & 7) * 8)) + 64)])));
      }
      #pragma unroll
      for (int i_8 = 0; i_8 < 2; ++i_8) {
        step1_up_barrier[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[(((i_8 * 2048) + (((int)threadIdx.x) * 8)) + 4096)])), (void* __restrict__)(&(routed_expert_up[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 458752)) + (i_8 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k * 64)) + ((((int)threadIdx.x) & 7) * 8)) + 64)])));
      }
    }
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 4; ++j) {
        *(uint4*)(expert_weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_9 = 0; i_9 < 2; ++i_9) {
          for (int j_1 = 0; j_1 < 4; ++j_1) {
            {
      *(((float32x4*)gate_logits_local) + ((i_9 * 4) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)expert_weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_9 * 2)) + kp)),
                    *(((float32x4*)gate_logits_local) + ((i_9 * 4) + j_1)));
    };
          }
        }
      }
      for (int j_2 = 0; j_2 < 4; ++j_2) {
        *(uint4*)(expert_weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288));
      }
      for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
        for (int i_10 = 0; i_10 < 2; ++i_10) {
          for (int j_3 = 0; j_3 < 4; ++j_3) {
            {
      *(((float32x4*)up_logits_local) + ((i_10 * 4) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)expert_weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_10 * 2)) + kp_1)),
                    *(((float32x4*)up_logits_local) + ((i_10 * 4) + j_3)));
    };
          }
        }
      }
    }
  }
  #pragma unroll
  for (int i_11 = 0; i_11 < 8; ++i_11) {
    float broadcast_var_3 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_4 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_5 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_6 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v_ = *(float4*)(gate_logits_local + (i_11 * 4));
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
    *(float4*)(gate_logits_local + (i_11 * 4)) = __1;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 2) * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      if (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 2) * 16)) + m_start) + (((int)threadIdx.x) & 15))) {
        if ((((((((int)threadIdx.x) >> 6) * 32) + ((i_11 >> 2) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 4544) {
          uint2 __7;
          float4 __8;
            float4 v__5 = *(float4*)(up_logits_local + (i_11 * 4));
            float4 v__6 = *(float4*)(gate_logits_local + (i_11 * 4));
            __8.x = (v__5.x*v__6.x);
            __8.y = (v__5.y*v__6.y);
            __8.z = (v__5.z*v__6.z);
            __8.w = (v__5.w*v__6.w);
          ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
          ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
          *(uint2*)(up_logits + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)65536) + ((((int64_t)i_11) >> (int64_t)2) * (int64_t)32768)) + (((int64_t)m_start) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2048)) + (((int64_t)((int)blockIdx.x)) * (int64_t)64)) + ((((int64_t)i_11) & (int64_t)3) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4))) = __7;
        }
      }
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const half_t* __restrict__ routed_expert_down, const half_t* __restrict__ routed_expert_weights, const half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float output_local[64];
  b128vectype step2_weight_barrier[1];
  half_t routed_weight_local[2];
  half_t up_logits_shared[32];
  half_t down_weight_local[64];
  half_t output_local_cast[4];
  int cur_group_idx = group_idx_for_bx[((int)blockIdx.y)];
  int cur_group_size = group_sizes[cur_group_idx];
  int m_start = (((((int)blockIdx.y) * 128) + group_offsets[cur_group_idx]) - group_padded_offsets[cur_group_idx]);
  int actual_rows = max(0, min(128, ((cur_group_size + group_padded_offsets[cur_group_idx]) - (((int)blockIdx.y) * 128))));
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_local + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 4; ++i_1) {
    step2_weight_barrier[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((i_1 * 2048) + (((int)threadIdx.x) * 8))])), (void* __restrict__)(&(routed_expert_down[(((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 262144)) + (i_1 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + ((((int)threadIdx.x) & 7) * 8))])));
  }
  for (int k = 0; k < 32; ++k) {
    #pragma unroll
    for (int i_2 = 0; i_2 < 4; ++i_2) {
      half_t broadcast_var_1 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval;
      if ((((((((((int)threadIdx.x) >> 6) * 32) + ((i_2 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 4544) && (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_2 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15))))) {
        condval = *(uint4*)(up_logits + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)65536) + ((((int64_t)i_2) & (int64_t)1) * (int64_t)32768)) + (((int64_t)m_start) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2048)) + (((int64_t)k) * (int64_t)64)) + ((((int64_t)i_2) >> (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)));
      } else {
        condval = make_uint4(__pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1), __pack_half2(broadcast_var_1, broadcast_var_1));
      }
      *(uint4*)(up_logits_shared + (i_2 * 8)) = condval;
    }
    barrier_arrive_and_wait(step2_weight_barrier[0]);
    __syncthreads();
    #pragma unroll
    for (int i_3 = 0; i_3 < 4; ++i_3) {
      *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((i_3 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_3 * 2048) + (((int)threadIdx.x) * 8)));
    }
    __syncthreads();
    if (k < 31) {
      #pragma unroll
      for (int i_4 = 0; i_4 < 4; ++i_4) {
        step2_weight_barrier[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((i_4 * 2048) + (((int)threadIdx.x) * 8))])), (void* __restrict__)(&(routed_expert_down[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 262144)) + (i_4 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k * 64)) + ((((int)threadIdx.x) & 7) * 8)) + 64)])));
      }
    }
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 8; ++j) {
        *(uint4*)(down_weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_5 = 0; i_5 < 2; ++i_5) {
          for (int j_1 = 0; j_1 < 8; ++j_1) {
            {
      *(((float32x4*)output_local) + ((i_5 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)up_logits_shared) + (((ki * 4) + (i_5 * 2)) + kp)),
                    *(((float32x4*)output_local) + ((i_5 * 8) + j_1)));
    };
          }
        }
      }
    }
  }
  for (int row_slot = 0; row_slot < 2; ++row_slot) {
    routed_weight_local[row_slot] = half_t(0x0p+0f/*0.000000e+00*/);
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      half_t condval_1;
      if (((0 <= (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + m_start) + (((int)threadIdx.x) & 15))) && ((((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 4544))) {
        condval_1 = routed_expert_weights[(((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)m_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15))];
      } else {
        condval_1 = half_t(0x0p+0f/*0.000000e+00*/);
      }
      routed_weight_local[row_slot] = condval_1;
    }
  }
  #pragma unroll
  for (int i_6 = 0; i_6 < 16; ++i_6) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      uint2 __1;
      float4 __2;
        float4 v_ = *(float4*)(output_local + (i_6 * 4));
        float4 v__1 = make_float4(((float)routed_weight_local[(i_6 >> 3)]), ((float)routed_weight_local[(i_6 >> 3)]), ((float)routed_weight_local[(i_6 >> 3)]), ((float)routed_weight_local[(i_6 >> 3)]));
        __2.x = (v_.x*v__1.x);
        __2.y = (v_.y*v__1.y);
        __2.z = (v_.z*v__1.z);
        __2.w = (v_.w*v__1.w);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
      *(uint2*)(output_local_cast + 0) = __1;
      if (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 3) * 16)) + m_start) + (((int)threadIdx.x) & 15))) {
        if ((((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 3) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 4544) {
          *(uint2*)(output + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376) + ((((int64_t)i_6) >> (int64_t)3) * (int64_t)114688)) + (((int64_t)m_start) * (int64_t)7168)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)128)) + ((((int64_t)i_6) & (int64_t)7) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4))) = *(uint2*)(output_local_cast + 0);
        }
      }
    }
  }
}

