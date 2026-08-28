# v151 动态映射 + 8-wave 双 panel input prepack 候选（sc-16g）

状态：**本地候选，等待外部 OJ；尚未写入 `restart-submission/`。**

## 身份

- 性能父版本：v150 dynamic expert-rank local candidate
- 父版本 SHA-256：`99f88bf0215ff092676ac1b95cf77cb9eabe81ad5b3701ee226636d3b2c4c9b1`
- v151 精确源码 SHA-256：`bd123e3d5accd98bb572ab64acfa9bffcc37578d04b4f6ef9f812230f01f2fd5`
- 可靠外部 OJ-AC 祖先：v148
- 设备：MetaX C500，25% compute slice，16 GiB sGPU

## 改动

v151 只改 Case3 的 long-expert input prepack，保留 v150 每次调用重建的
动态 expert-rank 表和 M128/M192 混合 Step1：

1. 将 M192 input bridge 从 48 KiB 改成两个 96-row phase 复用的 24 KiB shared；
2. 一个 CTA 连续处理两个相邻 128-column panel，long-prepack CTA 数减半；
3. prepack CTA 从 256 threads 提到 512 threads，8 个 producer waves 持续发出访存；
4. 只有原来的前 256 threads 写 native fragment slots，保持 Step1 消费布局不变。

这是一种**计入正式时间的输入布局预处理**：从原始 row-major input 读取，经同步
shared bridge 重排到 Step1 的 native fragment workspace。它不预计算输出，不跨
`run_kernel` 缓存结果，也不在 warmup 偷做预处理。

## 正确性与合规

- OJ source validator：PASS。
- 固定 `32x100 + 32x184` Case3：全有效行严格 PASS，`rtol=1e-2, atol=1e-2`。
- 交错 expert 排列 `[100,184,100,184,...]`：全有效行严格 PASS。
- Case1/2：全有效行严格 PASS。
- 未关闭 race checker；未使用 async copy、代码注入、外部代码、MXMACA builtin
  或跨调用缓存。
- 精确 Case3 生成设备代码中 `memcpy_async_sites=0`、
  `barrier_wait_sites=0`。

交错排列单轮检查为 v150 `7.507968 ms`、v151 `7.282432 ms`，变化
`-3.0040%`；该项主要用于覆盖 v143/v149 暴露的 expert-ID 置换风险，不作为
正式性能结论。

## 正式 AB/BA

精确 v151 相对精确 v150，Case3 使用 5 轮、每轮 warmup=3/repeat=20：

| 轮次 | 顺序 | v150 ms | v151 ms | 变化 |
|---:|---|---:|---:|---:|
| 1 | AB | 7.330022 | 7.219699 | -1.5051% |
| 2 | BA | 7.334669 | 7.227981 | -1.4546% |
| 3 | AB | 7.336077 | 7.229261 | -1.4560% |
| 4 | BA | 7.335616 | 7.224345 | -1.5169% |
| 5 | AB | 7.335335 | 7.226279 | -1.4867% |

- 中位变化：**-1.4867%**
- 平均变化：**-1.4839%**
- population stddev：`0.0252%`
- 五轮全部超过 1.2% 晋级门槛。

旁路 Case 使用精确源码、warmup=5/repeat=10：

| Case | v150 ms | v151 ms | 变化 | 判定 |
|---:|---:|---:|---:|---|
| 1 | 2.190003 | 2.185139 | -0.2221% | strict PASS，噪声等价 |
| 2 | 3.956121 | 3.938074 | -0.4562% | strict PASS，噪声等价 |

相对可靠 OJ-AC v148 的本地累计倍率为：

`1.03550788 (v148->v150) * 1.01509160 (v150->v151) = 1.05113535`

即累计约 **+5.1135%**。

## 代码生成与 mcTracer 因果闭环

Case3 仍为 6 个 kernel：

| Symbol | 角色 | MT | ST | 静态 wave 上限 |
|---|---|---:|---:|---:|
| `kernel_kernel` | 动态 expert-rank 表 | 4 | 18 | 8 |
| `kernel_kernel_1` | short input prepack | 18 | 20 | 8 |
| `kernel_kernel_2` | short M128xN128 Step1 | 226 | 42 | 2 |
| `kernel_kernel_3` | long 2-panel input prepack | 28 | 30 | 8 |
| `kernel_kernel_4` | long M192xN64 Step1 | 202 | 32 | 2 |
| `kernel_kernel_5` | Step2 | 220 | 52 | 2 |

- stack/spill：0
- `mma_sites=12`
- `syncthreads_sites=15`

mcTracer 稳态中位时间：

| Kernel | v150 | v151 |
|---|---:|---:|
| 动态映射 | 0.012544 ms | 0.012416 ms |
| short prepack | 0.135936 ms | 0.135552 ms |
| short Step1 | 1.832448 ms | 1.828864 ms |
| long prepack | 0.259328 ms | 0.157824 ms |
| long Step1 | 2.489344 ms | 2.480128 ms |
| Step2 | 2.603776 ms | 2.617344 ms |

long prepack 减少约 `101.504 us`、即 **39.14%**；其余主 kernel 基本持平。
这与端到端约 1.49% 收益在量级上闭合，说明收益来自减少 CTA/launch 内调度
开销并提高同步预处理的访存并发，而不是计时噪声或隐藏计算。

## 晋级状态

v151 已通过本地 1.2% 门槛和所有已知动态正确性门禁，可交给外部 OJ。只有
三 Case 外部 AC 且总分不回退后，才把它复制到 `restart-submission/` 并更新
全局 SOTA；当前保持 v148 external-OJ-AC submission 不变。
