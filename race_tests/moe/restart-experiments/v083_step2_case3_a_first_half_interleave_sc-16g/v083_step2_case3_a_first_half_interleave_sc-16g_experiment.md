# v083_step2_case3_a_first_half_interleave_sc-16g 实验记录

## 身份

- 状态：accepted_current_best（本地证据门槛）
- 机器：sc-16g，MetaX C500 25% sGPU
- 精确基线：v059_teammate_79_33_case1_grid_sc-16g
- 基线源码 SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- v083 源码 SHA-256：`bde129953767a9e9efde2b39cd8c23b4adc9038c709c2519f76bf2ff9291acea`
- OJ 状态：待外部 OJ 复核；本地 OJ source/generated-code gate 与官方三 shape correctness 均通过

## 假设卡

- Observed evidence / 已观测证据：v59 Case3 Step2 一次连续复制完整 256x64 down tile，再复制 128x64 的下一 A tile。此前 B-first 半块交错 `B0 -> A0 -> B1 -> A1` 已把 Step2 trace 缩短约 2.51%，说明同步全局 copy 的发射顺序是有效旋钮。
- Verified bottleneck / 已验证瓶颈：双 B fragment、按 accumulator 分组、反向/交叉半块顺序均未越过 1.2%；性能由 copy/MMA 的有效重叠而非静态指令数或单纯寄存器数决定。
- Current hypothesis / 当前假设：在每个 64-row producer stage 中先发较小的 A half，再发 B half，即 `A0 -> B0 -> A1 -> B1`，可让 B 请求更靠近随后的 shared-memory consumer，同时用先发 A 覆盖部分 B 请求启动延迟。
- Proposed mechanism / 拟采用机制：仅对 Case3 精确 shape 打开两阶段同步 half interleave；even/odd 两个 phase 均按 A-first、low-half-first 顺序发射。无 async、external call、foreign source 或缓存结果。
- Predicted metric changes / 预测指标变化：Case1/2 生成代码逐字节不变；Case3 CTA/grid、MMA、shared bytes 与 barriers 不变；Step2 寄存器不升、无 spill；Step2 trace 与端到端时间稳定下降。
- Falsifying result / 证伪条件：任一 padded-output correctness 失败；OJ gate 失败；Case1/2 代码改变；Case3 五轮中任一回退；或中位提升低于 1.2%。
- Correctness/resource risks / 正确性与资源风险：两次半块 copy 必须完整覆盖 A 的 128 rows 和 B 的 256 output rows；下一 even tile 在最后一对 K 时不得越界；动态 shared memory 仍必须为 32 KiB。

## 结果

- 三 case 全 padded-output correctness：PASS，`rtol=atol=1e-2`。
- Case1/2 生成 C++ 与 v59 SHA-256 完全一致；配对中位变化分别为 `-0.015%`、`-0.008%`。
- Case3 最终 5 轮 AB/BA（warmup 20、repeat 300）：`-3.394% / -3.418% / -3.400% / -3.393% / -3.395%`；中位 `-3.395%`，标准差 `0.0094%`。
- mcTracer 三组配对：Step2 中位 `3.343104 -> 3.027712 ms`，配对中位 `-9.448%`；Step1 配对中位 `+0.277%`，属于采集噪声。
- Case3 Step2：`230 -> 222` MT registers，52 ST registers 不变，2 waves/PEU 不变，32 KiB dynamic shared 不变，0 private traffic、0 spill。
- 最终 ISA 保持 256 MMA、64 shared load、16 shared store、41 global store、4 barrier；global-load 静态 site 因拆分 copy 从 36 增至 44，但运行更快，证明收益来自发射/重叠而非少算少搬。

## 决策

- 该候选稳定超过 1.2% promotion gate，是 v59 之后第一个正常、非 hack 的本地全局最优。
- 晋级为 v083，并将 `race_tests/moe/submission.py` 与 `dorm` 向前推进；外部 OJ 分数需另行回填，不把本地提升冒充 OJ 得分。
