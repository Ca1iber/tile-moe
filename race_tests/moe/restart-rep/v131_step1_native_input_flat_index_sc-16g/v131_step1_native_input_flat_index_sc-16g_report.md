# v131_step1_native_input_flat_index_sc-16g 证据报告

## Verdict

- 结论：`rejected_codegen_not_materialized`。
- v131 将 consumer-native Step1 输入工作区由五维视图改成一维，并显式写出相同物理顺序的线性地址。
- 三个官方 case 的 generated device C++ 与 v110 **逐字节相同**，资源数也完全相同；TileLang/MXMACA 已自动把原五维索引规约成同一地址表达式。
- 按预注册 falsifier，本方向在正式计时、mcTracer、mcProfiler 之前终止；不创建 submission，不移动 SOTA。

## Identity

- Parent / incumbent：external-OJ-AC v110。
- Parent SHA-256：`439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`。
- Candidate SHA-256：`88634e748818b9e97970e91a3601725258229ae965a77591e69415153eb8325d`。
- Machine：MetaX C500 `sc-16g`；branch `dorm`；起点 commit `77fca6654a3b7340ce4a685697c91c40ef31abdc`。
- OJ source validation：PASS。
- 约束：TileLang primitives only；无 async copy、foreign injection、cache hack 或结果特化。

## Change and invariant

线性地址为：

```text
((((block * step1_k_tiles + k_tile) * 4 + native_vec) * 256 + thread) * 8 + elem)
```

prepack 写端和所有 consumer-native Step1 读端一起改写。元素总数、物理顺序、grid、tile、global bytes、barrier、copy/MFMA 顺序及 Step2 均保持不变。

## Gates

- Python syntax：PASS。
- OJ source validator：PASS。
- 三 case 编译/执行：PASS。
- 三 case 完整输出正确性：PASS，`rtol=1e-2, atol=1e-2`。
- correctness smoke 内附带的 `warmup=0, repeat=1` 事件时间只用于让检查脚本完成，不是 benchmark，禁止解释为性能收益。

## Codegen materialization

| Case | v110 generated SHA-256 | v131 generated SHA-256 | Result |
|---:|:---|:---|:---|
| 1 | `bcaea2c2c9ec00a7f0572711c43734e5a400b827965eea85ccbc1c7f60f2da14` | `bcaea2c2c9ec00a7f0572711c43734e5a400b827965eea85ccbc1c7f60f2da14` | byte-identical |
| 2 | `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c` | `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c` | byte-identical |
| 3 | `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2` | `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2` | byte-identical |

三个 case 的 kernel 资源也不变：prepack 分别为 70/78/78 MT，Step1 均为 226 MT、42 ST、2 waves/PEU，Step2 为 202/220/220 MT。

## Causal conclusion

源码层面的多维 Buffer 索引不是 v110 Step1 地址开销的独立来源；至少对当前常量 shape 和 native layout，lowering 已完成等价线性化。后续不应继续尝试纯 view/reshape/显式 stride 化，而应选择能改变动态指令、访存请求顺序、活跃 wave 或真实流量的机制。

## Promotion decision

- 1.2% candidate gate：未进入正式测量，因为 codegen falsifier 已触发。
- mcTracer / mcProfiler：未运行；机器码完全一致时不会提供新的因果证据。
- `restart-submission`：未创建。
- SOTA：仍为 v110，OJ ratios `[0.833778, 0.824765, 0.823671]`，latency `[2.243, 3.954, 7.680] ms`。

