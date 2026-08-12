# v024 Step1 half-order isolation 报告

## 1. 上版本遗留问题

v023 在 sc-16g 的无插桩 OJ Case2 上相对 v022 提升约 2.1%–2.23%，但优化来自源码顺序触发的后端调度变化，并未减少算术量、访存次数或同步点。遗留问题有两个：

- 哪一种 gate/input/up 半块顺序真正有利，尚未被系统隔离。
- fresh-process 测试会经历约 4.97 ms 与 5.30 ms 两个设备时间相位，足以淹没 1%–2% 的优化信号。

影响范围是 OJ Case2：experts=32、hidden=7168、intermediate=2048、total_tokens=4544、FP16。Case1/3 不应受该特化影响。

## 2. 问题原因分析

### 已验证结论

- v023 的源码顺序为 `G0 -> A0 -> U0 -> G1 -> A1 -> U1`，后端形成 `1-2-1` 权重分组：两条权重 load、四条条件 input load、四条权重 load、四条条件 input load、两条权重 load。
- GUA/AGU/AUG/UGA/UAG 均未优于 GAU。AGU 同进程 12/12 变慢，中位 `+2.140174%`；AUG 6/6 变慢，中位 `+1.844746%`。
- 只看 `snop` 总数不够：GUA 的 `snop` 比 v023 更少，但它重排了更多 shared-load/MMA 区段且性能更差。
- sc-16g 存在明显时间相位；跨进程轮转不能裁决本轮细微差异。

### 当前推测

v024 的收益来自更紧凑的 global-load bundle：地址生成先完成，再连续发出四条 `ldg_b128`，减少 load 之间的依赖空洞。该说法由 ISA 局部序列支持，但 C500 的两条 `snop` 与 1.6%–1.9% 端到端收益之间不能建立简单线性因果。

### 下一步需要验证的假设

- 在不破坏 `1-2-1` 分组的情况下，反转某个半块内部遍历方向能否进一步延长 outstanding global-load 深度。
- 能否用 TileLang lowering 或更底层 builtin 明确控制 address generation 与 `ldg/sts` 的调度，而不是继续依赖源码偶然触发编译器重排。

## 3. 本版本解决方案

最终方案仅交换 v023 中间的 `U0/G1`：

```text
v023: G0 -> A0 -> U0 -> G1 -> A1 -> U1
v024: G0 -> A0 -> G1 -> U0 -> A1 -> U1
```

目标不是减少工作量，而是保持已验证的 `1-2-1` 分组，同时让中间四个权重 load 的地址计算与发射更连续。风险是源码顺序可能引发不可预测的寄存器分配或 MMA/shared-load 重排；因此必须同时检查生成 C++、最终 ISA、资源和严格 benchmark。

## 4. 具体落地策略

- 修改文件：`race_tests/moe/custom_fusedmoe.py`。
- 修改路径：`RoutedMoEKernel` 的 Case2 Step1 `use_step1_prefetch_before_barrier` 分支，偶数 K tile 与奇数 K tile 均使用 middle-swap。
- 只在 32 experts 路径生效；16/64 experts 保留原路径。
- BN/BK、CTA 线程数、shared memory 布局、barrier 数和 MMA 循环不变。
- Parent SHA256：`b250a2ce37a29ac0434b3d34011642ffca10251126895d9fc69a9d07b9770c7d`。
- Candidate/安装态 SHA256：`8679b644dabbfa5db5438bb841b4e48b6facea3a54c851069caa99996ec4403e`。

## 5. Benchmark 对比

### 权威 Case2 同进程 AB/BA

同一 Python 进程内预编译两版，输入/权重共享，scratch/output 独立，每对交替 AB/BA。该协议用于抵消 sc-16g 时间相位。

| 协议 | v023 parent 中位数 | v024 中位数 | 绝对变化 | 配对变化 | 提升对数 | 正确性 |
|---|---:|---:|---:|---:|---:|---|
| 12 pairs, warmup=5, repeat=200 | 5.337685 ms | 5.250655 ms | -0.087030 ms | `-1.632301%` | 12/12 | PASS |
| 4 pairs, warmup=20, repeat=2000 | 5.372595 ms | 5.270868 ms | -0.101727 ms | `-1.893434%` | 4/4 | PASS |

长窗标准差：parent `0.000282 ms`，candidate `0.000099 ms`。这两组未插桩数据是本版本性能裁决依据。

### 三组 OJ 与平台 baseline 参考

