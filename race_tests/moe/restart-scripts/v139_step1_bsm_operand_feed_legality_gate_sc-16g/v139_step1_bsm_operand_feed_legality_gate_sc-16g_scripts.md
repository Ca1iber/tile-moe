# v139 reproduction commands

Run from `/root/tilelang-metax` on the C500 sc-16g container.

## Locate SDK declarations and uses

```bash
grep -RIl --include='*.h' --include='*.hpp' --include='*.inc' '__builtin_mxc_ldg_b128_bsm\|ldg_b128_bsm' /opt/maca
```

```bash
sed -n '250,430p' /opt/maca/include/mctlass/arch/maca_memory.h
```

## Prove there is no direct TileLang mapping

```bash
grep -RIl --include='*.cc' --include='*.h' --include='*.py' '__builtin_mxc_ldg_b128_bsm\|ldg_b128_bsm' src tilelang include | wc -l
```

Expected result for repository head `c4bb881dce2b5ce3ee70f92a991613f1b092efb2`: `0`.

## Inspect the only public related API

```bash
sed -n '232,276p' tilelang/language/copy_op.py
```

```bash
sed -n '338,390p' tilelang/intrinsics/maca_mma_macro_generator.py
```

```bash
sed -n '1560,1595p' src/target/codegen_maca.cc
```

No compile, benchmark, or profiler command exists for v139 because the static legality gate rejected the mechanism before an executable candidate was created.
