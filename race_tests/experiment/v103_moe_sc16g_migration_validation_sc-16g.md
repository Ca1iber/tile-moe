# v103 MoE 64G -> sc-16g 迁移恢复与正确性验证

## 1. 上版本遗留问题

64G 的开发工作区同时包含 MoE v243、MLA v93、TVM/MACA 修改和大量未跟踪
实验，不能直接当作干净开发基线。旧 `build/` 与源机器绑定，也不应该复制到
`sc-16g`。

迁移过程中还实际暴露了两个环境问题：

- 64G 的 TVM Git 对象库缺少一个历史祖先；全 refs bundle 虽通过
  `git bundle verify`，但在隔离目录 clone 失败；
- `sc-16g` 的非交互 SSH 环境没有 `USE_MACA`，首次 `pip install .` 默认选择
  CUDA，并因找不到 `nvcc` 在 CMake configure 阶段退出。

## 2. 问题原因分析

原 TVM 当前源码和 MACA 修改本身完整，缺失的是旧历史对象。因此不能用
“bundle 校验通过”代替真实 clone 验证，也没有必要为了一个历史祖先污染当前
源码树。

TileLang 的 CMake 在没有显式 backend 时默认启用 CUDA；`/opt/maca` 虽然存在，
但仅存在目录不足以优先选择 MACA。目标机必须显式传入 `USE_MACA=ON`，并关闭
`USE_CUDA`，否则 wheel 的版本标识也会错误地成为 `+cuda`。

## 3. 本版本解决方案

采用可审计的双层恢复：

1. 保留 commit 前的 64G 源码归档，覆盖 dirty worktree、submodule、未跟踪实验和
   `/root/moe_runs`，仅排除顶层旧 build/cache；
2. 主仓库使用选择性 checkpoint，MoE、MLA、TVM 指针和迁移报告分别提交；
3. 以 TVM 原 checkpoint 的 tree `9e5241b3` 创建无父 portable root commit，并在
   隔离目录真实 clone；
4. 在 `sc-16g` 从 portable bundles 恢复，第三方 submodule 从官方 GitHub 按固定
   commit 初始化；
5. 使用显式 MACA backend 从源码重新构建，不复用 64G 产物；
6. 运行两例 quick 和一例 large MoE reference correctness。

## 4. 具体落地策略

目标环境：

| 项目 | 值 |
|---|---|
| Hostname | `f0ebd63be415` |
| GPU | MetaX C500 sGPU，25% compute，16000 MiB quota |
| Driver / MACA | `3.8.30` / `3.7.1.5` |
| Python | `3.12.11` |
| PyTorch | `2.8.0+metax3.7.1.3` |
| 源 checkpoint | `68f6155d0365d676a253b5303fa0f38a282fef74` |
| TVM portable commit | `d1bc549895a50b03c943ea020a1bea9ba0b84fdb` |
| 开发分支 | `exp/moe-sc16g-v244` |

核心恢复介质：

```text
/root/migration_from_64g_20260810/
  tilelang-metax_pre_checkpoint_source_64g_20260810.tar.gz
  tilelang-metax_checkpoint_portable_64g_20260810.bundle
  tvm_checkpoint_portable_root_64g_20260810.bundle
  MANIFEST_checkpoint_64g_to_sc16g_20260810.md
```

关键 SHA-256：

```text
source archive: dfb9a8fe5b9840083e7b7aca5f3dbc68aedfd378cf5b001ff32fd96a0dd5e3eb
main bundle:    7234569922f631a7eb7bc037cf2367443d5a21ccb506a08679fa3ddfa93bebfe
TVM bundle:     66a05998434f1fbc5a55adce8aaa1237d65f1bef2e1e7c0a99072518d3ae8cc9
MoE v243:      dd7968903ff804141e7959b9af9853999befb2765d3b6d12f769f65cd58fdb56
MLA v93:       9349eda02c6333b14a8b77b8c5c7a6491e54ff1fd11ae97651feb28a6ea40ff0
```

目标机重建命令：

```bash
cd /root/tilelang-metax
USE_MACA=ON \
MACA_PATH=/opt/maca \
CMAKE_ARGS='-DUSE_CUDA=OFF -DUSE_MACA=ON' \
/opt/conda/bin/pip install .
```

构建结果：

```text
tilelang 0.1.9+maca.git68f6155d
wheel size 45385476 bytes
wheel SHA-256 fad49888f39587b6fec10976810979cc0649f85450a374610009205f1c305003
build/ size after install 394 MiB
```

`cmake/load_tvm.cmake` 在 configure 时按设计补丁嵌套 `tvm-ffi`，因此构建后的
顶层状态显示 `m 3rdparty/tvm`。这不是迁移源码漂移，也未被混入本报告 commit；
16 个递归 submodule 的 checkout commit 均精确命中。

## 5. Benchmark 对比

本版本是跨机器迁移验证，不把 25% compute 的 `sc-16g` 延迟与 64G 历史延迟
直接比较，也没有产生新的性能结论。64G MoE v243 的历史官方三例延迟仍为
`3.344486 / 5.897558 / 11.557034 ms`，仅作为来源记录。

`sc-16g` correctness：

| 用例 | hidden / expert | experts / top-k | batch / seq | 结果 |
|---|---|---|---|---|
| quick-1 | 3584 / 1024 | 4 / 2 | 1 / 256 | PASS |
| quick-2 | 7168 / 2048 | 8 / 4 | 1 / 128 | PASS |
| large | 3584 / 1024 | 4 / 2 | 2 / 4096 | PASS |

三例均由 `race_tests/moe/test_submission_quick.py` 将 TileLang 输出与 PyTorch
reference 比较，阈值为 `atol=1e-2, rtol=1e-2`。

## 6. Profile 指标变化

本迁移没有采集可用于性能结论的 kernel profile。已验证：

- wheel 从 repo 外的 `/opt/conda/lib/python3.12/site-packages/tilelang` 加载；
- `torch.cuda.is_available() == True`，device count 为 1，设备名为 MetaX C500；
- `tvm.device(kDLMACA, 0).exist == True`；
- CMake cache 为 `USE_CUDA=OFF`、`USE_MACA=ON`，链接
  `/opt/maca/lib/libmcruntime.so`；
- 三个 MoE 用例均完成 MACA JIT、执行、同步和 reference 校验。

已知非阻塞告警：TVM-FFI import 会报告部分继承字段重复；MACA lowering 会提示
`Should support PDL for maca target`。两类告警均未影响本次三例正确性。

TODO：v244 的第一个性能实验需使用 `_sc-16g` 文件后缀，并记录 kernel duration、
grid、threads、register、dynamic shared memory 和峰值显存，建立独立基线。

## 7. 实验总结

64G 的最佳 MoE v243、MLA v93 和必要的 TVM/MACA 源码已经完整迁移到
`sc-16g`；源归档、主仓库 bundle、TVM portable bundle 在目标端均经过 SHA-256
校验。TileLang 已按 MACA backend 原生重建，安装版本、GPU device 和三例 MoE
correctness 全部通过。

后续开发从 `exp/moe-sc16g-v244` 开始。第一步应先建立本机稳定 baseline，再做
单变量优化；不覆盖历史 `_64g` 数据，不把跨配额延迟变化当成优化收益。本次未
push 任何远端分支。
