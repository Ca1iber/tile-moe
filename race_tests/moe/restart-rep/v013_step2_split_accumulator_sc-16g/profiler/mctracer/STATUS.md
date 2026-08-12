# v013 mcTracer status

- Case1 完整成功，原始 JSON 与 console 均已归档；阶段汇总见报告。
- Case3 在节点恢复后成功重采三次；Step2 为 3.537664–3.549952 ms，canonical 汇总使用中位数并保留每次原始 JSON、console 与 summary。
- 2026-08-11 在 `macainfo` 阶段受主机 SRCU/workqueue 异常阻塞的 19-byte 空 trace 仍放在 `failed_case3/`，仅作历史失败记录，不作为性能证据。
- 不使用 v012d Case3 trace 冒充 v013；v012d 仅说明 async Step2 的历史行为。
