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
  b128vectype bar[1];
  #pragma unroll
  for (int i = 0; i < 8; ++i) {
    bar[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((i * 2048) + (((int)threadIdx.x) * 8))])), (void* __restrict__)(&(A[((i * 2048) + (((int)threadIdx.x) * 8))])));
  }
  bar[0] = memcpy_async<16>((void* __restrict__)(&(((half_t*)buf_dyn_shmem)[((((int)threadIdx.x) * 8) + 16384)])), (void* __restrict__)(&(B[(((int)threadIdx.x) * 8)])));
  barrier_arrive_and_wait(bar[0]);
  #pragma unroll
  for (int i_1 = 0; i_1 < 8; ++i_1) {
    *(uint4*)(OA + ((i_1 * 2048) + (((int)threadIdx.x) * 8))) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((i_1 * 2048) + (((int)threadIdx.x) * 8)));
  }
  *(uint4*)(OB + (((int)threadIdx.x) * 8)) = *(uint4*)(((half_t*)buf_dyn_shmem) + ((((int)threadIdx.x) * 8) + 16384));
}

