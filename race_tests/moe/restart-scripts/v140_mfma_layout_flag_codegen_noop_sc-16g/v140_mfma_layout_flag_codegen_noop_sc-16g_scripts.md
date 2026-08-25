# v140 reproduction commands

Run from `/root/tilelang-metax` on the MetaX C500 sc-16g container with
`MACA_PATH=/opt/maca`, `PYTHONDONTWRITEBYTECODE=1`, and
`PYTHONPATH=/root/tilelang-metax`.

## Inspect backend handling

```bash
sed -n '1850,1935p' src/target/codegen_maca.cc
sed -n '1470,1555p' tilelang/language/tir/op.py
```

## Apply the one-line probe

```bash
cp restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py /root/moe_runs/v140_mfma_layout_probe/candidate.py
patch /root/moe_runs/v140_mfma_layout_probe/candidate.py < race_tests/moe/restart-rep/v140_mfma_layout_flag_codegen_noop_sc-16g/codegen/mfma_layout_flag.patch
```

## Validate source

```bash
/opt/conda/bin/python race_tests/moe/restart-scripts/v138_step1_direct_shuffled_a_sc-16g/validate_oj_submission.py /root/moe_runs/v140_mfma_layout_probe/candidate.py
```

## Capture parent and probe lowering

Use `capture_codegen.py` from v138 for each source and each `--case 1`,
`--case 2`, and `--case 3`, then compare the generated files:

```bash
cmp -s parent_case1_generated_device.cpp candidate_case1_generated_device.cpp
cmp -s parent_case2_generated_device.cpp candidate_case2_generated_device.cpp
cmp -s parent_case3_generated_device.cpp candidate_case3_generated_device.cpp
```

All three comparisons must return zero.  Runtime benchmark/profile commands are
intentionally absent because the generated device programs are identical.
