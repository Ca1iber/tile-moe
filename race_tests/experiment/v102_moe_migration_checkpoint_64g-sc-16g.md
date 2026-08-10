# v102 TileLang/MoE 64G 到 sc-16g 迁移 checkpoint

## 1. 上版本遗留问题

64G 的 `/root/tilelang-metax` 保存了 MoE v243、MLA v93、TVM/MACA 修改和
大量中间实验，但仓库长期处于混合 dirty 状态：顶层 `git status` 有 241 个
条目、5 个未暂存 tracked 文件和 743 个 untracked 文件。分支名仍是
`exp/moe-inline-mfma-64g`，不能完整表示当前源码。

同时 64G 审计时 GPU 不可见，无法继续 benchmark；新 `sc-16g` 的 C500
sGPU 可见且空闲，但目标机尚无 `/root/tilelang-metax`。

## 2. 问题原因分析

已验证结论：

- 64G 仓库约 1.5 GiB，其中 `.git` 379 MiB、`3rdparty` 666 MiB、旧
  `build` 369 MiB，而 `race_tests` 约 25 MiB；
- 数百个 untracked 文件主要是 MoE/MLA sweep、失败候选、JSON 和 profile；
- `3rdparty/tvm` 有真实的 `device_api.h` MACA 映射修改，同时两层
  `.gitmodules` 还混有机器专用 `ghfast` URL；
- 首轮全 refs TVM bundle 虽通过 `git bundle verify`，但在隔离目录实际
  clone 时发现源 TVM Git 对象库缺少历史祖先，不能作为独立恢复介质；
- 直接 `scp -r` 会复制不可复用 build，并继续保留难以审计的混合工作区；
- 只做 Git clone 又会丢失未提交实验和 TVM 本地 commit。

因此需要同时保留“原始源快照”和“选择性 Git checkpoint”。

## 3. 本版本解决方案

采用双层迁移：

1. 在任何 commit 前创建原始源快照，保留 `.git`、submodule、tracked 修改、
   untracked 实验和 `/root/moe_runs`；
2. 排除可重建的顶层 `build/`、`__pycache__` 和 `*.pyc`；
3. 在独立 checkpoint 分支分别提交 TVM/MACA、MoE v243 和 MLA v93；
4. 不提交 `ghfast` 代理 URL，不执行 `git add -A`；
5. 对缺失祖先的 TVM，以原 checkpoint 的相同 tree 创建无父 portable
   root commit，并在隔离目录做真实 clone 验证；
6. 通过 Git bundle 恢复干净活跃工作区，原始快照仅作为只读灾备；
7. 在 `sc-16g` 重新构建，建立新的 `_sc-16g` 性能基线。

## 4. 具体落地策略

源分支：

```text
checkpoint/64g-to-sc16g-20260810
```

checkpoint commit：

| 层级 | Commit | 内容 |
|---|---|---|
| TVM 原 checkpoint | `265c4ea667eacb4945927642df7857917a40f0ba` | MACA device type 字符串映射；历史祖先不完整 |
| TVM portable root | `d1bc549895a50b03c943ea020a1bea9ba0b84fdb` | 与 `265c4ea` 的 tree `9e5241b3` 完全一致，可独立 clone |
| 主仓库 | `b6b5abd8ab21ea84afc4d544d84389850aea824d` | 记录 TVM checkpoint 指针 |
| 主仓库 | `2372994f81976c975c614338ba1232577004ecc9` | MoE v243、benchmark、严格 JSON 和报告 |
| 主仓库 | `bb25c413e0f2dd049ead11963255b149f49b7582` | MLA v93、benchmark、严格 JSON 和 profile |
| 主仓库 | `9062129e5aa76691b264a1b6760bdf0a5a6a9f5e` | 将 gitlink 切到 portable TVM root |

迁移前源快照：

```text
/root/migration_64g_to_sc16g_20260810/
  tilelang-metax_pre_checkpoint_source_64g_20260810.tar.gz
```

归档大小 506 MiB，SHA-256：

```text
dfb9a8fe5b9840083e7b7aca5f3dbc68aedfd378cf5b001ff32fd96a0dd5e3eb
```

关键源码：

```text
MoE v243: dd7968903ff804141e7959b9af9853999befb2765d3b6d12f769f65cd58fdb56
MLA v93:  9349eda02c6333b14a8b77b8c5c7a6491e54ff1fd11ae97651feb28a6ea40ff0
```

## 5. Benchmark 对比

本版本是迁移 checkpoint，不把跨机器绝对延迟写成优化收益。

迁移前保留的 64G 已验证结果：

| 算子 | 版本 | 64G 结果 | 正确性 |
|---|---|---|---|
| MoE | v243 | 3.344486 / 5.897558 / 11.557034 ms | 官方三 shape PASS |
| MLA | v93 | case3 0.046285 ms，case4 0.057326 ms | 官方六 case PASS |

TODO：在 `sc-16g` 完成重建后运行 smoke/medium correctness，并记录新的
`_sc-16g` baseline。`sc-16g` 为 25% compute、16000 MiB quota，不与 64G
绝对延迟直接比较。

## 6. Profile 指标变化

本迁移没有产生新的 kernel profile。

TODO：在 `sc-16g` 建立新环境后，至少记录：

- Step1/Step2 kernel duration；
- grid、threads、register 和 dynamic shared memory；
- GPU/sGPU quota 与 MACA/PyTorch 版本；
- 运行时峰值显存。

## 7. 实验总结

64G 的可复现核心已经从混合 dirty 工作区中分离：MoE v243、MLA v93 和
TVM/MACA 修改各自对应明确 commit，同时原始未跟踪实验由迁移前源快照完整
保全。首轮 TVM bundle 暴露的缺失祖先问题已通过相同 tree 的 portable root
解决，并经过真实 clone 验证。旧 build 和缓存不迁移，避免复用机器相关产物。

下一步是在 `sc-16g` 恢复 bundle、初始化 submodule、重新构建 TileLang，
验证关键哈希和 smoke correctness，然后从
`exp/moe-sc16g-v244` 开始新的 `_sc-16g` 实验。
