# v101 scripts

- Parent/scaffold: v095 performance behavior through warning-free v096 source.
- Static/generated compliance: `validate_oj_submission.py`.
- Correctness and timing: `run_v59_fullcheck.py`, seven AB/BA rounds, warmup 100, repeat 100.
- Codegen/resources: `capture_codegen.py` for Cases 1--3.
- Profile: `run_paired_mctracer.py`, three AB/BA pairs, then `summarize_three_kernel_trace.py` with the explicit prepack/Step1/Step2 mapping.

Helper scripts are copied verbatim from v100 because the protocol is unchanged.
