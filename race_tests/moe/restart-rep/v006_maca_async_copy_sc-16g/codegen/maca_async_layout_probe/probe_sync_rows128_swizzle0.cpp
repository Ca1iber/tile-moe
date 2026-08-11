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
  #pragma unroll
  for (int i = 0; i < 4; ++i) {
    *(uint4*)(shared + ((i * 2048) + (((int)threadIdx.x) * 8))) = *(uint4*)(A + ((i * 2048) + (((int)threadIdx.x) * 8)));
  }
  __syncthreads();
  #pragma unroll
  for (int i_1 = 0; i_1 < 4; ++i_1) {
    *(uint4*)(B + ((i_1 * 2048) + (((int)threadIdx.x) * 8))) = *(uint4*)(shared + ((i_1 * 2048) + (((int)threadIdx.x) * 8)));
  }
}

