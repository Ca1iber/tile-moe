# v138 reproduction commands

The archived harnesses are copied from the v136/v137 protocol. The exact Case1 compile and paired benchmark commands were:

```bash
PYTHONDONTWRITEBYTECODE=1 MACA_PATH=/opt/maca PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python capture_codegen.py --submission /root/moe_runs/v138_direct_shuffled_a/v138_direct_shuffled_a.py --source-tag v138 --output-dir /root/moe_runs/v138_direct_shuffled_a/codegen --case 1
```

```bash
PYTHONDONTWRITEBYTECODE=1 MACA_PATH=/opt/maca PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python run_v110_fullcheck.py --parent /root/tilelang-metax/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py --candidate /root/moe_runs/v138_direct_shuffled_a/v138_direct_shuffled_a.py --case 1 --output /root/moe_runs/v138_direct_shuffled_a/case1_abba.json --rounds 4 --warmup 5 --repeat 120
```

The 1.2% gate failed on Case1 by a wide margin, so Cases2/3, mcProfiler, and mcTracer were not run.
