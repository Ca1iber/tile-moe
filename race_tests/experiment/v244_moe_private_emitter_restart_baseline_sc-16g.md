# v244 MoE private-emitter 重启基线（sc-16g）

## 1. 上版本遗留问题

上一条主线是 64G 上的 v243 OJ 固定三例特化版。该版本把最小 MACA emitter
内联进 `submission.py`，并叠加手工 panel、固定索引、prescale 和 shape dispatch，
适合作为 OJ 特化提交，但不适合作为重新研究 emitter 调度的简洁起点。

用户希望从 Windows 桌面 `moe-sota` 保存的原始 private-emitter 版本重新优化，
同时保留 v243 的代码和迁移验证证据，避免不可逆覆盖。

## 2. 问题原因分析

已验证结论：

- v243 位于原分支 `exp/moe-sc16g-v244`，commit 为 `5d9f3cd8`，可独立恢复；
- 桌面目录同时有 inline 和 private-emitter 两版；目标文件
  `moe_sota_original_private_emitter.py` 直接导入
  `TensorCoreIntrinEmitter`，且导出与现有 quick harness 兼容的 `run_kernel`；
- `race_tests/moe/custom_fusedmoe.py` 是另一套类封装接口，不能用 submission 风格
  文件直接覆盖；
- sc-16g 开始操作前没有 MoE 未提交改动，只有构建期预期的 TVM 子模块 dirty。

因此本次只恢复活跃 `submission.py`，不修改 `custom_fusedmoe.py`、测试逻辑或
TileLang 源码。

## 3. 本版本解决方案

从已验证迁移分支新建：

```text
exp/moe-sc16g-private-emitter-restart
```

然后把 Windows 桌面文件逐字节恢复为：

```text
race_tests/moe/submission.py
```

该版本重新以 TileLang 私有 `TensorCoreIntrinEmitter` 为核心，保留
`ldmatrix_b + mma` 和 `k_pack=2` 路线。预期收益不是立即超过 v243，而是获得
结构更直接、便于继续修改 emitter、tile、warp layout 和 operand feeding 的
可运行 baseline。

## 4. 具体落地策略

来源与校验：

```text
source: C:\Users\Calibrum\Desktop\moe-sota\moe_sota_original_private_emitter.py
target: /root/tilelang-metax/race_tests/moe/submission.py
SHA-256: 491f9bf9c1f526712c4884f6d9067b25250b6a7ba8ed8f367b3f904a58e41b5a
```

核心结构：

| 项目 | private-emitter baseline |
|---|---|
| Step1 tile | `block_token=128, BK=64, BN=128` |
| Step2 tile | `block_token=128, BK=64, BN=256` |
| threads / stages | `256 / 1` |
| MMA | `TensorCoreIntrinEmitter`, `k_pack=2` |
| Step1 | gate/up weight 依次 `ldmatrix_b + mma` |
| Step2 | down weight `ldmatrix_b + mma` |
| grid | 3584/1024 与小 hidden 走 transpose；7168/2048 不 transpose |

环境：

```text
machine: sc-16g
GPU: MetaX C500 sGPU, 25% compute, 16000 MiB quota
TileLang: 0.1.9+maca.git68f6155d
PyTorch: 2.8.0+metax3.7.1.3
```

## 5. Benchmark 对比

本次只建立 correctness-gated 代码基线，没有采集可用于性能结论的正式 benchmark。
不能把 64G v243 延迟或桌面历史结果当作 sc-16g 当前 private-emitter 延迟。

正确性结果：

| 版本 | hidden / expert | experts / top-k | batch / seq | 结果 |
|---|---|---|---|---|
| private emitter | 3584 / 1024 | 4 / 2 | 1 / 256 | PASS |
| private emitter | 7168 / 2048 | 8 / 4 | 1 / 128 | PASS |
| private emitter | 3584 / 1024 | 4 / 2 | 2 / 4096 | PASS |

命令：

```bash
cd /root/tilelang-metax/race_tests/moe
USE_MACA=ON MACA_PATH=/opt/maca /opt/conda/bin/python test_submission_quick.py
USE_MACA=ON MACA_PATH=/opt/maca /opt/conda/bin/python test_submission_quick.py --large
```

三例均使用 PyTorch reference，阈值为 `atol=1e-2, rtol=1e-2`。

TODO: benchmark data missing。下一步建立
`benchmark_private_emitter_official3_sc-16g.py`，使用 `_sc-16g` 输出文件，先做
warmup/repeat 小规模筛查，再按官方口径 `warmup=10, repeat=100` 固化 baseline。

## 6. Profile 指标变化

TODO: profile data missing。

本次仅确认三个 shape 都能完成 private-emitter MACA JIT 和 GPU 执行。下一步应
采集 Step1/Step2 kernel duration、grid、threads、register、dynamic shared
memory、occupancy 和 MFMA/访存利用率，并与同机 v243 分开标注。

已知非阻塞告警：lowering 会提示 `Should support PDL for maca target`；该告警未
影响三例正确性。

## 7. 实验总结

恢复成功。Windows 桌面 private-emitter 文件已逐字节成为 sc-16g 的活跃
`submission.py`，SHA-256 一致；两例 quick 和一例 large correctness 全部通过。
v243 仍完整保留在原分支，`custom_fusedmoe.py` 和 benchmark 逻辑均未被修改。

该版本现在可以作为重新优化的 correctness baseline，但尚无当前机器性能数据，
不能判断它相对 v243 的速度。最有价值的下一步是先建立同机官方三例 baseline，
随后按单变量顺序实验 Step1/Step2 tile、warp layout、operand load/MMA 顺序和
grid mapping。
