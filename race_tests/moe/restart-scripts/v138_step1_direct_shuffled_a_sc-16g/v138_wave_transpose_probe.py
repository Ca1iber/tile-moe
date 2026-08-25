import torch
import tilelang
import tilelang.language as T


@tilelang.jit
def make_probe():
    @T.prim_func
    def main(
        source: T.Tensor((128, 64), T.float16),
        restored: T.Tensor((128, 64), T.float16),
    ):
        with T.Kernel(1, threads=256):
            tx = T.get_thread_binding()
            wave = tx // 64
            lane = tx % 64
            packed = T.alloc_local((4,), T.uint32)

            for row_half in T.serial(2):
                for k_half in T.serial(2):
                    load_row = wave * 32 + row_half * 16 + lane // 4
                    load_col = k_half * 32 + (lane % 4) * 8
                    packed[0:4] = T.ldg128(
                        source[load_row, load_col : load_col + 8]
                    )

                    owner_row = wave * 32 + row_half * 16 + lane % 16
                    owner_col = k_half * 32 + (lane // 16) * 8
                    source_lane = (lane % 16) * 4 + lane // 16
                    for word in T.serial(4):
                        restored[
                            owner_row,
                            owner_col + word * 2 : owner_col + word * 2 + 2,
                        ] = T.reinterpret(
                            T.shfl_sync(
                                packed[word],
                                source_lane,
                                width=64,
                                mask=18446744073709551615,
                            ),
                            T.float16x2,
                        )

    return main


def run():
    source = torch.randn((128, 64), device="cuda", dtype=torch.float16)
    restored = torch.empty_like(source)
    probe = make_probe()
    probe(source, restored)
    torch.cuda.synchronize()
    torch.testing.assert_close(restored, source, rtol=0.0, atol=0.0)
    generated = probe.get_kernel_source()
    print("PROBE_PASS")
    print("ldg128_sites", generated.count("ldg128"))
    print("shfl_sites", generated.count("shfl"))
    print(generated)


if __name__ == "__main__":
    run()
