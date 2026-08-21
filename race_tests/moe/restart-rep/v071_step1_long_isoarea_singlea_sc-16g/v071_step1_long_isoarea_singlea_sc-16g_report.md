# v071 Step1 long-expert iso-area single-A 报告（sc-16g）

## Verdict

`rejected`。single-A 消除了 v070 的寄存器上限/private allocation，长 kernel 从约 2.081 ms 降到 1.295 ms，但 Case1 端到端仍相对精确 v59 稳定回退 `+9.889%`。不推进 `dorm` kernel，不创建 submission。

## Identity

- 分支/父 HEAD：`dorm` / `da49681e750f8006bd898ef0bb5abfd4f037d5bf`
- v59 SHA-256：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- v071 SHA-256：`839de7135f5abff91b5e1c285fc7cedd8d530cacf03078ece78997b4b6e6721f`
- 机器：MetaX C500，sc-16g，25% compute，16,000 MiB VRAM quota
- 软件：MX-SMI 2.3.1、KMD 3.8.30、MACA 3.7.1.5

## Mechanism

只改 v070 的 Case1 长 expert Step1：保留 `BM256×BN64 / 256 threads / 4 waves`，把双 A fragment 改成逐 K tile 的同步 single-A。短 expert 与 Step2 保持 v59。

## Compliance and correctness

- OJ source validator：PASS；Case1 generated-device validator：PASS。
- `memcpy_async_sites=0`，没有异步 copy 或 foreign-code 注入。
- Case1 full padded output：PASS；输出先填 7，再对独立 reference 以 `rtol=atol=1e-2` 校验。

## Codegen/resources

| Kernel | Grid | Threads | MT reg/thread | Dynamic shared | Tracer private total |
|---|---:|---:|---:|---:|---:|
| short Step1 | 64×8 | 256 | 218 | 32 KiB | 0 |
| long Step1 | 128×8 | 256 | **222** | 16 KiB | **0** |
| Step2 | 8×24 | 256 | 212 | 32 KiB | 0 |

相对 v070，long kernel 从 256 MT registers/thread、private total 20 降到 222、0，证明 single-A 确实解掉了资源压力。

## Clean paired screen

协议：Case1，同进程独立 module cache，3 轮 AB/BA，warmup=3，repeat=100，device event；lower is better。

| Round | v59 ms | v071 ms | Change |
|---:|---:|---:|---:|
| 1 | 2.778514 | 3.053642 | +9.902% |
| 2 | 2.779057 | 3.053596 | +9.879% |
| 3 | 2.779333 | 3.054177 | +9.889% |

- median：`+9.889%`
- population stddev：`0.0095%`
- 未达到用户规定的 `>=1.2%` 晋级门槛。

## mcTracer stage attribution

| Metric | v59 median | v071 median | Change |
|---|---:|---:|---:|
| Step1 total | 1.738240 ms | 2.025088 ms | +16.502% |
| v071 short Step1 | n/a | 0.729600 ms | n/a |
| v071 long Step1 | n/a | 1.295488 ms | n/a |
| Step2 | 1.029248 ms | 1.032192 ms | +0.286% |
| Step1→Step2 gap | 0.028416 ms | 0.002816 ms | -90.1% |

启动空泡没有造成回退；v071 的空泡反而更小。回退来自长 Step1 kernel 本体，说明当前问题是 tile 内 operand load/MMA 调度效率，而不是 kernel 间重叠。

## Decision and next hypothesis

single-A 证明减少 live A 状态有效，但完全同步会失去 load/MMA 隐藏。下一轮只在已消费的 32-column A stripe 中滚入下一个 K tile，保留 222-register 级别的单 A 容量，同时恢复部分访存重叠；若仍慢于 v59，则关闭 BM256×BN64 路径。
