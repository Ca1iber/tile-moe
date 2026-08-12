#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void main_kernel(const half_t* __restrict__ A, const half_t* __restrict__ B, half_t* __restrict__ OA, half_t* __restrict__ OB);
extern "C" __global__ void __launch_bounds__(256, 1) main_kernel(const half_t* __restrict__ A, const half_t* __restrict__ B, half_t* __restrict__ OA, half_t* __restrict__ OB) {
  extern __shared__ __align__(1024) uchar buf_dyn_shmem[];
  b128vectype bar_a[1];
  b128vectype bar_b[1];
  #pragma unroll
  for (int i = 0; i < 8; ++i) {
    bar_a[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((((((int)threadIdx.x) & 63) >> 3) * 2048) + (i * 256)) + ((((int)threadIdx.x) >> 6) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (i & 1)) & 1) * 32)) + ((((((int)threadIdx.x) >> 7) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 127) >> 6) + (((int)threadIdx.x) & 1)) & 1) * 8))])), (void* __restrict__)(&(A[((i * 2048) + (((int)threadIdx.x) * 8))])));
  }
  bar_b[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 16384)])), (void* __restrict__)(&(B[(((int)threadIdx.x) * 8)])));
  barrier_arrive_and_wait(bar_a[0]);
  barrier_arrive_and_wait(bar_b[0]);
  __syncthreads();
  #pragma unroll
  for (int i_1 = 0; i_1 < 8; ++i_1) {
    *(uint4*)(OA + ((i_1 * 2048) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((((((int)threadIdx.x) & 63) >> 3) * 2048) + (i_1 * 256)) + ((((int)threadIdx.x) >> 6) * 64)) + (((((((int)threadIdx.x) & 7) >> 2) + (i_1 & 1)) & 1) * 32)) + ((((((int)threadIdx.x) >> 7) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 127) >> 6) + (((int)threadIdx.x) & 1)) & 1) * 8)));
  }
  *(uint4*)(OB + (((int)threadIdx.x) * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)) + 16384));
}

