# Exact v166 Case2 final xcore1000 ISA summary

Source SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`

| Kernel | Static instructions | LDG128 | LDS128 | STS128 | MMA | barrier | arrive | snop |
|:--|--:|--:|--:|--:|--:|--:|--:|--:|
| unified Step1 (`kernel_kernel_3`) | 4443 | 54 | 96 | 24 | 448 | 8 | 142 | 385 |
| unified Step2 (`kernel_kernel_4`) | 4385 | 46 | 80 | 26 | 352 | 6 | 148 | 740 |

Additional Step2 tail counts: 224 `cvt_f32tof16`, 448 `set_hwreg`, 224
`get_hwreg`, 224 `mul_f32`, 64 `stg_b64`, and 5 `ldg_b32`.

Extraction used the frozen project `extract_metax_isa.sh` flow: MXCC device ELF,
embedded post-link LLVM bitcode, then xcore1000 `-O3 -S` backend emission.
