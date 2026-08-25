# v095 scripts

The archived helpers are copied from v094 because they are source-path-parameterized and implement the same fullcheck, paired benchmark, codegen capture, mcTracer, ISA extraction, OJ validation, summarization, and strict iteration validation protocols.

Primary commands used:

- `capture_codegen.py --submission <candidate> --source-tag v095_caseN --output-dir <caseN> --case N`
- `validate_oj_submission.py <candidate> --generated-code <case1.cpp> --generated-code <case2.cpp> --generated-code <case3.cpp>`
- `validate_iteration.py --root race_tests/moe --iteration-id v095_case3_split_a_recovery_sc-16g --strict`
