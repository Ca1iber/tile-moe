# v100 scripts

- Parent/source scaffold: v095 exact performance behavior, v096 warning-free source.
- Static gate: `validate_oj_submission.py`.
- Correctness and timing: `run_v59_fullcheck.py`, three AB/BA rounds, warmup 20, repeat 30.
- Codegen/resources: `capture_codegen.py` for Case2 and Case3.
- Fresh baseline attribution: `profile_submission.py` under mcTracer, parsed as prepack / Step1 / Step2.

Helper scripts are copied verbatim from v099 because the protocol is unchanged.
