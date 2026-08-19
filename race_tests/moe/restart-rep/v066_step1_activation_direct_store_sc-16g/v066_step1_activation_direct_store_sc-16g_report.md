# v066_step1_activation_direct_store_sc-16g 证据报告

## Verdict

- 运行类型：sc-16g local verdict。
- 结论：rejected；不替换当前最佳 v062。
- 因果结论：直接用 `gate_value` 计算并写出 SwiGLU，避免 `gate_local` 写回，使 Case1 Step1 ST registers 从 54 降到 52；Case1/3 有微小收益，但 Case2 正式配对出现回退，未满足三 Case 单调门禁。

## Identity and correctness

- Parent/current best：v062，candidate SHA-256 `d83efaa4168dcb2d7e969c965a431911db46d01df19e500beb9fec985258ae15`。
- 三个官方形状独立参考正确性 PASS；最大 `max_abs=0.001953125`，`padding_max=0.0`。
- OJ source allowlist/static gate PASS。

## Benchmark

协议：AB/BA 交替 13 rounds，每窗口 warmup 20、repeat 100，以样本中位数判定。

| Case | v062 | v066 | speedup | 候选胜场 |
|---|---:|---:|---:|---:|
| 1 | 2.777940 ms | 2.777167 ms | 1.000278x | 10/13 |
| 2 | 4.733499 ms | 4.734162 ms | 0.999860x | 5/13 |
| 3 | 9.265182 ms | 9.263406 ms | 1.000192x | 10/13 |

配对差值中位数分别为 -0.000960、+0.001764、-0.002614 ms。Case2 回退虽小，但方向和 5/13 胜场一致，因此不把该全形状版本晋升为当前最佳。

## Generated code and resources

- Case1 generated C++ 与 v062 的 SHA 不同，说明改动没有被 lowering 消掉。
- Case1 Step1 MT registers 仍为 222，ST registers 由 54 降为 52；Step2 212/52 不变，静态最大仍为 2 waves/PEU。
- 因正式 benchmark 已违反单调门禁，按实验规范停止 mcTracer/mcProfiler/Roofline 深挖；这些目录标记为 unavailable，避免给失败候选追加无效 profile 成本。

## Interpretation

- register 指标按预期改善，Case1/3 的端到端方向也一致，说明机制本身有价值。
- Case2 的回退表明不能把直接写回无条件用于所有 shape；下一版应在编译期仅对 Case1/3 启用，Case2 保留 v062 路径。
- 当前最佳和 `restart-submission` 保持 v062。
