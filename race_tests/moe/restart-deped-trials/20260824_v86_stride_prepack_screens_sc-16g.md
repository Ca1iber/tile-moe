# 2026-08-24 v86 stride 与 prepack 淘汰筛选（sc-16g）

## Baseline

- Parent：外部 OJ AC 的 v086，SHA-256 `43bda05910a72ce3ee75a12f04d906f45abab2e446f8d05a977f733b796b8b9e`。
- 协议：Case1 同进程 AB/BA，3 rounds，warmup 20，repeat 100；每个候选计时前执行 reference correctness。
- 用户候选门槛：相对 v086 至少提升 1.2%。

## A. Tile-major workspace K-plane stride 去别名

原 plane stride：`128 * 64 * 2 B = 16 KiB`。仅扩大物理 plane rows，逻辑 128 rows 不变。

| Physical rows | Stride delta | Case1 paired median | Verdict |
|---:|---:|---:|---|
| 129 | +128 B | -0.257% | rejected |
| 130 | +256 B | -0.333% | rejected |
| 131 | +384 B | -0.397% | rejected |
| 132 | +512 B | -0.281% | rejected；存在明显离群点 |

结论：方向一致但全部远低于 1.2%；v085 的 up_logits pitch 周期现象不能直接迁移到 v086 input K-plane。

## B. Prepack CTA column panel sweep

保持 256 threads，只改变每个 CTA 的连续列宽；基线为 256 columns。

| Columns/CTA | Case1 paired median | Verdict |
|---:|---:|---|
| 64 | +0.059% | rejected |
| 128 | -0.030% | rejected；存在离群点 |
| 512 | -0.047% | rejected |

## C. Wave-sized prepack CTA

根据 v086 generated C++，prepack 已物化为 16-byte `uint4` load/store，地址除模已变成移位/掩码。进一步把 column panel 与 threads 同时匹配：

| Tile | Case1 paired median | Verdict |
|---|---:|---|
| 64 columns / 64 threads | +0.190% | rejected |
| 128 columns / 128 threads | -0.088% | rejected |

结论：CTA 内 4-wave coupling 不是瓶颈；基线 256-thread prepack 已有合理的 128-bit 搬运。

## D. Prepack only actual_rows

跳过 padding rows 的 input read/write；三 Case 完整 padded-output 均 PASS。

| Case | Screen change | Verdict |
|---:|---:|---|
| 1 | -0.019% | rejected |
| 2 | -0.589% | rejected |
| 3 | -0.520% | rejected |

结论：padding prepack 流量有小幅成本，但不足以形成 1.2% 端到端候选；不要继续围绕辅助 prepack kernel 做微调。

## Overall conclusion

workspace stride、CTA 粒度、wave 拆分和 padding 流量四类机制均未过门槛。生成代码证明 prepack 已采用 128-bit 读写，后续应把精力转向主导端到端时间的 Step1 同步 load/MMA 调度。

