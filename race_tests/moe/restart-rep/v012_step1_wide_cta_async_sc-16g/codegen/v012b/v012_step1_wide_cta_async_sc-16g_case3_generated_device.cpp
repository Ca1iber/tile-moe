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
  float gate_logits_local_0[32];
  float gate_logits_local_1[32];
  float up_logits_local_0[32];
  float up_logits_local_1[32];
  b128vectype step1_gate_barrier_0[1];
  b128vectype step1_gate_barrier_1[1];
  half_t input_shared[32];
  half_t expert_weight_local[32];
  int cur_group_idx = group_idx_for_bx[((int)blockIdx.y)];
  int cur_group_size = group_sizes[cur_group_idx];
  int m_start = (((((int)blockIdx.y) * 128) + group_offsets[cur_group_idx]) - group_padded_offsets[cur_group_idx]);
  int actual_rows = max(0, min(128, ((cur_group_size + group_padded_offsets[cur_group_idx]) - (((int)blockIdx.y) * 128))));
  #pragma unroll
  for (int i = 0; i < 8; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(gate_logits_local_0 + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 8; ++i_1) {
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(gate_logits_local_1 + (i_1 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
  }
  #pragma unroll
  for (int i_2 = 0; i_2 < 8; ++i_2) {
    float broadcast_var_2 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(up_logits_local_0 + (i_2 * 4)) = make_float4(broadcast_var_2, broadcast_var_2, broadcast_var_2, broadcast_var_2);
  }
  #pragma unroll
  for (int i_3 = 0; i_3 < 8; ++i_3) {
    float broadcast_var_3 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(up_logits_local_1 + (i_3 * 4)) = make_float4(broadcast_var_3, broadcast_var_3, broadcast_var_3, broadcast_var_3);
  }
  for (int chunk = 0; chunk < 2; ++chunk) {
    step1_gate_barrier_0[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[(((((chunk * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))])), (void* __restrict__)(&(routed_expert_gate[(((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8))])));
    step1_gate_barrier_0[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)])), (void* __restrict__)(&(routed_expert_up[(((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8))])));
    step1_gate_barrier_1[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)])), (void* __restrict__)(&(routed_expert_gate[((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 458752)])));
    step1_gate_barrier_1[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)])), (void* __restrict__)(&(routed_expert_up[((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 458752)])));
  }
  for (int k = 0; k < 112; ++k) {
    #pragma unroll
    for (int i_4 = 0; i_4 < 4; ++i_4) {
      half_t broadcast_var_4 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval;
      if ((((((((((int)threadIdx.x) >> 6) * 32) + ((i_4 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088) && (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_4 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15))))) {
        condval = *(uint4*)(input + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376) + ((((int64_t)i_4) & (int64_t)1) * (int64_t)114688)) + (((int64_t)m_start) * (int64_t)7168)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)k) * (int64_t)64)) + ((((int64_t)i_4) >> (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)));
      } else {
        condval = make_uint4(__pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4), __pack_half2(broadcast_var_4, broadcast_var_4));
      }
      *(uint4*)(input_shared + (i_4 * 8)) = condval;
    }
    barrier_arrive_and_wait(step1_gate_barrier_0[0]);
    __syncthreads();
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 4; ++j) {
        *(uint4*)(expert_weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_5 = 0; i_5 < 2; ++i_5) {
          for (int j_1 = 0; j_1 < 4; ++j_1) {
            {
      *(((float32x4*)gate_logits_local_0) + ((i_5 * 4) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)expert_weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_5 * 2)) + kp)),
                    *(((float32x4*)gate_logits_local_0) + ((i_5 * 4) + j_1)));
    };
          }
        }
      }
      for (int j_2 = 0; j_2 < 4; ++j_2) {
        *(uint4*)(expert_weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
        for (int i_6 = 0; i_6 < 2; ++i_6) {
          for (int j_3 = 0; j_3 < 4; ++j_3) {
            {
      *(((float32x4*)up_logits_local_0) + ((i_6 * 4) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)expert_weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)input_shared) + (((ki * 4) + (i_6 * 2)) + kp_1)),
                    *(((float32x4*)up_logits_local_0) + ((i_6 * 4) + j_3)));
    };
          }
        }
      }
    }
    __syncthreads();
    if (k < 111) {
      for (int chunk_1 = 0; chunk_1 < 2; ++chunk_1) {
        step1_gate_barrier_0[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[(((((chunk_1 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))])), (void* __restrict__)(&(routed_expert_gate[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk_1 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 64)])));
        step1_gate_barrier_0[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk_1 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)])), (void* __restrict__)(&(routed_expert_up[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk_1 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 64)])));
      }
    }
    barrier_arrive_and_wait(step1_gate_barrier_1[0]);
    __syncthreads();
    for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
      for (int j_4 = 0; j_4 < 4; ++j_4) {
        *(uint4*)(expert_weight_local + (j_4 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_4 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096));
      }
      for (int kp_2 = 0; kp_2 < 2; ++kp_2) {
        for (int i_7 = 0; i_7 < 2; ++i_7) {
          for (int j_5 = 0; j_5 < 4; ++j_5) {
            {
      *(((float32x4*)gate_logits_local_1) + ((i_7 * 4) + j_5)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)expert_weight_local) + ((j_5 * 2) + kp_2)),
                    *(((float16x4*)input_shared) + (((ki_1 * 4) + (i_7 * 2)) + kp_2)),
                    *(((float32x4*)gate_logits_local_1) + ((i_7 * 4) + j_5)));
    };
          }
        }
      }
      for (int j_6 = 0; j_6 < 4; ++j_6) {
        *(uint4*)(expert_weight_local + (j_6 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_6 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288));
      }
      for (int kp_3 = 0; kp_3 < 2; ++kp_3) {
        for (int i_8 = 0; i_8 < 2; ++i_8) {
          for (int j_7 = 0; j_7 < 4; ++j_7) {
            {
      *(((float32x4*)up_logits_local_1) + ((i_8 * 4) + j_7)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)expert_weight_local) + ((j_7 * 2) + kp_3)),
                    *(((float16x4*)input_shared) + (((ki_1 * 4) + (i_8 * 2)) + kp_3)),
                    *(((float32x4*)up_logits_local_1) + ((i_8 * 4) + j_7)));
    };
          }
        }
      }
    }
    __syncthreads();
    if (k < 111) {
      for (int chunk_2 = 0; chunk_2 < 2; ++chunk_2) {
        step1_gate_barrier_1[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 4096)])), (void* __restrict__)(&(routed_expert_gate[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk_2 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 458816)])));
        step1_gate_barrier_1[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 12288)])), (void* __restrict__)(&(routed_expert_up[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 917504)) + (chunk_2 * 229376)) + ((((int)threadIdx.x) >> 3) * 7168)) + (k * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 458816)])));
      }
    }
  }
  #pragma unroll
  for (int i_9 = 0; i_9 < 8; ++i_9) {
    float broadcast_var_5 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_6 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_7 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_8 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __1;
      float4 v_ = *(float4*)(gate_logits_local_0 + (i_9 * 4));
      float4 __2;
        float4 v__1 = make_float4(broadcast_var_5, broadcast_var_5, broadcast_var_5, broadcast_var_5);
        float4 __3;
          float4 v__2 = make_float4(broadcast_var_6, broadcast_var_6, broadcast_var_6, broadcast_var_6);
          float4 __4;
          float4 __5;
            float4 __6;
              float4 v__3 = make_float4(broadcast_var_7, broadcast_var_7, broadcast_var_7, broadcast_var_7);
              __6.x = (v_.x*v__3.x);
              __6.y = (v_.y*v__3.y);
              __6.z = (v_.z*v__3.z);
              __6.w = (v_.w*v__3.w);
            float4 v__4 = make_float4(broadcast_var_8, broadcast_var_8, broadcast_var_8, broadcast_var_8);
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
    *(float4*)(gate_logits_local_0 + (i_9 * 4)) = __1;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_9 >> 2) * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      if (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_9 >> 2) * 16)) + m_start) + (((int)threadIdx.x) & 15))) {
        if ((((((((int)threadIdx.x) >> 6) * 32) + ((i_9 >> 2) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088) {
          uint2 __7;
          float4 __8;
            float4 v__5 = *(float4*)(up_logits_local_0 + (i_9 * 4));
            float4 v__6 = *(float4*)(gate_logits_local_0 + (i_9 * 4));
            __8.x = (v__5.x*v__6.x);
            __8.y = (v__5.y*v__6.y);
            __8.z = (v__5.z*v__6.z);
            __8.w = (v__5.w*v__6.w);
          ((half2*)(&__7))[0] = __float22half2_rn(((float2*)(&__8))[0]);
          ((half2*)(&__7))[1] = __float22half2_rn(((float2*)(&__8))[1]);
          *(uint2*)(up_logits + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)65536) + ((((int64_t)i_9) >> (int64_t)2) * (int64_t)32768)) + (((int64_t)m_start) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2048)) + (((int64_t)((int)blockIdx.x)) * (int64_t)128)) + ((((int64_t)i_9) & (int64_t)3) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4))) = __7;
        }
      }
    }
  }
  #pragma unroll
  for (int i_10 = 0; i_10 < 8; ++i_10) {
    float broadcast_var_9 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_10 = 0x1p+0f/*1.000000e+00*/;
    float broadcast_var_11 = -0x1p+0f/*-1.000000e+00*/;
    float broadcast_var_12 = 0x1.7154764ee6c2fp+0f/*1.442695e+00*/;
    float4 __9;
      float4 v__7 = *(float4*)(gate_logits_local_1 + (i_10 * 4));
      float4 __10;
        float4 v__8 = make_float4(broadcast_var_9, broadcast_var_9, broadcast_var_9, broadcast_var_9);
        float4 __11;
          float4 v__9 = make_float4(broadcast_var_10, broadcast_var_10, broadcast_var_10, broadcast_var_10);
          float4 __12;
          float4 __13;
            float4 __14;
              float4 v__10 = make_float4(broadcast_var_11, broadcast_var_11, broadcast_var_11, broadcast_var_11);
              __14.x = (v__7.x*v__10.x);
              __14.y = (v__7.y*v__10.y);
              __14.z = (v__7.z*v__10.z);
              __14.w = (v__7.w*v__10.w);
            float4 v__11 = make_float4(broadcast_var_12, broadcast_var_12, broadcast_var_12, broadcast_var_12);
            __13.x = (__14.x*v__11.x);
            __13.y = (__14.y*v__11.y);
            __13.z = (__14.z*v__11.z);
            __13.w = (__14.w*v__11.w);
          __12.x = exp2f(__13.x);
          __12.y = exp2f(__13.y);
          __12.z = exp2f(__13.z);
          __12.w = exp2f(__13.w);
          __11.x = (v__9.x+__12.x);
          __11.y = (v__9.y+__12.y);
          __11.z = (v__9.z+__12.z);
          __11.w = (v__9.w+__12.w);
        __10.x = (v__8.x/__11.x);
        __10.y = (v__8.y/__11.y);
        __10.z = (v__8.z/__11.z);
        __10.w = (v__8.w/__11.w);
      __9.x = (v__7.x*__10.x);
      __9.y = (v__7.y*__10.y);
      __9.z = (v__7.z*__10.z);
      __9.w = (v__7.w*__10.w);
    *(float4*)(gate_logits_local_1 + (i_10 * 4)) = __9;
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_10 >> 2) * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      if (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_10 >> 2) * 16)) + m_start) + (((int)threadIdx.x) & 15))) {
        if ((((((((int)threadIdx.x) >> 6) * 32) + ((i_10 >> 2) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088) {
          uint2 __15;
          float4 __16;
            float4 v__12 = *(float4*)(up_logits_local_1 + (i_10 * 4));
            float4 v__13 = *(float4*)(gate_logits_local_1 + (i_10 * 4));
            __16.x = (v__12.x*v__13.x);
            __16.y = (v__12.y*v__13.y);
            __16.z = (v__12.z*v__13.z);
            __16.w = (v__12.w*v__13.w);
          ((half2*)(&__15))[0] = __float22half2_rn(((float2*)(&__16))[0]);
          ((half2*)(&__15))[1] = __float22half2_rn(((float2*)(&__16))[1]);
          *(uint2*)(up_logits + (((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)65536) + ((((int64_t)i_10) >> (int64_t)2) * (int64_t)32768)) + (((int64_t)m_start) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2048)) + (((int64_t)((int)blockIdx.x)) * (int64_t)128)) + ((((int64_t)i_10) & (int64_t)3) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4)) + (int64_t)64)) = __15;
        }
      }
    }
  }
}

