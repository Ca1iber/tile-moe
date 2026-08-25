# v102 scripts

- Parent: locally qualified v101.
- Static/generated compliance: `validate_oj_submission.py`.
- Correctness and timing: `run_v59_fullcheck.py`, seven AB/BA rounds, warmup 100, repeat 100.
- Codegen/resources: `capture_codegen.py` for Cases 1--3.
- Profile: `run_paired_mctracer.py`, three Case1 AB/BA pairs, then `summarize_three_kernel_trace.py`.

Helper scripts are copied verbatim from v101 because the protocol is unchanged.
