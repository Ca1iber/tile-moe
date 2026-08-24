# v089 Case2 consumer-native × Gate0-early input 组合实验

## Identity

- 机器：MetaX C500 `sc-16g`，25% compute slice，16 GB VRAM。
- 软件：mx-smi 2.3.1，KMD 3.8.30，MACA 3.7.1.5，BIOS 1.33.5.0。
- Git：`dorm`，实验起点 `be907d5f`。
- Parent/SOTA：v088，SHA-256 `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`，外部 OJ 81.33。
- Teammate reference：桌面原始 CRLF `mate.txt` SHA-256 为 `2a562e568dbebcad0aa7c4b55a79139ad380600d7376310990603432917a5406`；归档的 LF-normalized `teammate_reference.py` SHA-256 为 `5792fd7317914caef019090b05da1d4ec1309457d2ee07dfa96ae220422cd37e`。
- Final candidate：SHA-256 `333fbf1867970e2ffb88e46c021c6091b89da29f75cff7b58b12b1aec7618cd0`。

## Mechanism

组合两个独立机制：

1. v088 的 Step1 顺序：`Gate0 -> input -> Gate1 -> Up0 -> Up1`；
2. mate 的 Case2-only consumer-native MMA-A workspace：`[block, K64, 4 vectors, 256 threads, 8 fp16]`。

Case2 的 odd tile 和 next-even tile 都在 Gate0 后按 native thread/vector 坐标读取完整有效行，然后才加载 Gate1。Case1/3 的开关为编译期 false。

## Correctness and compliance

- 最终 LF-normalized source 三个 case 完整 padded-output 检查：PASS。
- OJ source validator：PASS。
- 三个 generated-device source validator：PASS。
- 禁止项扫描：无 async copy、foreign source、extern/packed escape。
- Case2 ISA：private load/store 0，spill store/reload 0。
- 外部 OJ：**WA**。用户提交 exact archived candidate 后，Case1 在
  `(1926, 1091)` 出现 `target=0.21240234375`、`ref=0.024627685546875`，
  `max_abs_diff=0.187774658203125`（`rtol=0.05, atol=0.05`）；测得
  `2.439 ms`，但正确性门禁失败，因此性能结果无效，且不能进入
  `restart-submission`。

## Post-OJ correctness diagnosis

- 诊断性质：不替代官方/OJ verdict。
- Case1 保持官方张量形状 `(3072, 2048)`、2272 个有效行、24 个 M blocks。
- 覆盖固定 `100/184`、反转分布及 12 组满足同样总行数/总 blocks 的合法随机
  expert-tail 分布；每种分布 8 组输入数值，队友版和 v089 各重复 5 次。
- 共 1120 次相对 OJ-AC v088 的逐元素差分全部一致，未在裸 Python 环境复现
  OJ WA。
- Case1/3 device C++ 又与 v088 逐字节相同，因此当前证据不支持
  `actual_rows` 算法错误；风险更集中在 v089 从队友源带入的 host workspace
  cache 语义（把 OJ proxy/output tensor 放入全局字典 key）或 OJ 特有运行环境。
- 后续修正必须让非 Case2 的 host workspace 路径也回到 v088，并取消 v089
  的 SOTA 资格，不能以本地未复现为由忽略外部 WA。

## Final paired benchmark versus v088

均从最终 candidate SHA 运行；AB/BA，同进程，device-event。

| Case | Protocol | Paired median change | pstdev | Verdict |
|---|---:|---:|---:|---|
| 1 | 3 rounds, warmup 1000, repeat 300 | +0.0014% | 0.0971% | neutral |
| 2 | 5 rounds, warmup 100, repeat 100 | -3.0743% | 0.3277% | win |
| 3 | 5 rounds, warmup 20, repeat 100 | +0.0499% | 0.0265% | neutral |

Case2 有一轮 v088 parent 时钟抖动；其余四轮集中在 `-2.996%` 到 `-3.077%`。前一轮未规范化换行、但生成代码完全相同的独立 5-round 结果为 median `-2.9675%`、pstdev `0.0632%`，支持约 3% 的稳定收益。

## Direct teammate comparison

Case2 上组合版相对原始 mate 版本：median `-0.6805%`，pstdev `0.0372%`。因此 native layout 提供主要收益，Gate0-early input 在该布局上仍贡献稳定但低于 1.2% 的附加收益。

## mcTracer Case2

三组 AB/BA（换行规范化前后生成 C++ SHA 完全一致）：

- prepack：0.122624 -> 0.129024 ms，略增约 0.0064 ms；
- Step1：2.669568 -> 2.554368 ms，paired median `-4.3153%`；
- Step2：paired median `+0.2284%`，噪声；
- total GPU：paired median `-2.4943%`；
- launch gap：约 0.0028 ms，不变。

收益来自 Step1 consumer-native 输入布局和更早 load issue，足以抵消 shared bridge 的 prepack 成本。

## Codegen and ISA

- Case1/3 generated C++ 与 v088 逐字节相同。
- Case2 prepack：84 -> 78 MT registers，5 -> 6 max warps/PEU；新增 16 `sts_b128`、16 `lds_b128` 和 1 barrier。
- Case2 Step1：224 -> 222 MT registers，ST 42 不变，仍为 2-wave。
- Step1 static instructions：3079 -> 3066；MMA 256、global loads 34、barriers 4 均不变。
- 无 private traffic、无 spill、无 async marker。

## Verdict

`rejected`：本地组合的 Case2 性能证据成立，但 exact candidate 已被外部 OJ
判定 WA。正确性是硬门禁，所有候选性能数据仅保留为研究线索，v089 不得进入
`restart-submission`，正式 SOTA 继续为 v088。
