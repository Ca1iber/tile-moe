# v091 Case2 Step1 A-first producer 调度报告

## 结论

v091 从外部 OJ AC 的 v090 开始，只特化 Case2 Step1 的同步 producer 顺序：

- v090：`G0 -> G1 -> A -> U0 -> U1`
- v091：`A -> G0 -> G1 -> U0 -> U1`

Case2 七轮严格 AB/BA 长测全部正确，端到端中位提升 `2.703969%`，超过用户规定的 `1.2%` 候选门槛。Case1/3 generated-device C++ 与 v090 逐字节相同。用户随后确认 exact candidate 外部 OJ `AC`；Case2 为 `4.133 -> 3.995 ms`，提升 `3.338979%`，score ratio `0.818274 -> 0.823269`。但 Case1/3 精确数值尚未提供，按全局 SOTA 单调晋级规则仍不能创建 `restart-submission` 或更新正式 ledger。

## Identity

- 机器：MetaX C500 `sc-16g`，25% compute slice，16 GB VRAM。
- 软件：mx-smi 2.3.1，KMD 3.8.30，MACA 3.7.1.5，BIOS 1.33.5.0。
- Git 起点：`dorm` / `df4b70d0`。
- Parent：v090，SHA-256 `6e28d4446cb79b9bbcd440b39ccfda61c2d82792f23987bc15d7ebfe5923b8d7`。
- Candidate：SHA-256 `ad8c12ab0264dc54b89bff436fc6a4263baea42183b5b704d9d58c579ed0d7d8`。

## 机制

Case2 使用 consumer-native A workspace。v090 在 Gate0、Gate1 两半权重进入 shared 后才发出下一 A tile 的 global load；v091 把完整 predicated native A load 提到 Gate0 之前。逻辑字节数、MMA 数、barrier、grid、shared layout、workspace 和算术均不变。更早发出 A 请求增加了其与四个 Gate/Up producer 的覆盖时间；代价是 Step1 MT 寄存器 `214 -> 226`，但仍保持 `2 waves/PEU`，且无 private/spill。

## 正确性与合规

- 三个官方 Case 完整 padded-output correctness：PASS，`rtol=1e-2`、`atol=1e-2`。
- OJ source 与三个 generated-device source validator：PASS。
- 无 async copy、foreign source、external call 或结果缓存。
- Case2 ISA：`PrivateSize: 0`，Step1 `226 MT / 42 ST`，`2 waves/PEU`。
- Case1 generated SHA：`c61cd69d...`，与 v090 完全相同。
- Case3 generated SHA：`10eb2d62...`，与 v090 完全相同。
- Case2 generated SHA：`717d9d46...`，仅 producer 排列发生变化。

## 严格配对长测

| Case | 协议 | v090 median | v091 median | paired median | pstdev | 判定 |
|---:|---|---:|---:|---:|---:|---|
| 1 | 3 rounds, warmup 1000, repeat 300 | 2.378677 ms | 2.379818 ms | +0.047966% | 0.029432% | generated-identical noise |
| 2 | 7 rounds, warmup 100, repeat 100 | 4.048205 ms | 3.940142 ms | -2.703969% | 0.073051% | stable win |
| 3 | 5 rounds, warmup 20, repeat 100 | 14.127714 ms | 14.167644 ms | +0.514170% | 1.452306% | environment noise; generated identical |

Case3 采样时整机出现双向大抖动，不能拿计时中位数判断代码回退；逐字节 generated-code identity 是更强证据。

## mcTracer Case2 因果检查

三对 AB/BA 中第一对 v091 的 prepack、Step1、Step2 同时异常变慢，属于整次 trace 的系统状态异常。其余两对：

- Step1：`-2.7255%`、`-4.1356%`；
- total GPU：`-1.5938%`、`-2.5727%`；
- prepack：约 `0.127-0.129 ms`，无机制变化；
- Step2：`+1.1834%`、`+0.4768%`，为 trace/cache 波动；
- 正常样本 launch gap 均为 `0.002816 ms`。

收益明确来自 Step1，而不是 prepack、Step2 或 launch gap。

## 外部 OJ

| Case | v090 latency | v091 latency | 相对变化 | score ratio | Display | Pass |
|---:|---:|---:|---:|---:|---:|---|
| 1 | 未提供 | 未提供 | 生成代码与 v090 相同 | 未提供 | 未提供 | 用户报告 AC |
| 2 | 4.133 ms | 3.995 ms | -3.338979% | 0.823269 | 82 | OK |
| 3 | 未提供 | 未提供 | 生成代码与 v090 相同 | 未提供 | 未提供 | 用户报告 AC |

Case2 的外部 OJ 收益与本地配对 benchmark、mcTracer Step1 改善方向一致。这里不以“生成代码相同”代替缺失的 OJ 数值，也不推算总分。

## Verdict

`external-OJ-AC / partial-numeric-evidence`。v091 是后续实验父版本；等待 exact SHA 的外部 OJ 三 Case 完整数值后，才决定 `restart-submission` 和正式 SOTA ledger。
