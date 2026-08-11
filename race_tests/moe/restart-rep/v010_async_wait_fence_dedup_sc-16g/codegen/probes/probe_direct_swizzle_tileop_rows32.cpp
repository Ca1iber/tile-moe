#include <tl_templates/maca/gemm.h>
#include <tl_templates/maca/copy.h>
#include <tl_templates/maca/reduce.h>
#include <tl_templates/maca/intrin.h>
#include <tl_templates/maca/atomic.h>
#include <tl_templates/maca/threadblock_swizzle.h>
#include <tl_templates/maca/debug.h>

extern "C" __global__ void copy_kernel_kernel(const half_t* __restrict__ A, half_t* __restrict__ B);
extern "C" __global__ void __launch_bounds__(256, 1) copy_kernel_kernel(const half_t* __restrict__ A, half_t* __restrict__ B) {
  extern __shared__ __align__(1024) half_t shared[];
  b128vectype bar[1];
  bar[0] = memcpy_async<16>((void* __restrict__)(&(shared[(((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8))])), (void* __restrict__)(&(A[(((int)threadIdx.x) * 8)])));
  barrier_arrive_and_wait(bar[0]);
  __syncthreads();
  *(uint4*)(B + (((int)threadIdx.x) * 8)) = *(uint4*)(shared + (((((((int)threadIdx.x) >> 3) * 64) + (((((((int)threadIdx.x) & 63) >> 5) + ((((int)threadIdx.x) & 7) >> 2)) & 1) * 32)) + (((((((int)threadIdx.x) & 31) >> 4) + ((((int)threadIdx.x) & 3) >> 1)) & 1) * 16)) + (((((((int)threadIdx.x) & 15) >> 3) + (((int)threadIdx.x) & 1)) & 1) * 8)));
}

