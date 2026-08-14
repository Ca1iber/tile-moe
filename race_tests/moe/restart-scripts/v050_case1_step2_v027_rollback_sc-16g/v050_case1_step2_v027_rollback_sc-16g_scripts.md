# v050 scripts

- `validate_submission.py`: runs FP32-reference correctness for all three exact OJ shapes.
- `oj_submission_benchmark.py`: runs exact OJ correctness and W20/R100 event timing from the archived submission.
- `official_submission_benchmark.py`: adapts the exact submission to the repository official functional benchmark.
- `v050_pair_benchmark.py`: performs alternating AB/BA Case1 timing against v049.
- `v050_capture_codegen.py`: captures generated device C++ and compiler resource usage.
- `profile_submission.py`: emits one profiled exact-submission invocation.
- `v050_run_paired_mctracer.py`: captures three AB/BA Case1 mcTracer pairs and summarizes Step1/Step2.
- `validate_iteration.py`: strict artifact-layout validator inherited from v049; final scope is additionally checked with Git and SHA-256 inventories.

All GPU commands used `/opt/conda/bin/python`, `PYTHONPATH=/root/tilelang-metax`, and the installed MXMACA 3.7.1 environment on sc-16g.
