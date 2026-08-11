#include <mc_runtime.h>
#include <mc_common.h>

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <vector>

#define MC_CHECK(call)                                                         \
  do {                                                                         \
    mcError_t status_ = (call);                                                 \
    if (status_ != mcSuccess) {                                                 \
      std::fprintf(stderr, "MACA error %s:%d: %s\n", __FILE__, __LINE__,       \
                   mcGetErrorString(status_));                                 \
      std::exit(EXIT_FAILURE);                                                  \
    }                                                                          \
  } while (0)

__global__ void copy_kernel(const float4 *__restrict__ src,
                            float4 *__restrict__ dst, size_t nvec) {
  size_t i = static_cast<size_t>(blockIdx.x) * blockDim.x + threadIdx.x;
  size_t stride = static_cast<size_t>(blockDim.x) * gridDim.x;
  for (; i < nvec; i += stride) dst[i] = src[i];
}

__global__ void write_kernel(float4 *__restrict__ dst, size_t nvec) {
  size_t i = static_cast<size_t>(blockIdx.x) * blockDim.x + threadIdx.x;
  size_t stride = static_cast<size_t>(blockDim.x) * gridDim.x;
  const float4 value = {1.0f, 2.0f, 3.0f, 4.0f};
  for (; i < nvec; i += stride) dst[i] = value;
}

__global__ void triad_kernel(const float4 *__restrict__ a,
                             const float4 *__restrict__ b,
                             float4 *__restrict__ c, size_t nvec, float alpha) {
  size_t i = static_cast<size_t>(blockIdx.x) * blockDim.x + threadIdx.x;
  size_t stride = static_cast<size_t>(blockDim.x) * gridDim.x;
  for (; i < nvec; i += stride) {
    float4 va = a[i];
    float4 vb = b[i];
    float4 out;
    out.x = va.x + alpha * vb.x;
    out.y = va.y + alpha * vb.y;
    out.z = va.z + alpha * vb.z;
    out.w = va.w + alpha * vb.w;
    c[i] = out;
  }
}

struct Stats {
  double median_ms;
  double p10_ms;
  double p90_ms;
};

template <typename Launch>
Stats time_kernel(Launch launch, int warmup, int repeat) {
  for (int i = 0; i < warmup; ++i) launch();
  MC_CHECK(mcDeviceSynchronize());
  mcEvent_t start, stop;
  MC_CHECK(mcEventCreate(&start));
  MC_CHECK(mcEventCreate(&stop));
  std::vector<double> samples;
  samples.reserve(repeat);
  for (int i = 0; i < repeat; ++i) {
    MC_CHECK(mcEventRecord(start, 0));
    launch();
    MC_CHECK(mcEventRecord(stop, 0));
    MC_CHECK(mcEventSynchronize(stop));
    float ms = 0.0f;
    MC_CHECK(mcEventElapsedTime(&ms, start, stop));
    samples.push_back(ms);
  }
  MC_CHECK(mcEventDestroy(start));
  MC_CHECK(mcEventDestroy(stop));
  std::sort(samples.begin(), samples.end());
  auto percentile = [&](double q) {
    size_t idx = static_cast<size_t>(std::llround(q * (samples.size() - 1)));
    return samples[idx];
  };
  return {percentile(0.50), percentile(0.10), percentile(0.90)};
}

void print_result(const char *mode, size_t bytes_per_buffer, double traffic_mul,
                  const Stats &s) {
  const double gib = static_cast<double>(bytes_per_buffer) /
                     (1024.0 * 1024.0 * 1024.0);
  const double gbps = traffic_mul * static_cast<double>(bytes_per_buffer) /
                      (s.median_ms * 1.0e6);
  const double p10_gbps = traffic_mul * static_cast<double>(bytes_per_buffer) /
                          (s.p90_ms * 1.0e6);
  const double p90_gbps = traffic_mul * static_cast<double>(bytes_per_buffer) /
                          (s.p10_ms * 1.0e6);
  std::printf("%s,%.3f,%.6f,%.6f,%.6f,%.3f,%.3f,%.3f\n", mode, gib,
              s.median_ms, s.p10_ms, s.p90_ms, gbps, p10_gbps, p90_gbps);
}

int main() {
  constexpr int threads = 256;
  constexpr int blocks = 4096;
  constexpr int warmup = 10;
  constexpr int repeat = 31;
  const size_t max_bytes = static_cast<size_t>(2) * 1024 * 1024 * 1024;
  const std::vector<size_t> sizes_mib = {64, 256, 512, 1024, 2048};

  mcDeviceProp_t prop{};
  MC_CHECK(mcGetDeviceProperties(&prop, 0));
  std::printf("# device=%s total_global_mem=%zu multiprocessors=%d\n", prop.name,
              static_cast<size_t>(prop.totalGlobalMem), prop.multiProcessorCount);
  std::printf("# threads=%d blocks=%d warmup=%d repeat=%d\n", threads, blocks,
              warmup, repeat);
  std::printf("mode,size_GiB,median_ms,p10_ms,p90_ms,median_GBps,p10_GBps,p90_GBps\n");

  float4 *a = nullptr;
  float4 *b = nullptr;
  float4 *c = nullptr;
  MC_CHECK(mcMalloc(reinterpret_cast<void **>(&a), max_bytes));
  MC_CHECK(mcMalloc(reinterpret_cast<void **>(&b), max_bytes));
  MC_CHECK(mcMalloc(reinterpret_cast<void **>(&c), max_bytes));
  MC_CHECK(mcMemset(a, 0, max_bytes));
  MC_CHECK(mcMemset(b, 0, max_bytes));
  MC_CHECK(mcMemset(c, 0, max_bytes));
  MC_CHECK(mcDeviceSynchronize());

  for (size_t size_mib : sizes_mib) {
    const size_t bytes = size_mib * 1024 * 1024;
    const size_t nvec = bytes / sizeof(float4);
    Stats write_stats = time_kernel(
        [&]() { write_kernel<<<blocks, threads>>>(c, nvec); }, warmup, repeat);
    MC_CHECK(mcGetLastError());
    print_result("write", bytes, 1.0, write_stats);
    Stats copy_stats = time_kernel(
        [&]() { copy_kernel<<<blocks, threads>>>(a, c, nvec); }, warmup, repeat);
    MC_CHECK(mcGetLastError());
    print_result("copy", bytes, 2.0, copy_stats);
    Stats triad_stats = time_kernel(
        [&]() { triad_kernel<<<blocks, threads>>>(a, b, c, nvec, 1.25f); },
        warmup, repeat);
    MC_CHECK(mcGetLastError());
    print_result("triad", bytes, 3.0, triad_stats);
  }

  float4 check{};
  MC_CHECK(mcMemcpy(&check, c, sizeof(check), mcMemcpyDeviceToHost));
  if (!std::isfinite(check.x) || !std::isfinite(check.y) ||
      !std::isfinite(check.z) || !std::isfinite(check.w)) {
    std::fprintf(stderr, "Result verification failed: non-finite output\n");
    return EXIT_FAILURE;
  }
  MC_CHECK(mcFree(a));
  MC_CHECK(mcFree(b));
  MC_CHECK(mcFree(c));
  std::printf("# verification=PASS\n");
  return 0;
}
