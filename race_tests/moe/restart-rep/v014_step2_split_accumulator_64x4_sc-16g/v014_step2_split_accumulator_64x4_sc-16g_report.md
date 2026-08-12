# v014_step2_split_accumulator_64x4_sc-16g 证据报告

## Verdict

- 运行类型：screen + clean paired OJ + paired mcTracer + order-balanced targeted mcProfiler。
- 结论：rejected_screen；候选未替换工作 kernel，v013 保持 accepted_current_best。
- 一句话因果结论：四个 64 列 fragment 将 Step2 MT register 从 196 降到 188，但仍为 2 waves/PEU，最终 MMA/访存/barrier 指令流不变；clean OJ 与 mcTracer 均无超噪声收益，说明未跨 occupancy 阶梯的寄存器下降不是当前 latency 杠杆。

## Identity

- Machine：sc-16g；MetaX C500 25% sGPU；best-effort 10 ms time slice；当前运行期可见 104 AP。
- Git branch / parent：`dorm@bd685e248c6bd3cd083768698f53935ea02baa1d`。
- 工作 kernel（v013）SHA-256：`7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`。
- v014 candidate SHA-256：`82cbd989d0630736512990966384266896a9d73baacd5712bc34466a8b65e9a1`。
- Official / OJ benchmark SHA-256：`adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f` / `1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8`。
- Toolchain：Python 3.12.11；PyTorch `2.8.0+metax3.7.1.3`；TileLang dev build `0.1.9+cuda.gitbd685e24`；MACA 3.7.1.5；mcProfiler 3.8.1.4；mx-smi 2.3.1。

## Correctness

- 隔离源码 runner 直接复用项目 `oj_benchmark.build_case/run_case/reference_output`，不修改 shape、输入构造、容差或计时实现。
- Case1/2/3 均 PASS；`max_abs=0.001953125`；冒烟使用 warmup=1/repeat=3。
- Clean paired campaign 中的 18 个 case 样本全部再次执行相同 correctness gate并 PASS。

## Benchmark

- 协议：3 对独立进程，顺序 AB/BA/AB；每个 variant sample 均 fresh process；三 case 均 warmup=10、repeat=100；每个样本前检查另一个工作树、benchmark 和 profiler 进程。
- Case1：v013 `3.077447 ms`，v014 `3.072497 ms`；逐对候选变化 `-0.304%/+0.049%/-0.227%`，均值 `-0.161%`。
- Case2：v013 `5.415354 ms`，v014 `5.413637 ms`；逐对变化 `+0.011%/-0.079%/-0.027%`，均值 `-0.032%`。
- Case3：v013 `10.625374 ms`，v014 `10.622886 ms`；逐对变化 `-0.011%/+0.012%/-0.071%`，均值 `-0.023%`。
- 三个 case 的逐对方向均不完全一致，改善量不超过本 campaign 波动；不接受为性能提升。
- 官方 benchmark 未运行：候选已由精确 OJ paired screen 证伪，未晋级 verdict。原因与恢复状态见 `benchmark/official_UNAVAILABLE.md`。

## Profile

### mcTracer

- Case3 三对 AB/BA/AB；每次显式绑定源码、warmup=3，只截取 `mcProfilerStart/Stop` 内的两个 kernel。
- v013 Step1/Step2 中位数：`7.072768/3.548160 ms`；v014：`7.036416/3.539456 ms`。
- Step2 逐对变化：`+0.116%/-0.253%/-0.101%`，平均 `-0.079%`、中位 `-0.101%`；符号不一致且绝对量小于约 0.01 ms。
- 第二对 v014 launch gap 出现 `0.285184 ms` 时间片异常；因此 device span 不用于候选判断，只比较 Step2 kernel duration。

### mcProfiler

