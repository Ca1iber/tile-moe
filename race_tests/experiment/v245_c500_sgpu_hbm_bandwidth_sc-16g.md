# v245：C500 25% sGPU HBM 有效带宽实验（sc-16g）

## 1. 上版本遗留问题

sc-16g 的 `mx-smi` 明确显示 `Compute 25%`、`Vram Quota 16000 MiB`，但公开资料没有说明 HBM 带宽是否也被硬限制为整卡的 25%。整卡理论 DRAM-L2 带宽按 mcProfiler 的 `MAX_Bandwith=1843.2 GB/s` 计算，若线性切分，25% 上限应为 `460.8 GB/s`。

当前无法申请到 64G 整卡做同机对照，因此需要仅使用 sc-16g 判断 `460.8 GB/s` 硬限速假设是否成立，并估算空闲实例的实际持续带宽。

## 2. 问题原因分析

### 已验证结论

- 实验前后 `mx-smi` 均显示 C500 sGPU：`Compute 25%`、`Vram Quota 0/16000 MiB`，物理卡无其他进程。
- PyTorch 在容器内看到 104 个 multiprocessor、8 MiB L2 和约 15.584 GiB 可用显存；`Compute 25%` 并不等价于只枚举 26 个物理 AP。
- 64 MiB～2 GiB 工作集均远大于 8 MiB L2，1～2 GiB 结果可以用于判断持续 HBM 流式带宽。
- `mx-smi --show-hwinfo` 显示物理卡为 64 GB HBM2e，`--show-clock` 显示 MC 1800 MHz。
- sGPU 调度类为 `best effort`，时间片为 10 ms；`--show-remain` 显示整卡可用 compute quota 为 0%，表明物理卡的 100% compute quota 已分配给切片。
- streaming 运行中，`--show-ap-usage` 显示 104 个 AP 全部达到约 76%～77% 活跃度；当前 25% 配额不是固定启用 26 个 AP。

### 当前假设

- H0：HBM 带宽随 Compute 配额硬切为 25%，有效带宽不应超过约 `460.8 GB/s`。
- H1：Compute 和显存容量有独立配额，但 HBM 通道仍是共享资源；物理卡空闲时，25% sGPU 可以突发使用大部分整卡带宽。
- 当前 `best effort`、全 104 AP 活跃和约 1.4 TB/s HBM 的组合与 H1 一致。不过 `mx-smi --help` 只列出调度类名称，公开文档没有给出三种调度类的完整语义，因此不能仅根据名称声称存在最低保证或固定借用规则。

### 下一步需要验证的假设

- 多租户并发时是否存在 HBM 带宽 QoS，以及 sc-16g 是否有最低保证带宽，当前单租户实验无法回答。

## 3. 本版本解决方案

实现两套相互独立的设备端计时实验：

1. 使用 MXMACA `mxcc` 编译 16-byte 向量化 write、copy 和 triad kernel；
2. 使用 PyTorch `copy_` 和 `torch.add(out=...)` 交叉验证；
3. 预热 10 次、重复 31 次，使用 MACA/CUDA device event 记录 kernel 时间并取中位数；
4. copy 按一读一写计 `2N` 字节，triad/add 按两读一写计 `3N` 字节。
5. 使用 `mx-smi --show-hbm-bandwidth -l 100` 以 100 ms 间隔同步采样物理卡 HBM 实际吞吐，并抓取运行中的 AP 使用率。

若任一可靠流式结果显著超过 `460.8 GB/s`，即可否定 H0。代价是该实验只能测空闲时可获得的有效带宽，不能证明云平台对 sGPU 的保证带宽。

## 4. 具体落地策略

- MXMACA 源码：`race_tests/experiment/v245_c500_hbm_stream_sc-16g.cpp`
- PyTorch 交叉验证：`race_tests/experiment/v245_c500_hbm_torch_crosscheck_sc-16g.py`
- 原始数据：`race_tests/experiment/v245_c500_sgpu_hbm_bandwidth_sc-16g.csv`
- mx-smi 采样：`race_tests/experiment/v245_c500_mxsmi_hbm_samples_sc-16g.csv`
- 自写 kernel 配置：4096 blocks、256 threads、`float4` 连续访问；工作集 64、256、512、1024、2048 MiB。
- 最大分配：三个 2 GiB buffer，共约 6 GiB，不触及 16 GiB 配额上限。

编译与运行命令：

```bash
/opt/maca/mxgpu_llvm/bin/mxcc -x maca -offload-arch native \
  v245_c500_hbm_stream_sc-16g.cpp -O3 \
  -o v245_c500_hbm_stream_sc-16g --maca-path=/opt/maca
./v245_c500_hbm_stream_sc-16g
/opt/conda/bin/python v245_c500_hbm_torch_crosscheck_sc-16g.py
mx-smi --show-hbm-bandwidth -i 0 -l 100
mx-smi --show-ap-usage -i 0
mx-smi sgpu --show-sched-class -i 0
mx-smi sgpu --show-timeslice -i 0
```

