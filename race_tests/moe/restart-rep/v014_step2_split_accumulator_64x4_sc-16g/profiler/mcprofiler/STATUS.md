# mcProfiler status

- 两个顺序平衡 targeted campaign 均成功：v013→v014 与 v014→v013。
- Case3 Step2；per-kernel；counts=1；显式 source hash；相同 18 项 metric。
- 两轮均为 private read/write 0/0，Achieved/Dispatched waves 同轮完全相同。
- v014 相对 v013：Total Cycles -12.24%/-9.75%，Average Wave life +0.57%/+0.32%，Global Read +0.45%/+0.43%，VL1 stall +0.12%/+0.33%，shared latency +0.55%/+0.59%。
- `Total Cycles` 为多 pass/replay 累计 Kcycles，只标记为资源诊断；单次 latency 结论服从 clean benchmark 与 mcTracer。
- 合并汇总：`v014_vs_v013_case3_step2_targeted_combined.json`；原始 JSON/TXT/CSV/PDF/PNG 全部位于 `raw/`。