- 两个顺序平衡 campaign：先 v013→v014，再 v014→v013；Case3 Step2；显式 source hash；per-kernel；counts=1；相同 targeted metric 列表。
- 两轮均为 private read/write `0/0`；Achieved/Dispatched waves 在同轮版本间完全相同；AP active cycles 接近。
- v014 相对 v013：aggregate `Total Cycles -12.24%/-9.75%`；Average Wave life `+0.57%/+0.32%`；Global Read `+0.45%/+0.43%`；VL1 stall sum `+0.12%/+0.33%`；shared latency `+0.55%/+0.59%`；shared non-conflict 继续为 100%。
- 证据冲突处理：报告的 `Total Cycles` 单位为 Kcycles，绝对量约 7–8e9 cycles，明显是 profiler 多 pass/replay 的累计量，不是一次约 3.54 ms Step2 的关键路径时间。它可证明 CE 累计资源量下降，但不能覆盖 clean device-event 与 mcTracer 的 latency 结论。
- 因为 candidate 未晋级 verdict，不追加 RoofLine pass；v013 的最新 Roofline 已证明 Step2 位于物理 ridge 附近、在 1400 GB/s 保守实测 roof 下为 memory-side。版本专用缺失说明见 `moe-roofline/.../UNAVAILABLE.md`。

### mx-smi

- 关闭版本时保存只读硬件快照；未做版本专用同步 HBM/AP 长负载，因为 clean paired OJ 已无可测收益，无法把带宽差异解释成 latency 改善。
- 不复用 v013 的 1060.849 GB/s 作为 v014 实测值；缺失说明见 `profiler/mxsmi/UNAVAILABLE.md`。

## Lowering and code generation

- TileLang 源级唯一机制：Step2 emitter/fragment width 128→64，fragment 数 2→4；CTA output tile 256、grid、BK=64、threads=256、num_stages=1、shared weight buffer 256x64 均不变。
- Generated C++：source bytes `26451 -> 33856`、静态 MFMA call sites `8 -> 12`、for sites `56 -> 76`；这是宏展开结构，不等于最终执行工作增加。
- MXCC resource：Step1 保持 198 MT/28 ST/2 waves；Step2 `196 -> 188 MT`，28 ST、2 waves，0-byte stack frame。
- 最终 xcore1000 ISA Step2：code bytes `20856 -> 20808`；static instructions `2607 -> 2601`；MMA 256、global load/store 32/32、shared load/store 64/16、barrier 3、arrive 121、private load/store 0/0、spill 0/0，全部保持。
- 这证明编译器确实物化了寄存器下降，但核心执行、同步和访存路径没有改变，也未跨 occupancy tier。

## Causal interpretation

- 预测指标是否按方向变化：部分命中。MT register 从 196 降到 188，private traffic 保持 0；但 wave 上限没有提高，global read、VL1 stall 和 shared latency小幅变差。
- 端到端与分阶段是否一致：一致，二者均没有超过噪声的改善。
- 生成代码是否变化：是；最终 ISA 仅有少量控制/地址选择差异，MMA/访存/barrier 主体不变。
- `Total Cycles` 是否意味着候选快 10%：否。该值属于 multi-pass aggregate counter；单次 latency 的权威证据是 clean event 与 mcTracer，均不支持 10% 加速。
- 瓶颈是否迁移：没有。v014 没跨寄存器 occupancy 阶梯，Step2 仍受相同的内存/同步/工作量约束。
- 决策：拒绝 v014，保留候选和全部原始证据；工作 kernel 无需恢复，因为从未替换 v013。

## 下一步

- 不继续做 32 列 fragment：它会进一步增加源级分段而当前 64 列已证明 occupancy 不变。
- 下一轮回到占 Case3 两 Kernel 时间约 2/3 的 Step1，测试“保持 BN=128/CTA 数不变、串行化 gate/up accumulator 生命周期”的资源机制。它区别于 v003 的 BN64：目标是降低同时存活的 FP32 accumulator 并争取跨越 occupancy tier，同时通过生成代码先量化输入重读与寄存器变化。
