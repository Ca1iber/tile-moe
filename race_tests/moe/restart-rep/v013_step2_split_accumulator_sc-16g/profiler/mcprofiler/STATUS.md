# v013 mcProfiler status

- 节点恢复后已完成 v004/v013 Case3 Step2 的同 campaign targeted 与 RoofLine 配对采集；汇总见 `v013_step2_split_accumulator_sc-16g_case3_step2_mcprofiler_comparison.json`。
- targeted 直接复现 private read/write `86,016/86,016 -> 0/0`，Total Cycles -2.1468%，VL1 partition stall sum -1.9346%。
- v013 `Dispatched waves=0` 与实际执行矛盾，AP active denominator 也不一致，因此 MTE/MMA duty 的跨版本变化标记为 invalid。
- `raw/retry_20260812_v013_case3_step2_targeted/` 是相对源码路径导致动态导入失败的历史尝试；`raw/retry2_20260812_*` 才是经过 `PROFILE_DONE + report.txt.json` 双校验的成功采集。
- `raw/case3_step2_failed/` 与 `failure_20260811.md` 保留节点 SRCU/workqueue 异常时的失败现场。
