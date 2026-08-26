# v143 正确性与合规摘要

- 精确候选 SHA256：`adfd87cde345adeb8b3abe43b1350a13811c2ceae707beffbbf5bedad67c1b78`。
- 官方 Case1、Case2、Case3 均与 v110 输出 bit-exact：`max_abs=0`、严格 mismatch 为 0、OJ tolerance mismatch 为 0。
- OJ source validator 对精确候选以及三 Case 生成设备代码检查通过。
- 仅使用 `torch`、`tilelang`、`tilelang.language` 与 `math` 允许面；无异步拷贝、注入、缓存或外部源码依赖。
- 外部 OJ 尚未验证，因此本版本只属于 locally-qualified candidate，不能写入 `restart-submission` 或更新 SOTA。