extern "C" __global__ void __launch_bounds__(256, 1) kernel_kernel_1(const int* __restrict__ group_idx_for_bx, const int* __restrict__ group_offsets, const int* __restrict__ group_padded_offsets, const int* __restrict__ group_sizes, half_t* __restrict__ output, const half_t* __restrict__ routed_expert_down, const half_t* __restrict__ routed_expert_weights, const half_t* __restrict__ up_logits) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  float output_local_0[64];
  float output_local_1[64];
  b128vectype step2_weight_barrier_0[1];
  b128vectype step2_weight_barrier_1[1];
  half_t routed_weight_local[2];
  half_t up_logits_shared[32];
  half_t down_weight_local[64];
  half_t output_local_cast[4];
  half_t output_local_cast_1[4];
  int cur_group_idx = group_idx_for_bx[((int)blockIdx.y)];
  int cur_group_size = group_sizes[cur_group_idx];
  int m_start = (((((int)blockIdx.y) * 128) + group_offsets[cur_group_idx]) - group_padded_offsets[cur_group_idx]);
  int actual_rows = max(0, min(128, ((cur_group_size + group_padded_offsets[cur_group_idx]) - (((int)blockIdx.y) * 128))));
  #pragma unroll
  for (int i = 0; i < 16; ++i) {
    float broadcast_var = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_local_0 + (i * 4)) = make_float4(broadcast_var, broadcast_var, broadcast_var, broadcast_var);
  }
  #pragma unroll
  for (int i_1 = 0; i_1 < 16; ++i_1) {
    float broadcast_var_1 = 0x0p+0f/*0.000000e+00*/;
    *(float4*)(output_local_1 + (i_1 * 4)) = make_float4(broadcast_var_1, broadcast_var_1, broadcast_var_1, broadcast_var_1);
  }
  for (int chunk = 0; chunk < 4; ++chunk) {
    step2_weight_barrier_0[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[(((((chunk * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))])), (void* __restrict__)(&(routed_expert_down[(((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 524288)) + (chunk * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8))])));
    step2_weight_barrier_1[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)])), (void* __restrict__)(&(routed_expert_down[((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 524288)) + (chunk * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 262144)])));
  }
  for (int k = 0; k < 32; ++k) {
    #pragma unroll
    for (int i_2 = 0; i_2 < 4; ++i_2) {
      half_t broadcast_var_2 = half_t(0x0p+0f/*0.000000e+00*/);
      uint4 condval;
      if ((((((((((int)threadIdx.x) >> 6) * 32) + ((i_2 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088) && (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_2 & 1) * 16)) + m_start) + (((int)threadIdx.x) & 15))))) {
        condval = *(uint4*)(up_logits + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)65536) + ((((int64_t)i_2) & (int64_t)1) * (int64_t)32768)) + (((int64_t)m_start) * (int64_t)2048)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)2048)) + (((int64_t)k) * (int64_t)64)) + ((((int64_t)i_2) >> (int64_t)1) * (int64_t)32)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)8)));
      } else {
        condval = make_uint4(__pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2), __pack_half2(broadcast_var_2, broadcast_var_2));
      }
      *(uint4*)(up_logits_shared + (i_2 * 8)) = condval;
    }
    barrier_arrive_and_wait(step2_weight_barrier_0[0]);
    __syncthreads();
    for (int ki = 0; ki < 2; ++ki) {
      for (int j = 0; j < 8; ++j) {
        *(uint4*)(down_weight_local + (j * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + (((((j * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)));
      }
      for (int kp = 0; kp < 2; ++kp) {
        for (int i_3 = 0; i_3 < 2; ++i_3) {
          for (int j_1 = 0; j_1 < 8; ++j_1) {
            {
      *(((float32x4*)output_local_0) + ((i_3 * 8) + j_1)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_weight_local) + ((j_1 * 2) + kp)),
                    *(((float16x4*)up_logits_shared) + (((ki * 4) + (i_3 * 2)) + kp)),
                    *(((float32x4*)output_local_0) + ((i_3 * 8) + j_1)));
    };
          }
        }
      }
    }
    __syncthreads();
    if (k < 31) {
      for (int chunk_1 = 0; chunk_1 < 4; ++chunk_1) {
        step2_weight_barrier_0[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[(((((chunk_1 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))])), (void* __restrict__)(&(routed_expert_down[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 524288)) + (chunk_1 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 64)])));
      }
    }
    barrier_arrive_and_wait(step2_weight_barrier_1[0]);
    __syncthreads();
    for (int ki_1 = 0; ki_1 < 2; ++ki_1) {
      for (int j_2 = 0; j_2 < 8; ++j_2) {
        *(uint4*)(down_weight_local + (j_2 * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((j_2 * 1024) + ((((int)threadIdx.x) & 15) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + ki_1) & 1) * 32)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 31) >> 4) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192));
      }
      for (int kp_1 = 0; kp_1 < 2; ++kp_1) {
        for (int i_4 = 0; i_4 < 2; ++i_4) {
          for (int j_3 = 0; j_3 < 8; ++j_3) {
            {
      *(((float32x4*)output_local_1) + ((i_4 * 8) + j_3)) = __builtin_mxc_mma_16x16x16f16(*(((float16x4*)down_weight_local) + ((j_3 * 2) + kp_1)),
                    *(((float16x4*)up_logits_shared) + (((ki_1 * 4) + (i_4 * 2)) + kp_1)),
                    *(((float32x4*)output_local_1) + ((i_4 * 8) + j_3)));
    };
          }
        }
      }
    }
    __syncthreads();
    if (k < 31) {
      for (int chunk_2 = 0; chunk_2 < 4; ++chunk_2) {
        step2_weight_barrier_1[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((chunk_2 * 2048) + ((((int)threadIdx.x) >> 3) * 64)) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 8192)])), (void* __restrict__)(&(routed_expert_down[(((((((cur_group_idx * 14680064) + (((int)blockIdx.x) * 524288)) + (chunk_2 * 65536)) + ((((int)threadIdx.x) >> 3) * 2048)) + (k * 64)) + (((((int)threadIdx.x) & 7) ^ ((((int)threadIdx.x) & 63) >> 3)) * 8)) + 262208)])));
      }
    }
  }
  for (int row_slot = 0; row_slot < 2; ++row_slot) {
    routed_weight_local[row_slot] = half_t(0x0p+0f/*0.000000e+00*/);
    if (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      half_t condval_1;
      if (((0 <= (((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + m_start) + (((int)threadIdx.x) & 15))) && ((((((((int)threadIdx.x) >> 6) * 32) + (row_slot * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088))) {
        condval_1 = routed_expert_weights[(((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)32) + (((int64_t)row_slot) * (int64_t)16)) + ((int64_t)m_start)) + (((int64_t)((int)threadIdx.x)) & (int64_t)15))];
      } else {
        condval_1 = half_t(0x0p+0f/*0.000000e+00*/);
      }
      routed_weight_local[row_slot] = condval_1;
    }
  }
  #pragma unroll
  for (int i_5 = 0; i_5 < 16; ++i_5) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_5 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      uint2 __1;
      float4 __2;
        float4 v_ = *(float4*)(output_local_0 + (i_5 * 4));
        float4 v__1 = make_float4(((float)routed_weight_local[(i_5 >> 3)]), ((float)routed_weight_local[(i_5 >> 3)]), ((float)routed_weight_local[(i_5 >> 3)]), ((float)routed_weight_local[(i_5 >> 3)]));
        __2.x = (v_.x*v__1.x);
        __2.y = (v_.y*v__1.y);
        __2.z = (v_.z*v__1.z);
        __2.w = (v_.w*v__1.w);
      ((half2*)(&__1))[0] = __float22half2_rn(((float2*)(&__2))[0]);
      ((half2*)(&__1))[1] = __float22half2_rn(((float2*)(&__2))[1]);
      *(uint2*)(output_local_cast + 0) = __1;
      if (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_5 >> 3) * 16)) + m_start) + (((int)threadIdx.x) & 15))) {
        if ((((((((int)threadIdx.x) >> 6) * 32) + ((i_5 >> 3) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088) {
          *(uint2*)(output + ((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376) + ((((int64_t)i_5) >> (int64_t)3) * (int64_t)114688)) + (((int64_t)m_start) * (int64_t)7168)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)256)) + ((((int64_t)i_5) & (int64_t)7) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4))) = *(uint2*)(output_local_cast + 0);
        }
      }
    }
  }
  #pragma unroll
  for (int i_6 = 0; i_6 < 16; ++i_6) {
    if (((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 3) * 16)) + (((int)threadIdx.x) & 15)) < actual_rows) {
      uint2 __3;
      float4 __4;
        float4 v__2 = *(float4*)(output_local_1 + (i_6 * 4));
        float4 v__3 = make_float4(((float)routed_weight_local[(i_6 >> 3)]), ((float)routed_weight_local[(i_6 >> 3)]), ((float)routed_weight_local[(i_6 >> 3)]), ((float)routed_weight_local[(i_6 >> 3)]));
        __4.x = (v__2.x*v__3.x);
        __4.y = (v__2.y*v__3.y);
        __4.z = (v__2.z*v__3.z);
        __4.w = (v__2.w*v__3.w);
      ((half2*)(&__3))[0] = __float22half2_rn(((float2*)(&__4))[0]);
      ((half2*)(&__3))[1] = __float22half2_rn(((float2*)(&__4))[1]);
      *(uint2*)(output_local_cast_1 + 0) = __3;
      if (0 <= (((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 3) * 16)) + m_start) + (((int)threadIdx.x) & 15))) {
        if ((((((((int)threadIdx.x) >> 6) * 32) + ((i_6 >> 3) * 16)) + m_start) + (((int)threadIdx.x) & 15)) < 9088) {
          *(uint2*)(output + (((((((((((int64_t)((int)threadIdx.x)) >> (int64_t)6) * (int64_t)229376) + ((((int64_t)i_6) >> (int64_t)3) * (int64_t)114688)) + (((int64_t)m_start) * (int64_t)7168)) + ((((int64_t)((int)threadIdx.x)) & (int64_t)15) * (int64_t)7168)) + (((int64_t)((int)blockIdx.x)) * (int64_t)256)) + ((((int64_t)i_6) & (int64_t)7) * (int64_t)16)) + (((((int64_t)((int)threadIdx.x)) & (int64_t)63) >> (int64_t)4) * (int64_t)4)) + (int64_t)128)) = *(uint2*)(output_local_cast_1 + 0);
        }
      }
    }
  }
}