| 配置 | OJ 平台 baseline | v024 sc-16g 本地 | 相对 baseline | max_abs | 状态 |
|---|---:|---:|---:|---:|---|
| Case1: 16×2048×8192, 2272 tokens | 11.251 ms | 3.072431 ms | -72.69% | 0.001953125 | PASS |
| Case2: 32×7168×2048, 4544 tokens | 18.610 ms | 5.269059 ms | -71.69% | 0.001953125 | PASS |
| Case3: 64×7168×2048, 9088 tokens | 35.875 ms | 10.326797 ms | -71.21% | 0.001953125 | PASS |

平台 baseline 来自用户提供的 OJ 报告，本地 sc-16g 与平台运行相位并非严格同一环境；表中相对值只作为量级参考，不替代 v023/v024 同进程对照。

### 官方 benchmark

- Functional：2/2 PASS。
- Performance：80.092920 ms、25.341245 ms。
- v023 归档值：80.544512 ms、25.476128 ms。

主要命令见 `restart-scripts/v024_step1_half_order_isolation_sc-16g/v024_step1_half_order_isolation_sc-16g_scripts.md`。

## 6. Profile 指标变化

### C++、资源与 ISA

| 指标 | v023 | v024 | 变化 | 解释 |
|---|---:|---:|---:|---|
| Step1 MT / ST registers | 212 / 52 | 212 / 52 | 0 | 寄存器压力不变 |
| static max waves/PEU | 2 | 2 | 0 | occupancy 上限不变 |
| private load/store | 0 / 0 | 0 / 0 | 0 | 无 spill |
| static instructions | 3232 | 3230 | -2 | 仅局部 load bundle 改变 |
| `snop` | 390 | 388 | -2 | 两个 load 间空操作消失 |
| code bytes | 25856 | 25840 | -16 B | 与局部序列缩短一致 |
| MMA | 256 | 256 | 0 | 算术量不变 |
| global load/store | 42 / 16 | 42 / 16 | 0 | 算法流量不变 |
| shared load/store | 64 / 16 | 64 / 16 | 0 | shared 工作量不变 |
| barrier / arrive | 4 / 92 | 4 / 92 | 0 | 同步结构不变 |

Case1 生成 C++ SHA256 均为 `1a50eb0e...6626f3`，Case3 均为 `c80f44d8...c2db8`，两者与 v023 字节级一致。Case2 的 C++ 只交换 gate/up 两个半块 copy；ISA 的关键差异是 v024 先完成四个 `mad_i32` 地址计算，再连续发出四个 `ldg_b128`，而 v023 在地址计算与 load 之间夹有两个 `snop`。

### mcTracer（插桩诊断，隔离）

4 组 AB/BA 单次 trace 的 Step1 变化为 `-0.3875%`、`+7.7090%`、`-1.7187%`、`-2.7154%`；中位 `-1.0531%`，均值却为 `+0.7218%`。Step2 中位变化 `-0.0217%`，符合 Step2 源码未变。由于 Step1 高噪声且方向混合，mcTracer elapsed time 不用于提交裁决。

### mcProfiler（两轮反向顺序 replay，隔离）

| 指标 | 第一轮 v023→v024 | 第二轮 v024→v023 | 判断 |
|---|---:|---:|---|
| Total Cycles | +1.322% | +8.521% | 不支持未插桩时延结论 |
| Average Wave life cycles | -0.095% | +1.172% | 方向反转 |
| VLS pipeline stall | -1.442% | +4.062% | 方向反转，隔离 |
| Global Memory Read bytes | -2.623% | +17.270% | 与静态 load/wave 不变矛盾，隔离 |
| MTE duty | -1.980% | -1.384% | 小幅同向，但受 replay 相位影响 |
| MMA duty | -2.001% | -1.390% | 小幅同向，但受 replay 相位影响 |
| Achieved/Dispatched waves | 0% | 0% | 两版完全一致 |
| Private read/write | 0 / 0 | 0 / 0 | 无 spill |

两轮均内部满足 achieved=dispatched 且 private=0，但关键 replay totals 随顺序反转，不能用于因果或 elapsed-time 判断。

## 7. 实验总结

方案有效，v024 接受并安装。证明来自未插桩同进程 Case2：repeat=200 的 12/12 和 repeat=2000 的 4/4 全部提升，中位分别为 1.6323% 和 1.8934%；三组 OJ 与官方 functional 均通过。

本版本没有降低访存量、算术量、同步数、寄存器压力或 occupancy 上限。收益对应一个非常局部的 ISA 调度改善：四个地址计算前置、四个 global load 连续发射、两个中间 `snop` 消失。profile replay 仍受设备相位和插桩影响，因此被透明保存并隔离。

最有价值的下一实验是保持当前 middle-swap 和 `1-2-1` 分组，进一步隔离半块内部方向或 address-generation 排布；每个候选继续采用同进程 AB/BA 长窗，并在通过后才抓 C++/ISA/profile。
