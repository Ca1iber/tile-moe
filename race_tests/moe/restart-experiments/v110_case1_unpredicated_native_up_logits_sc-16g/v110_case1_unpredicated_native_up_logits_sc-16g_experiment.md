# v110 实验说明

- 机器：sc-16g，C500 25% sGPU。
- 开发基线：v108 locally-qualified candidate，SHA256 `04b8e77c08c146836f9dba3449a20f82f45e9a4fba61697da86997069db7555b`。
- 候选 SHA256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- 改动：新增编译期 `use_unpredicated_native_reads`，仅官方 Case1 为 true；三处 native workspace 向 shared/prefetch 的读取不再检查 valid row。
- 安全性：读取地址始终在已分配 workspace 内；无效 MMA 行不与有效行混合且不会写回；无 async copy、无注入、无缓存结果。
- 长测：Case1，同进程 AB/BA 5轮，warmup=20，repeat=50，完整 padded correctness。
- 身份检查：Case2/3 generated device C++ SHA 与 v108 完全一致，并再次执行完整正确性检查。
- Profile：Case1 三对 AB/BA mcTracer，使用三 kernel 汇总。
