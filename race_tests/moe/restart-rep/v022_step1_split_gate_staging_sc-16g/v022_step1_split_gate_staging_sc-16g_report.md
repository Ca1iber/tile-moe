# v022_step1_split_gate_staging_sc-16g 证据报告

## Verdict

- 运行类型：verdict
- 结论：**accepted**
- 因果结论：Case2 Step1 将 gate/A 的两个半块交错 staging 后，后端把较长的 global-load burst 拆成更早完成的两条 load → `gvmcnt(1/0)` → shared-store 窗口，MT register 214→212、VLS pipeline stall -22.784%，最终使 OJ Case2 配对中位数 -1.812%、mcTracer Step1 中位数 -3.530%。

## Identity

- Machine：sc-16g，MetaX C500，25% compute slice，16 GiB VRAM quota。
- Branch / parent commit：`dorm` / `3439b479ae6e462864cc02089306acf790dcd082`；本报告在 v022 commit 前采集。
- Parent SHA：`fe5dbc61802e3777e7305163fb4f3d2251c78102b1f2b97eba450dbbb78e2e45`。
- Candidate/main SHA：`96f2eb1c71e8bd5d8e3bde840e9497d3761475bb0b7bb1f5071e5beb54f553b8`。
- Official benchmark SHA：`adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f`。
- OJ benchmark SHA：`1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`。
- mx-smi：2.3.1；KMD 3.8.30；MACA 3.7.1.5。其余环境见 `v022_step1_split_gate_staging_sc-16g_environment.txt`。

## Correctness

- 官方 `fusedmoe_benchmark.py`：2/2 functional tests PASS。
- 已安装主文件 OJ：Case1/2/3 全部 PASS，`rtol=1e-2`、`atol=1e-2`，三组 `max_abs=0.001953125`。
- 长跑：Case2 warmup 10 / repeat 2000，PASS，`max_abs=0.001953125`。
- Case1、Case3 的 v021/v022 generated device C++ SHA 分别完全相同：`1a50eb...`、`c80f44...`，证明特化没有外溢。
- quarter 候选被正确拒绝：26,694,367 / 32,571,392 元素不匹配（82.0%），最大绝对误差 3.975586；同时资源膨胀至 256 MT / 72 ST。

## Benchmark

### 判定基准：OJ Case2 严格配对

- 协议：4 组 AB/BA 配对、fresh process、warmup 10、repeat 100。
- v021：`[5.172250, 5.177490, 5.211566, 5.172787] ms`，median `5.175139 ms`。
- v022：`[5.085148, 5.086968, 5.082693, 5.075740] ms`，median `5.083921 ms`。
- 每对变化：`[-1.6840%, -1.7484%, -2.4728%, -1.8761%]`。
- 配对中位数：**-1.812238%**；配对均值：**-1.945331%**；4/4 正收益。

### 安装后终验

- OJ Case1：`3.072599 ms`，PASS。
- OJ Case2：`5.096737 ms`，PASS。
- OJ Case3：`10.332168 ms`，PASS。
- mx-smi 同步长跑 Case2：`5.083599 ms`，repeat 2000，PASS。
- 官方性能形状：`80.630835 ms`、`25.546143 ms`；此处只作回归门禁，不替代 OJ 判定。

## Profile

### mcTracer：Case2 配对

- Step1 v021 median `3.411968 ms` → v022 `3.300352 ms`；每对 `[-3.5295%, -3.1588%, -3.5824%]`，中位数 **-3.529500%**。
- Step2 median `1.799424 ms` → `1.790720 ms`；源码未变，此小幅变化视为测量波动，不归因给优化。
- Device span median `5.239552 ms` → `5.121536 ms`，配对中位数 **-2.296380%**。
- launch gap 样本有一次 0.055296 ms 离群值，因此不用于因果判断。

### mcProfiler：Case2 Step1 targeted replay

mcProfiler 仅作方向性计数器证据，elapsed-time 权威仍为 OJ/mcTracer。

- Total Cycles：-7.844%。
- Average Wave life cycles：-0.699%。
- VLS pipeline stall：**-22.784%**。
- average latency of all stages per instruction：**-1.999%**。
- AP MTE Duty：38.51% → 39.31%（+2.077%）。
- AP MMA Duty：25.05% → 25.57%（+2.076%）。
- Achieved/Dispatched waves：均为 2,863,304，前后一致。
- Private Read/Write Instructions：均为 0。
- Global read bytes：+0.492%；global write bytes：+0.0001%，说明收益不是少搬数据。

### mx-smi

- repeat=2000 期间观察到 6 个高负载样本：board GPU-util 96%，25% slice sGPU-util 96%，VRAM `3986/16000 MiB`。
- workload 前后空闲样本恢复为 0%，无残留 GPU 进程。

## Roofline

- Step1 FLOP：360,777,252,864；AI 沿用同形状模型 `84.8284 FLOP/byte`。
- mcTracer median 对应 v021 `105.739 TFLOP/s`、v022 `109.315 TFLOP/s`。
- 以 1400 GB/s 保守 slice sensitivity roof 计算，HBM ceiling 为 `118.760 TFLOP/s`；v022 达到约 92.04%。
- 以 1843.2 GB/s 物理理论带宽计算，ridge point 为 `86.81 FLOP/byte`，该点仍略位于 HBM 区域。
- 优化没有改变 AI 或 bound 分类；它提高的是既有内存/operand pipeline 的可利用率。

## Lowering、device C++ 与 ISA

- Case1/3 device C++ 与 v021 字节相同；只有 Case2 Step1 改变。
- v021 Step1：24832 code bytes、3104 static instructions、214 MT / 52 ST、2 waves/PEU。
- v022 Step1：25856 code bytes、3232 static instructions、212 MT / 52 ST、2 waves/PEU。
- 两者均为 256 个静态 MMA、64 shared loads、16 shared stores、4 barriers、92 arrives、0 private load/store、0 spill annotation。
- v022 的静态 global-load site 34→42、`snop` 367→390，是切片寻址/控制的成本；动态 global bytes 基本不变。
- 关键汇编窗口由较长 load burst 改成两条 `ldg_b128` 后立即 `arrive gvmcnt(1/0)` 并 `sts_b128`。性能和 stall 指标证明早 staging 的收益大于额外地址指令成本。

## Causal interpretation

预测与观测一致：Step1 elapsed time、VLS stall、流水延迟和 MT register 同时下降，MTE/MMA duty 同时上升；工作量、waves、dynamic bytes、正确性和其他 OJ shape 保持不变。even-only/odd-only 负优化说明“只降 register”不是充分条件，两个 ping-pong 半轮必须保持统一调度；quarter 失败说明 TileLang 切片粒度不能无限细化。当前瓶颈仍是 HBM/operand staging 利用率，下一轮应围绕 half-granularity 的地址计算去重或后端调度继续，而不应直接扩展成四分块。
