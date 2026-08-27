# v148 reproduction scripts

- `run_v110_fullcheck.py`: same-process full-output AB/BA benchmark. Use `--rounds 5 --warmup 20 --repeat 50` separately for Cases 1--3.
- `validate_allcase_silu_stress.py`: route and scale stress testing; supports `--case` and `--variant-index` so large Case3 variants can run in isolated processes.
- `validate_oj_submission.py`: validates the exact submission source and accepts repeated `--generated-code` arguments.
- `capture_codegen.py`: captures generated device C++, compiler resource usage, and structural code counts for one official shape.
- `run_v110_targeted_mcprofiler.sh`: fresh v110 Case3 Step1/Step2 native perfcount capture used for direction selection.

Environment: `MACA_PATH=/opt/maca`, `PYTHONDONTWRITEBYTECODE=1`, `PYTHONPATH=/root/tilelang-metax`, Python `/opt/conda/bin/python`.
