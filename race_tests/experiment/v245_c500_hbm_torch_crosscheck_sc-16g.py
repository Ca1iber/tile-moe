import statistics

import torch


def measure(fn, warmup=10, repeat=31):
    for _ in range(warmup):
        fn()
    torch.cuda.synchronize()
    samples = []
    for _ in range(repeat):
        start = torch.cuda.Event(enable_timing=True)
        stop = torch.cuda.Event(enable_timing=True)
        start.record()
        fn()
        stop.record()
        stop.synchronize()
        samples.append(start.elapsed_time(stop))
    samples.sort()
    return statistics.median(samples), samples[3], samples[-4]


print(f"# torch={torch.__version__} device={torch.cuda.get_device_name(0)}")
print("mode,size_GiB,median_ms,p10_ms,p90_ms,median_GBps")

for size_gib in (0.25, 0.5, 1.0, 2.0):
    elements = int(size_gib * 1024**3 / 4)
    a = torch.ones(elements, dtype=torch.float32, device="cuda")
    b = torch.full((elements,), 2.0, dtype=torch.float32, device="cuda")
    c = torch.empty_like(a)
    torch.cuda.synchronize()
    bytes_per_buffer = elements * 4

    for name, traffic, fn in (
        ("torch_copy", 2, lambda: c.copy_(a)),
        ("torch_add", 3, lambda: torch.add(a, b, out=c)),
    ):
        median_ms, p10_ms, p90_ms = measure(fn)
        gbps = traffic * bytes_per_buffer / (median_ms * 1e6)
        print(
            f"{name},{size_gib:.2f},{median_ms:.6f},{p10_ms:.6f},"
            f"{p90_ms:.6f},{gbps:.3f}"
        )

    check = c[0].item()
    if check != 3.0:
        raise RuntimeError(f"verification failed: {check}")
    del a, b, c

print("# verification=PASS")
