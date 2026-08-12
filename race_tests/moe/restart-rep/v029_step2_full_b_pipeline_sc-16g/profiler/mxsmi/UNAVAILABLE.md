# Synchronized mx-smi samples unavailable

- Iteration：`v029_step2_full_b_pipeline_sc-16g`
- 缺失项：与 v029o 重复 workload 同步的 HBM bandwidth、AP usage 和 clock sample。
- 原因：版本已经被 clean paired benchmark 和 mcTracer 明确否决，本轮没有启动长负载与同步采样。
- 已知但不等价的事实：归档期间 `mx-smi` 显示 MetaX C500、KMD 3.8.30、MACA 3.7.1.5、25% compute slice、16000 MiB quota；这是事后环境身份，不是候选运行期间的带宽证据。
- 影响：不对 v029o 的实际 HBM 带宽、利用率或 roofline 位置作推断。
- 下一步：若重访该候选，使用归档 `collect_mxsmi.sh` 逻辑与足够长的重复 workload 同步采样，报告 active-window median 和分布。
