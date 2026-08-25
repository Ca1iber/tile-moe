# v129 scripts

v129 reuses the validated v110 utilities copied into this iteration directory:

- `validate_oj_submission.py`: source/generated OJ gate.
- `run_v59_fullcheck.py`: full correctness plus paired device-event benchmark.
- `capture_codegen.py`: generated C++ and resource capture.
- `profile_submission.py`, `run_paired_mctracer.py`, `summarize_three_kernel_trace.py`: source-bound trace and correct three-kernel attribution.
- `extract_metax_isa.sh`: strict-math ISA extraction.
- `extract_metax_isa_fast.sh`: identical extraction with MXCC `-use-fast-math` for v129.