## 5. Benchmark 对比

以下为 2 GiB 工作集。MXCC 两轮取对应中位带宽的平均值。

| 方法 | 模式 | 当前带宽 | 相对 25% 假设 460.8 GB/s | 相对整卡理论 1843.2 GB/s | 备注 |
|---|---|---:|---:|---:|---|
| 理论 | 25% 线性切分 | 460.8 GB/s | baseline | -75.0% | 待否定假设 |
| MXCC | write | 1584.4 GB/s | +243.8% | -14.0% | 单写流量 |
| MXCC | copy | 1440.5 GB/s | +212.6% | -21.9% | 一读一写 |
| MXCC | triad | 1428.7 GB/s | +210.0% | -22.5% | 两读一写 |
| PyTorch | `copy_` | 1424.5 GB/s | +209.1% | -22.7% | 独立实现 |
| PyTorch | `add(out=)` | 1464.5 GB/s | +217.8% | -20.5% | 两读一写，独立实现 |
| mx-smi | 活跃采样中位数 | 1411.5 GB/s | +206.3% | -23.4% | 驱动物理卡计数器 |
| mx-smi | 活跃采样峰值 | 1507.6 GB/s | +227.2% | -18.2% | 100 ms 采样窗口 |

两轮 MXCC 2 GiB copy 分别为 `1440.599`、`1440.352 GB/s`；triad 分别为 `1428.821`、`1428.659 GB/s`。结果远高于 460.8 GB/s，且跨轮稳定。

mx-smi 同步监控得到 11 个大于 1 TB/s 的完整活跃采样，中位数为 `1,411,481 MB/s`，峰值为 `1,507,625 MB/s`；与 device event 结果一致。两个较低的 `316,317`、`678,423 MB/s` 样本发生在 workload 启停或不同规模阶段切换，未作为稳定平台计算。

## 6. Profile 指标变化

本实验目标是测有效持续带宽，因此使用 device event 而不是 mcProfiler 的 Roofline 派生带宽。

| 指标 | 结果 | 解释 |
|---|---:|---|
| 物理 multiprocessor 枚举 | 104 | sGPU 未只暴露 25% AP 数量 |
| L2 | 8 MiB | 1～2 GiB 工作集不会驻留 L2 |
| MXCC 2 GiB copy P10～P90 | 1437.9～1442.6 GB/s | 波动小，形成稳定平台 |
| MXCC 2 GiB triad P10～P90 | 1426.4～1430.3 GB/s | 与 copy 平台一致 |
| PyTorch 2 GiB copy | 1424.5 GB/s | 独立实现复现约 1.4 TB/s |
| PyTorch 2 GiB add | 1464.5 GB/s | 独立两读一写复现结论 |
| mx-smi HBM 活跃采样中位数 | 1411.5 GB/s | 驱动计数器直接确认事件计时结果 |
| mx-smi HBM 活跃采样峰值 | 1507.6 GB/s | 100 ms 窗口内峰值 |
| 运行中 AP 使用率 | 104/104 AP 均约 76%～77% | 配额不是固定物理 AP 切分 |
| sGPU 调度类 / 时间片 | best effort / 10 ms | 与跨全 AP 的时间片调度行为一致 |
| 运行中 `sgpu --show-usage` | 0% | 短 kernel 下采样窗口无效，不用于结论 |

TODO：若能同时获得同一物理卡上的其他 sGPU，应增加双租户并发 streaming 实验，测定竞争下的带宽分配与最低值。

## 7. 实验总结

H0 已被否定：sc-16g 的 HBM 带宽没有随 `Compute 25%` 被硬切为 `460.8 GB/s`。在物理卡空闲、单租户条件下，25% sGPU 的混合读写持续有效带宽稳定在约 `1.43～1.46 TB/s`，约为整卡理论 `1.8432 TB/s` 的 77%～79%；单写 kernel 可到约 `1.58 TB/s`。mx-smi 的驱动计数器以约 `1.41 TB/s` 的稳定中位数独立确认了这一结果。

运行中 104/104 AP 同时活跃，说明当前 sGPU 是跨整卡 AP 的调度/时间片隔离，而非固定 25% AP 的物理切分；这也解释了为什么它能访问大部分整卡 HBM 带宽。当前调度类是 `best effort`，因此该带宽应描述为“空闲时可获得的共享带宽”，而不是保证配额。

工程上建议：

- 为当前 sc-16g MoE Roofline 使用 `1.4 TB/s` 作为保守的单租户实测带宽；
- 保留 `1.8432 TB/s` 作为物理整卡理论屋顶；
- 不把 `1.4 TB/s` 描述为云平台保证配额，因为邻居竞争时它可能下降；
- 若把此前约 `894 GB/s` 的 mcProfiler 派生值与本次实测口径近似比较，则约为实测屋顶的 62%，而不是整卡理论屋顶下的 48.5%；两者计数口径仍需谨慎区分。
