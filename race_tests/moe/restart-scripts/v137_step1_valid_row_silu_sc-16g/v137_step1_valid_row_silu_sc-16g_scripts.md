# v137 reproduction commands

The copied `run_v110_fullcheck.py`, `capture_codegen.py`, and `validate_oj_submission.py` are byte-identical to the v136 harnesses. The exact run used:

```bash
PYTHONDONTWRITEBYTECODE=1 MACA_PATH=/opt/maca PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python run_v110_fullcheck.py --parent /root/tilelang-metax/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py --candidate /root/moe_runs/v137_step1_valid_row_silu/v137_step1_valid_row_silu.py --case 1 --output /root/moe_runs/v137_step1_valid_row_silu/case1_abba.json --rounds 4 --warmup 5 --repeat 120
```

The 1.2% gate failed on Case1, so Cases2/3 and mcProfiler were not run.

