# v129 MXCC fast-math 候选报告（sc-16g）

## 结论

v129 以外部 OJ SOTA v110 为精确父版本，只在公开的 TileLang JIT 配置中启用 `TL_ENABLE_FAST_MATH`。本地三 Case correctness、OJ source/generated gate 均 PASS，且本地长测显示 Case1 中位提升 `1.605886%`；但用户于 2026-08-25 报告外部 OJ 判定为 `WA`。正确性 gate 优先于一切本地性能证据，因此 v129 最终状态为 `rejected_external_oj_wa`，正式 SOTA 与 `restart-submission/SOTA.json` 均保持 v110，后续优化从 v110 精确源码重新开始。

## 单一机制

算法、tile、grid、buffer、谓词、barrier、MMA 和 launch 全部不变。唯一改动为：

```python
tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True
```

该配置是 TileLang 公开 pass，经 MXCC 物化为 `-use-fast-math`；无 async copy、foreign source、结果缓存、Torch 代算或 harness 修改。

## Benchmark

协议：同进程 device-event AB/BA 5 轮，warmup=20，repeat=50；负值表示 v129 更快。

| Case | 五轮变化 | 中位 | pstdev | correctness |
|---:|---|---:|---:|---|
| 1 | `-1.874 / -1.573 / -1.867 / -1.606 / -1.600%` | `-1.605886%` | `0.136430%` | PASS |
| 2 | `-0.474 / -0.462 / -0.600 / -0.530 / -0.432%` | `-0.474469%` | `0.059189%` | PASS |
| 3 | `-0.413 / -0.464 / -0.430 / -0.401 / -0.406%` | `-0.412662%` | `0.022888%` | PASS |

Case1 超过用户规定的 `1.2%` 候选门槛，Case2/3 每轮均非回退。

## Codegen 与 ISA 因果证据

- 三 Case generated C++ 与 v110 逐字相同；MMA、同步点、地址和资源未改变。
- 资源保持：Case1 `70/226/202 MT`，Case2/3 `78/226/220 MT`；Step1/Step2 均为 2 waves/PEU，无 private allocation。
- Case1 严格数学 ISA 为 `10,412` 行，fast-math ISA 为 `9,772` 行。
- 两份 ISA 均保留 64 个 `exp_f32` 和 64 个 `rcp_f32`；v129 删除严格除法的 64 个 `div_fixup_f32`、64 个 `div_fmas_f32`、128 个 `div_scale_f32`。
- 严格/fast ISA SHA256：`a6d6ba5b... / 4415c62f...`。

因此收益不是 CTA 调度、occupancy 或源码结构偶然变化，而是 Step1 SiLU 除法后端链真实缩短。

## mcTracer 归因

Case1 三对 AB/BA、warmup=5 的正确三-kernel汇总：prepack `-1.205%`（约 0.00026 ms 的计时量化）、Step1 `-2.203%`、Step2 `+0.834%`、GPU span `-1.252%`。主要收益明确落在 Step1；Step2 和 launch gap 没有机制改动，以 5x50 clean benchmark 作为端到端裁决。

## mcProfiler 状态

从正确安装目录重试后，目标程序完成 `PROFILE_DONE`，但硬件返回 `Access perfcount channel failed`、`submit configsPerfCounter ret: 800`。因此本轮不声称任何新 counter 数值；该失败与普通 benchmark/trace 可运行并存，符合维护或共享物理卡 perfcount 通道占用。

## 外部 OJ gate

候选 exact SHA256：`895ff6dda3157aad3cf6664b1d0655f9786058563a109203ca4881acc2b6f008`。外部 OJ 结果为 `WA`（用户报告；未提供失败坐标或详细日志），所以候选被拒绝，不创建 v129 submission、不更新 `SOTA.json`。该结果说明 MXCC fast-math 在本地容差样本上通过仍不足以证明 OJ 全输入域正确，后续不再沿用该 pass。
