# v013 mcTracer status

- Case1 完整成功，原始 JSON 与 console 均已归档；阶段汇总见报告。
- Case3 在 `macainfo` 阶段受主机 SRCU/workqueue 异常阻塞，只产生 19-byte 空 trace，已放入 `failed_case3/`，不作为证据。
- 不使用 v012d Case3 trace 冒充 v013；v012d 仅说明 async Step2 的历史行为。
