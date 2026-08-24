# v089 scripts

- `run_v59_fullcheck.py`: exact-shape full-output correctness plus AB/BA device-event benchmark.
- `diagnose_v089_wa.py`: post-OJ diagnostic-only differential stress over legal Case1 expert-tail distributions and repeated values; it does not replace the official/OJ verdict.
- `validate_oj_submission.py`: OJ imports, TileLang-only, no-async and no-injection validation.
- `run_paired_mctracer_tilemajor.py`: three-pair AB/BA mcTracer collection and stage summary.
- `profile_submission.py`: one-case trace driver.
- `capture_codegen.py`: generated C++ and resource capture.
- `extract_metax_isa.sh`: compile generated device C++ and extract MetaX assembly.
- `analyze_metax_isa.py`: instruction/resource/spill summary.

The original iteration scripts were copied from validated v088 tooling. The
post-OJ diagnostic is explicitly labeled diagnostic and preserves the official
tensor shape while varying legal metadata only to locate the WA.
