# v013 mx-smi status

- 成功采集：`retry2_20260812`，Case3 `warmup=10/repeat=2000`，正确性 PASS。
- OJ harness 先执行 PyTorch reference，再执行用户 kernel。两个 HBM 平台之间存在无样本区间；用户 kernel steady-state 以 `>=900000 MBytes/s` 分段，共 41 个样本，中位 1060.849 GB/s。
- 用户 kernel 平台为保守 1400 GB/s roof 的 75.77%；104 AP 全活跃，AP usage 中位 96%。这是 Step1+Step2 重复 workload 的物理计数器视图，不是单 Step2 traffic，也不是硬带宽上限。
- 无 scope 的第一轮采样固定 40 次，在新节点上 2.36 秒内结束，只覆盖编译期；原始数据保留但不作为 active bandwidth 结论。
- `failure_20260811.md` 保留节点异常前无法取得同步采样的历史记录。
