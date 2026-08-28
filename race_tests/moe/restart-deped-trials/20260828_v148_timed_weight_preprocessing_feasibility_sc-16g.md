# v148 计时内权重预处理可行性实验（sc-16g）

## 1. 上一个问题

新增平台规则明确允许对 Gate/Up/Down 权重预处理，但要求：预处理必须在每次正式 `run_kernel` 调用中执行并计时；不得只在 warmup 执行；不得跨调用缓存或复用预处理结果；全部预处理计算必须由提交内 TileLang kernel 完成；不得直接使用通用 MXMACA 编译器 builtin。

本轮从外部 OJ SOTA v148 开始，源码 SHA-256 为 `1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`，起始 `dorm` 提交为 `add3ecb2`。目标是测出全局物化的真实成本下界，并验证不落 HBM 的局部 Gate/Up shared 重排是否能产生可晋级收益。候选门槛保持相对父版本至少 `1.2%`。

## 2. 原因分析

v148 的 Gate、Up 与 Down 都以连续 K 维切片读取，并直接搬入 swizzled shared memory；生成设备代码中的权重搬运已经使用连续 `uint4`（128-bit）访问。普通转置或 tile-major 打包不会减少权重字节数，只可能减少少量地址/布局工作，因此必须先证明新增预处理读写能够回本。

Case2 单组权重大小：

```text
32 experts × 2048 × 7168 × 2 bytes = 939,524,096 bytes = 0.875 GiB
```

任何同尺寸 Gate 物化至少增加一次原权重读取和一次新权重写入，即约 `1.879 GB` 的流量；完整 Gate+Up+Down 至少是该成本的三倍，尚未计主 GEMM 再次读取新权重。

## 3. 解决方案

本轮实现两个独立探针：

1. **Gate 全局物化成本下界**：每次 `run_kernel` 都通过 `torch.empty_like` 取得一个逻辑新 buffer；提交中的纯 TileLang kernel 将完整 Gate 复制进去；同一次调用的 Step1 只读取该新 buffer。预处理结果不跨调用保存或复用。
2. **Gate/Up shared union**：不创建全局新权重，只把 Step1 的两个 `(128,64)` shared allocation 合并成一个 `(256,64)` allocation；Gate 位于低 128 行、Up 位于高 128 行，`ldmatrix_b` 用 `row_offset=128` 消费 Up。这是每 CTA 即时构造并立即消费的局部布局。

两者都只使用 TileLang primitive，无 async copy、无 foreign source、无 `call_extern`、无手写 MXMACA builtin。

## 4. 实现与验证

- 两个源码均通过 v148 `validate_oj_submission.py`。
- 两个探针均通过 Case2 完整有效行正确性，`rtol=1e-2, atol=1e-2`。
- Gate 物化生成四个 kernel：materialize `90 MT / 16 ST / 5 waves`，input prepack `78/11/6`，Step1 `226/42/2`，Step2 `220/52/2`。
- shared union 的三个 kernel 资源逐项等同 v148：`78/11/6`、`226/42/2`、`220/52/2`；8 个 MMA sites、9 个 `syncthreads`，无 async。
- shared union 与 parent 的生成 C++ 差异仅为匿名动态 shared 指针与具名 `gate_up_shared` 指针的拼写；地址偏移、向量 load、MMA 与 barrier 结构同构。

## 5. Benchmark 对比

环境：MetaX C500 sc-16g，MXMACA 3.7.1.5，KMD 3.8.30。统一为同进程 AB/BA、完整 Case2 correctness；正数表示回退。

### Gate 每调用全局物化，3×20

| Round | v148 | Candidate | Change |
|---:|---:|---:|---:|
| 1 | 3.928282 ms | 5.195341 ms | +32.2548% |
| 2 | 3.932531 ms | 5.192064 ms | +32.0285% |
| 3 | 3.919027 ms | 5.199974 ms | +32.6853% |

中位回退 `32.2548%`。Round 1 的增量为 `1.267059 ms`，按 Gate 的一次读加一次写估算有效搬运率约 `1.483 TB/s`。这已经是高速顺序复制，但成本仍是 1.2% 晋级所需 Case2 headroom（约 `0.047 ms`）的约 27 倍。三组同尺寸权重的纯物化成本粗略下界约 `3.80 ms`。

### Gate/Up shared union，3×30

| Round | v148 | Candidate | Change |
|---:|---:|---:|---:|
| 1 | 3.929754 ms | 3.925427 ms | -0.1101% |
| 2 | 3.920990 ms | 3.918080 ms | -0.0742% |
| 3 | 3.921903 ms | 3.919531 ms | -0.0605% |

中位改善 `0.0742%`，远低于 `1.2%` 门槛；生成代码语义同构，因此判定为噪声而非候选。

## 6. Profile / Codegen 结论

1. 全局预处理并非因为 copy kernel 写得慢而失败：约 `1.48 TB/s` 已接近顺序搬运的高吞吐，但每次必须支付近 2×权重字节的流量，绝对成本无法被当前 GEMM 布局收益覆盖。
2. v148 当前权重加载已是连续 128-bit 访问。要让全局预处理回本，它必须让后续计算减少远大于一整次读写的真实流量，或启用数量级更高的新计算路径；普通转置、swizzle、Gate/Up 拼接和 padding 都不满足。
3. 不落 HBM 的 shared union 不增加流量，但后端已经把原来的两个 shared allocation 合并到同一动态 shared 区域；源码级合并没有创造新机制。
4. 历史复核：另一种 `(128,128)` Gate/Up shared 合并曾回退 `0.1876%`；Case3 bx 元数据预打包只改善约 `0.190%`；都不能与本轮噪声组合晋级。

## 7. 实验总结

全尺寸 Gate/Up/Down 全局物化在“每调用重做并计时”的规则下已被实测封口；选择性物化只有在被处理子集极小且能消除不成比例的大量重复流量时才值得重开。Gate/Up CTA 内 shared union 也没有越过门槛。本轮不创建新版本、不推进 `restart-submission`，v148 保持 SOTA。

新增规则已经写入本机 `ako4all-c500`，并同步到 `Ca1iber/codex-skills-and-history` 提交 `20177d4`；原有 1.2% 晋级门槛和失败方向归档规则保持不变。
