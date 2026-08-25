# v108 实验说明

- 机器：sc-16g，C500 25% sGPU。
- 开发基线：v102 external-OJ-AC，SHA256 `5290d64c3a59ed3757634f762637427c48be40ae387a706798d39e7e53ef7801`。
- 候选 SHA256：`04b8e77c08c146836f9dba3449a20f82f45e9a4fba61697da86997069db7555b`。
- 唯一主要改动：将中间 workspace 改为 Step2 consumer-native 布局；Step1 写入时完成逆映射，Step2 每线程读取自己的四个 8 元素向量。
- 安全边界：仅 `torch`/`tilelang` 与 TileLang primitive；无 async copy、无注入、无结果缓存；有效输出元素数不变。
- Benchmark：同进程 device-event AB/BA 5 轮，warmup=20，repeat=50；完整 padded output，`rtol=atol=1e-2`。
- Profile：Case1 三对 AB/BA mcTracer，并使用三 kernel 汇总器区分 prepack、Step1、Step2。

v106 先在 Case3 验证该布局；v107 尝试把完整 native A 提前到 split Down copy 之前，收益反而略降。v108 保留 v106 的 half-interleaved feed，并扩展到三个官方 Case。
