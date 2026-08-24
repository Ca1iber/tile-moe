# v089 scripts

- `run_v59_fullcheck.py`: exact-shape full-output correctness plus AB/BA device-event benchmark.
- `validate_oj_submission.py`: OJ imports, TileLang-only, no-async and no-injection validation.
- `run_paired_mctracer_tilemajor.py`: three-pair AB/BA mcTracer collection and stage summary.
- `profile_submission.py`: one-case trace driver.
- `capture_codegen.py`: generated C++ and resource capture.
- `extract_metax_isa.sh`: compile generated device C++ and extract MetaX assembly.
- `analyze_metax_isa.py`: instruction/resource/spill summary.

All scripts are copied verbatim from the already validated v088 tooling.
