# v130 v110 ISA summary

| Case | Kernel | Inst | LDG | STG | LDS | STS | MMA | barrier | arrive | snop |
|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1 | kernel_kernel | 255 | 16 | 16 | 16 | 16 | 0 | 1 | 35 | 32 |
| 1 | kernel_kernel_1 | 3082 | 28 | 16 | 64 | 16 | 256 | 4 | 92 | 364 |
| 1 | kernel_kernel_2 | 2698 | 38 | 32 | 64 | 16 | 256 | 4 | 117 | 444 |
| 2 | kernel_kernel | 244 | 16 | 16 | 16 | 16 | 0 | 1 | 35 | 20 |
| 2 | kernel_kernel_1 | 3081 | 28 | 16 | 64 | 16 | 256 | 4 | 91 | 363 |
| 2 | kernel_kernel_2 | 2308 | 38 | 41 | 64 | 16 | 256 | 4 | 114 | 387 |
| 3 | kernel_kernel | 244 | 16 | 16 | 16 | 16 | 0 | 1 | 35 | 20 |
| 3 | kernel_kernel_1 | 3081 | 28 | 16 | 64 | 16 | 256 | 4 | 91 | 363 |
| 3 | kernel_kernel_2 | 2308 | 38 | 41 | 64 | 16 | 256 | 4 | 114 | 387 |

Assembly SHA-256:

- Case 1: `251178f63f7a4ead81d7316654c8f28fa0a6a35cc1affdf0b314f2eb0074c067`
- Case 2: `2eeb3ac2ee27c199fcf5e9b7397085302306e63d40e75827aa513357012ace43`
- Case 3: `d5675c0d1b7993dd1f01cd705acb78d6549cc70818da9df3cfc366d4e83531b4`
