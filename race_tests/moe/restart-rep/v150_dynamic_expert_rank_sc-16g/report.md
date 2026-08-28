# v150 动态 expert-rank M128/M192 混合候选（sc-16g）

状态：**本地候选，等待外部 OJ；尚未写入 `restart-submission/`。**

## 身份

- 可靠父版本：v148 external-OJ-AC
- 父版本 SHA-256：`1079ec3d724ba479daf062a2d76f21d3c6842426ddc903254e9e256879a60840`
- v150 精确源码 SHA-256：`99f88bf0215ff092676ac1b95cf77cb9eabe81ad5b3701ee226636d3b2c4c9b1`
- 设备：MetaX C500，25% compute slice，16 GiB sGPU

## 问题与修复

v149 的 Case3 本地收益来自 short expert 使用 M128xN128、long expert 使用
M192xN64；但它把 expert `0..31`/`32..63` 分别写死为 short/long。v143
已经证明 OJ 会在相同 shape 下置换 expert ID，因此静态 v149 不能作为 OJ 候选。

v150 在每次 `run_kernel` 内先运行一个 64-thread TileLang kernel：

1. 从运行期 `group_sizes` 计算 short/long rank；
2. 将 64 项 `rank -> expert_id` 写入 int32 workspace；
3. short/long input prepack 和 Step1 CTA 通过该表访问真实 expert、真实 padded offset；
4. short Step1 将 `up_logits` 写到真实物理 block，而不是 short rank。

workspace 只复用未初始化存储；映射表在每次调用中都由提交的 TileLang kernel
完整重写，计算时间位于正式计时范围内，不跨调用缓存预处理结果。

## 正确性

- OJ AST/source validator：PASS。
- 固定 `32x100 + 32x184` Case3：全输出严格 PASS，`rtol=1e-2, atol=1e-2`。
- 同 shape 交错排列 `[100,184,100,184,...]`：全输出严格 PASS。
- 精确 v150 Case1/2：全输出严格 PASS。
- 未关闭 race checker，未使用 async copy、注入、外部代码或 MXMACA builtin。

交错排列单轮 paired cross-check：v148 `7.737088 ms`，v150 `7.405824 ms`，
变化 `-4.2815%`。此项以正确性为主，不作为正式性能结论。

## 正式 AB/BA

精确 v150 源码相对精确 v148，Case3 使用 5 轮、每轮 warmup=3/repeat=20：

| 轮次 | 顺序 | v148 ms | v150 ms | 变化 |
|---:|---|---:|---:|---:|
| 1 | AB | 7.593280 | 7.334541 | -3.4075% |
| 2 | BA | 7.604518 | 7.343757 | -3.4290% |
| 3 | AB | 7.587238 | 7.332864 | -3.3527% |
| 4 | BA | 7.608909 | 7.340518 | -3.5273% |
| 5 | AB | 7.607424 | 7.334374 | -3.5893% |

- 中位变化：**-3.4290%**
- 平均变化：**-3.4611%**
- population stddev：`0.0854%`
- 五轮全部超过 1.2% 晋级门槛。

精确源码的旁路 Case：

| Case | v148 ms | v150 ms | 变化 | 判定 |
|---:|---:|---:|---:|---|
| 1 | 2.160768 | 2.159462 | -0.0604% | strict PASS，噪声等价 |
| 2 | 3.931187 | 3.932647 | +0.0371% | strict PASS，噪声等价 |

## 代码生成与时间线

Case3 生成 6 个 kernel：

| Symbol | 角色 | MT | ST | 静态 wave 上限 |
|---|---|---:|---:|---:|
| `kernel_kernel` | 动态 expert-rank 表 | 4 | 18 | 8 |
| `kernel_kernel_1` | short input prepack | 18 | 20 | 8 |
| `kernel_kernel_2` | short M128xN128 Step1 | 226 | 42 | 2 |
| `kernel_kernel_3` | long input prepack | 16 | 20 | 8 |
| `kernel_kernel_4` | long M192xN64 Step1 | 202 | 32 | 2 |
| `kernel_kernel_5` | Step2 | 220 | 52 | 2 |

- stack/spill：0
- `memcpy_async_sites = 0`
- `barrier_wait_sites = 0`
- `mma_sites = 12`

mcTracer 最后一个稳态调用：

| Kernel | 时间 |
|---|---:|
| 动态映射 | 0.012544 ms |
| short prepack | 0.135936 ms |
| short Step1 | 1.832448 ms |
| long prepack | 0.259328 ms |
| long Step1 | 2.489344 ms |
| Step2 | 2.603776 ms |

动态预处理只占约 `0.17%` 的总 kernel 时间；主要收益仍来自 long expert
M192 CTA 减少 Gate/Up 重复读取和 padded MMA 工作。

## 晋级状态

v150 相对可靠 OJ-AC v148 在目标 Case3 清晰超过 1.2%，Case1/2 无回退，且
覆盖了曾导致 v143 WA 的 expert-ID 置换。它可以交给外部 OJ 验证，但在三 Case
外部 AC 且分数不回退之前，不更新 `restart-submission/` 或全局 SOTA。
