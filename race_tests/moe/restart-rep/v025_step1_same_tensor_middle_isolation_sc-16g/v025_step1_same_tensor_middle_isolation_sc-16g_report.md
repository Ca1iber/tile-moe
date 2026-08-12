# v025_step1_same_tensor_middle_isolation_sc-16g 证据报告

## Verdict

- 运行类型：screen + repeated verdict benchmark
- 结论：rejected
- 因果结论：同张量 middle-copy 排序没有可复现收益；首轮 up-middle 的 3.40% 改善随设备进入稳定 1125 MHz 状态后完全消失，属于设备状态假阳性。

## Identity

- Machine：sc-16g，C500 25% sGPU，16 GiB quota
- Git：`dorm@afca5cfb58e42925a44723fc7c13d2c29c284674`
- Parent SHA-256：`8679b644dabbfa5db5438bb841b4e48b6facea3a54c851069caa99996ec4403e`
- up-middle SHA-256：`ec1a5d75fec8cfeeff88d9c0c9f0d51ccd357e66fcaf7379295f4c769a2625d1`
- gate-middle SHA-256：`8d2ead9a9cc98f2dcf59ae14a1739ed1815dd9c0607c5df73a9c26df5d9d2136`
- Balanced harness SHA-256：`690ef9da9e48e1ef68a76d2cbed6713bff75b2fc2446030d58ab374fdecfb078`
- KMD / MACA：3.8.30 / 3.7.1.5；mx-smi 2.3.1

## Correctness

- `python -m py_compile`：两个候选均 PASS。
- Case2 OJ screen：两个候选均 PASS，最大绝对误差 `0.001953`。
- 四实例平衡脚本：parent/candidate 各两个独立实例均以 `torch.assert_close(rtol=1e-2, atol=1e-2)` PASS。
- 未执行全三 case official correctness，因为性能机制已被复测证伪且候选未进入 acceptance gate。

## Benchmark

### 四实例编译顺序平衡测量

| 对比 | 协议 | parent median | candidate median | balanced median | 改善轮数 | 判定 |
|---|---:|---:|---:|---:|---:|---|
| v024 vs up，首次 | 8×500 | 5.292 ms | 5.112 ms | -3.402% | 8/8 | 假阳性，不能跨会话复现 |
| v024 vs up，独立长测 | 4×1000 | 4.975 ms | 4.973 ms | -0.049% | 4/4 | 噪声内 |
| v024 vs up，同频监控复测 | 4×500 | 4.976 ms | 4.977 ms | +0.011% | 0/4 | 等价/微退化 |
| v024 vs gate | 8×500 | 4.979 ms | 4.971 ms | -0.163% | 8/8 | 接近自对照噪声 |
| v024 vs v024 自对照 | 4×500 | — | — | -0.118% | 4/4 | 噪声带证据 |
| up vs up 自对照 | 4×500 | — | — | +0.018% | 0/4 | 噪声带证据 |

相同源码的两个编译实例生成代码 SHA 完全相同；up-middle 与 parent 的设备代码 SHA 分别稳定为 `c531a104...` 与 `57d0974d...`，因此复测消失不是候选未重新编译。

## mx-smi 同步采样

- 空闲：XCORE 428 MHz，MC 1800 MHz，约 34–51 W，Idle throttle active。
- 活跃稳态：XCORE 1125 MHz，MC 1800 MHz，约 258–271 W，HBM throughput 约 716817–719537 MB/s。
- 活跃稳态下 Applications Limit、Over Power、温度、PCC、Power Brake、DIDT 等限频原因均为 Not Active。
- 第三次 v024/up 测量覆盖上述稳定活跃区间，结果 `+0.011%`，直接证伪源码收益。
- 原始人工抽样转录见 `profiler/mxsmi/manual_samples.csv`。

## Lowering and code generation

- up-middle 与 gate-middle：212 MT、52 ST、2 waves、无 spill。
- 两者：3232 static instructions、390 `snop`、25856 B code，MMA/加载/存储/barrier 静态数量一致。
- v024 的关键段为四次地址 `mad_i32` 后四条连续 `ldg_b128`；两个 v025 变体重新出现 `snop` 与 `ldg_b128` 交错，没有减少地址生成或静态 stall。
- 静态 `snop` 退化与运行态首轮“加速”相矛盾，也是继续做跨会话测量而非直接接纳的原因。

## Profile / Roofline

- 未运行 mcTracer/mcProfiler：候选在同频 benchmark acceptance gate 已失败，继续 profile 不能改变接纳结论。
- FLOPs、字节量、tile shape、grid、资源和同步结构均未改变，理论 Roofline 点与 v024 相同；未重复生成无信息增量的图。

## Causal interpretation

- 预测指标未稳定按方向变化。
- 生成代码确实变化，但收益不跨会话复现。
- 第一轮 parent 约 5.29 ms，后续 parent 稳定约 4.98 ms；候选差异随 parent 慢态消失。
- 本版本暴露了基准协议的新混杂因素：编译顺序与测量顺序平衡之后，仍必须加入设备稳态门禁和跨进程/跨会话重复。
