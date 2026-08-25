# v142_step1_native_fp8_mfma_sc-16g scripts

## OJ source validation

```bash
MACA_PATH=/opt/maca PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python validate_oj_submission.py ../restart-experiments/v142_step1_native_fp8_mfma_sc-16g/v142_step1_native_fp8_mfma_sc-16g_custom_fusedmoe.py
```

## Correctness diagnostics and AB/BA

`diagnose_bench.py` loads exact v110 and the candidate in one process, prints strict/OJ error distributions, then runs alternating device-event timing. The archived Case3 command used `--rounds 3 --warmup 10 --repeat 50`.

## Codegen and resources

`capture_codegen.py` was invoked with `--case 3`, `--source-tag v142` and `-resource-usage` injection. It stores generated device C++, compiler log and parsed resource JSON.

No profiler command was run because correctness and the 1.2% endpoint gate both failed.
