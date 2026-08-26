# v143 代码生成与 ISA 摘要

## 资源

| Case / kernel | MT registers | ST registers | waves/PEU | dynamic shared |
|---|---:|---:|---:|---:|
| Case1 Step1 | 226 | 42 | 2 | 32768 B |
| Case1 Step2 | 202 | 52 | 2 | 32768 B |
| Case2 Step1 | 226 | 42 | 2 | 32768 B |
| Case2 Step2 | 220 | 52 | 2 | 32768 B |
| Case3 Step1 | 226 | 42 | 2 | 32768 B |
| Case3 short Step2 | 220 | 52 | 2 | 32768 B |
| Case3 long Step2 | 222 | 28 | 2 | 16384 B |

三 Case 均无 private/stack spill。Case3 short/long Step2 grid 分别为 `28x32` 与 `56x32`；v110 原 Step2 为 `28x96`。

## Case3 ISA

- v110 Step1：3081 条静态指令，其中 `snop=363`。
- v143 Step1：2921 条静态指令，其中 `snop=203`；LDG/STG/LDS/STS/MMA 与 v110 保持 `28/16/64/16/256`，说明真实行 SiLU 主要缩短谓词化空槽。
- v143 short Step2 与 v110 Step2 指令体相同，仅 grid 覆盖短 expert。
- v143 long Step2：1810 条静态指令，`LDG/STG/LDS/STS/MMA=24/40/16/4/128`；同 CTA 复用 Down tile 处理两半行。

静态指令数不直接等同动态执行量；阶段收益以配对 mcTracer 为主要因果证据。
