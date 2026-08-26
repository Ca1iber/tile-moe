# 2026-08-26 v146 外部 OJ 性能回退（放弃）

## 权威结论

v146 三 Case 均 `Pass: OK`，但性能相对 external-OJ-AC v110 全面回退，因此判定为 `rejected_external_oj_performance_regression`。正确性 AC 不等于性能优化；v146 不进入 `restart-submission`，不得作为后续 parent。

| Case | v110 OJ (ms) | v146 OJ (ms) | v146 相对 v110 | v146 score ratio |
|---|---:|---:|---:|---:|
| 1 | 2.243 | 2.366 | **+5.483727%** | 82.6247% |
| 2 | 3.954 | 6.253 | **+58.143652%** | 74.8502% |
| 3 | 7.680 | 12.991 | **+69.153646%** | 73.4151% |

## 对本地结论的推翻

本地 5x50 ABBA 曾给出 Case1 `-2.366097%`，mcTracer/mcProfiler/ISA 也显示 Step1 数学路径缩短；但外部 OJ 是最终性能门禁，其结果直接推翻 `locally-qualified` 判断。

更严重的是，本地正式 capture 中 v146 Case2/3 generated C++ SHA-256 与 v110 字节一致，而 OJ 却出现 `58%/69%` 回退。当前不能确定是实际上传文件与归档 SHA 不一致、TileLang/JIT 缓存污染、同进程 ABBA 复用了非 OJ 路径，还是 OJ sandbox/lowering 路径不同。没有证据前不得选定单一原因。

## 后续约束

1. 先核对实际上传文件 SHA-256；OJ 报告未返回源码哈希，因此归档只记录 intended candidate SHA。
2. 后续候选必须增加独立进程 A/B、候选单独冷启动与三 Case standalone timing，不能只依赖同进程多模块 ABBA。
3. Case2/3 必须在 submission-ready 文件上直接测量；生成代码字节一致只能作为静态证据，不能替代 OJ runtime。
4. 可靠 SOTA 仍为 v110，SHA-256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。

完整源码、本地 profile 与 OJ 结果 JSON 保留在 v146 experiment/rep 中，作为“本地 profile 正信号仍可能无法预测 OJ”的反例。
