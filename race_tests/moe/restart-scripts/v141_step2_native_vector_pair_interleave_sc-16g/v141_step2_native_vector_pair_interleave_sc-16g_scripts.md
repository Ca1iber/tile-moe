# v141 reproduction scripts

## OJ source validation

```bash
/opt/conda/bin/python validate_oj_submission.py /root/moe_runs/v141_step2_native_vector_pair_interleave/candidate.py
```

## Correctness and paired timing

Run from `/root/tilelang-metax` with `MACA_PATH=/opt/maca`, `PYTHONPATH=/root/tilelang-metax`, and `PYTHONDONTWRITEBYTECODE=1`:

```bash
for c in 1 2 3; do
  /opt/conda/bin/python race_tests/moe/restart-scripts/v141_step2_native_vector_pair_interleave_sc-16g/run_v110_fullcheck.py \
    --parent race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py \
    --candidate race_tests/moe/restart-experiments/v141_step2_native_vector_pair_interleave_sc-16g/v141_step2_native_vector_pair_interleave_sc-16g_custom_fusedmoe.py \
    --case "$c" \
    --output "/tmp/v141_case${c}_screen.json" \
    --rounds 3 --warmup 10 --repeat 80
done
```

The runner performs full-output correctness before timing. `validate_oj_submission.py` and `run_v110_fullcheck.py` are archived unchanged from the v130 exact-v110 rebaseline toolchain.
