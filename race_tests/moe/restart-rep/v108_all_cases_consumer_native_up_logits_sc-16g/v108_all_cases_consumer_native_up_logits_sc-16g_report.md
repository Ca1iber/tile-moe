# v108 consumer-native `up_logits` 报告（sc-16g）

## 结论

本地候选通过。v108 相对 external-OJ-AC v102，在严格 5 轮 AB/BA 长测中三 Case 全部加速：Case1 `1.416592%`、Case2 `0.968393%`、Case3 `0.809048%`；Case1 超过约定的 1.2% 候选门槛，且三组 pstdev 都约 0.07%。源码、三 Case 生成代码与完整 padded correctness 均 PASS。正式 SOTA 仍保持 v102，等待外部 OJ AC 后再更新 `restart-submission`。

## 实现

v102 的 Step1 把 SwiGLU 结果写成普通二维 `up_logits[row, k]`，Step2 再按 MMA-A lane 映射搬到 shared。v108 把 workspace 改为 `[block_m, k_tile, vec, thread, elem]`：Step1 写回时计算唯一 consumer owner，Step2 的每个线程直接读取属于自己的四个连续 8 元素向量。计算量和有效 HBM 元素数不变，改变的是跨 kernel 中间张量布局与消费者地址路径。

## Benchmark

协议：同进程 AB/BA 5 轮，warmup=20，repeat=50，device event；每轮前完整输出检查。

| Case | v102 median ms | v108 median ms | change | pstdev |
|---:|---:|---:|---:|---:|
| 1 | 2.297610 | 2.265062 | -1.416592% | 0.066045% |
| 2 | 3.941033 | 3.902868 | -0.968393% | 0.067502% |
| 3 | 7.628334 | 7.566617 | -0.809048% | 0.068564% |

负号表示耗时下降。所有 Case 均无回退。

## 三 kernel trace

Case1 三对 AB/BA mcTracer 的正确三 kernel 汇总中位变化：prepack `0.000%`、Step1 `-0.431%`、Step2 `-4.112%`、GPU span `-1.737%`。这排除了“启动空泡偶然缩短”的解释：主要收益集中在读取 consumer-native 中间张量的 Step2，Step1 写出重排没有形成净负担。

## 生成代码与资源

- Case1 Step2：204 MT / 52 ST、2 waves/PEU；v102 为 204/60/2。
- Cases2/3 Step2：220/52/2；v102 为 222/54/2。
- 无 private allocation；无 async copy；三 Case 都有 8 个 MMA site。
- 最终变量名清理前后生成代码哈希逐 Case完全一致。

## 决策

v108 是 OJ candidate，不直接覆盖正式 submission。外部 OJ 若 AC 且综合成绩高于 v102，才提升为全局 SOTA；否则保留完整证据并继续从 v102/v108 的 Step2 consumer-native 路径探索。
