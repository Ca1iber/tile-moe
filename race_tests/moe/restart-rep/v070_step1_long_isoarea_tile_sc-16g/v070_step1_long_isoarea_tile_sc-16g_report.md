# v070 Step1 long-expert iso-area tile 报告（sc-16g）

## Verdict

`rejected`。Case1 全padding正确性通过，但严格同进程 AB/BA screen 相对精确 v59 稳定回归 `+38.565%`。不推进 `dorm`，不创建 `restart-submission/v070...`。

## Identity

- 分支/HEAD：`dorm` / `54ed80a4e54ce24616557c050f04c6c18afcdd28`
- v59：`30db950735b7986f985195d91ec579e64d0815841838f3415822b4389d9a73d9`
- v070：`f5d031209824a450fe9d134461374d900e6b4e7cddfa46070455b439037f6a67`
- 机器：MetaX C500，sc-16g，25% compute，16,000 MiB VRAM quota
- 软件：MX-SMI 2.3.1、KMD 3.8.30、MACA 3.7.1.5

## Mechanism

只改 Case1 长 expert Step1：

- 短 expert：保持 `BM128×BN128 / 256 threads / 4 waves`。
- 长 expert：从旧 hybrid 的 `BM256×BN128 / 512 threads / 8 waves` 改成 `BM256×BN64 / 256 threads / 4 waves`。
- `2×(N/128) == 1×(N/64)`，所以长 expert CTA 数与 dispatched waves 不应增加。
- accumulator 面积保持 `128×128 == 256×64`，长 expert padded MMA 总量不变。
- Step2保持v59。

## Compliance and correctness

- OJ source validator：PASS。
- Case1 generated-device validator：PASS。
- `memcpy_async_sites=0`，`barrier_wait_sites=0`，没有外部代码注入。
- Case1 full padded output correctness：PASS，先用7填充输出后与独立FP32 reference比较，`rtol=atol=1e-2`。

## Codegen/resources

| Kernel | Grid | Threads | MT reg/thread | ST reg/thread | Dynamic shared | Tracer private total |
|---|---:|---:|---:|---:|---:|---:|
| short Step1 | 64×8 | 256 | 218 | 52 | 32 KiB | 0 |
| long Step1 | 128×8 | 256 | **256** | 60 | 16 KiB | **20** |
| Step2 | 8×24 | 256 | 212 | 52 | 32 KiB | 0 |

Tile 变窄使 long B shared 从32 KiB降到16 KiB，但每个 wave 的 A row fragment 从32行增到64行；双 A fragment 把寄存器推到256上限，并出现private allocation。

## Clean paired screen

协议：Case1，同进程独立module cache，3轮AB/BA，warmup=3，repeat=100，device event；lower is better。

| Round | v59 ms | v070 ms | Change |
|---:|---:|---:|---:|
| 1 | 2.780462 | 3.851559 | +38.522% |
| 2 | 2.779666 | 3.851640 | +38.565% |
| 3 | 2.780117 | 3.852352 | +38.568% |

- median：`+38.565%`
- population stddev：`0.021%`
- 远离用户规定的 `>=1.2%` 晋级门槛。

## mcTracer stage attribution

两组AB/BA：

| Metric | v59 median | v070 median | Change |
|---|---:|---:|---:|
| Step1 | 1.741568 ms | 2.808064 ms | +61.238% |
| v070 short Step1 | n/a | 0.726912 ms | n/a |
| v070 long Step1 | n/a | 2.081152 ms | n/a |
| Step2 | 1.025536 ms | 1.038208 ms | +1.238% |

新 long kernel 单独就比整个 v59 Step1 更慢；split launch gap约0.041 ms，不是主因。

## mcProfiler

本轮 profiler 为多kernel、多批次replay的聚合口径，不能把其总字节与v59单kernel profile直接相除。可确定的资源证据是：

- Private Read Instructions：`4,096,000`
- Private Write Instructions：`65,536`
- AP MMA duty：`19.49%`
- AP MTE duty：`34.68%`
- Achieved/Dispatched waves相等。

因此该版本不是“流量没降”的简单失败，而是64×64 per-wave fragment形状造成寄存器/private-memory与operand-feed代价，覆盖了权重复用收益。

## Decision and next hypothesis

关闭双A的同步single-A版本有明确因果依据：旧8-wave实验中 single-A 曾把寄存器从218降到192并缩短长核。下一版本仅对新BM256×BN64长核关闭A ping-pong，检验能否消除256寄存器/private-memory问题；不复用v070性能结论。

