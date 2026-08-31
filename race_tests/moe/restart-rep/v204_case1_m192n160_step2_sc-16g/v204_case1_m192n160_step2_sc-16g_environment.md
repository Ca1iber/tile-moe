# v204 environment ledger

## `mate` — compilation and profiling authority

- SSH identity: `root+vm-mYPn0nbOxgDekRLr@140.207.205.81:32222`
- Hostname: `31887538ba5f`
- TileLang: `0.1.10+cuda.gitf549117c`
- Development build: `/opt/tilelang-metax-v0.1.10/build`
- Runtime device: MetaX C500, about 15.22 GiB visible memory
- mcProfiler: `3.8.1.4`
- mcTracer: `3.7.1.5-ef9e10e`
- Exact teammate source name: `v197`; canonical SHA equals archived v204.

## `sc-16g-2` — repository and static-validation authority

- SSH identity: `root+vm-4FBr1AkFEGr7cjaK@140.207.205.81:32222`
- Hostname: `01a69a6a23c9`
- Repository: `/root/tilelang-metax`, branch `dorm`
- TileLang: `0.1.9+cuda.git6814feeb`
- Runtime device: MetaX C500, about 15.22 GiB visible memory
- Static OJ validation: PASS
- Exact v204 on 0.1.9 did not reach TileLang device compilation after prolonged single-core IR construction and memory pressure. This is a toolchain/environment compatibility result, not a v204 source failure: the same canonical source compiled on `mate` 0.1.10 and produced all three codegen artifacts.
