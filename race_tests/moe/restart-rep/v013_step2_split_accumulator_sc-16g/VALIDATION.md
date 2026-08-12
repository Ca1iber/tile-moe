# v013 iteration validation

- Timestamp：2026-08-12（Asia/Shanghai 会话；远端 UTC 记录见原始文件）
- Command：`/tmp/ako4all-c500/scripts/summarize_iteration.py --root /root/tilelang-metax/race_tests/moe --iteration-id v013_step2_split_accumulator_sc-16g`
- Command：`/tmp/ako4all-c500/scripts/validate_iteration.py --root /root/tilelang-metax/race_tests/moe --iteration-id v013_step2_split_accumulator_sc-16g --strict`
- Result：`VALID: v013_step2_split_accumulator_sc-16g (strict)`
- Manifest inventory：217 artifacts。
- JSON integrity：68 个有效 JSON 全部解析通过；`failed_case3/` 下 19-byte 文件是明确保留的历史失败 trace，按 provenance 规则不伪装成有效 JSON。
- Historical note：`validation_failure_20260811.md` 保留节点异常时无法运行 validator 的旧记录，本文件代表节点恢复后的成功校验。
