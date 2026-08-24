# v093 scripts

- `run_v59_fullcheck.py`: exact-source same-process AB/BA correctness and latency comparison; used for Case1 screen/verdict and Case2/3 non-regression.
- `validate_oj_submission.py`: OJ source allowlist and three generated-device source validation.
- `capture_codegen.py`: selected-case generated source and resource capture with cache disabled.
- `extract_metax_isa.sh`: final xcore1000 MetaX ISA/resource extraction.
- `profile_submission.py` and `run_paired_mctracer.py`: three AB/BA raw mcTracer pairs.
- `summarize_three_kernel_trace.py`: authoritative `prepack -> Step1 -> Step2` post-processing; legacy two-kernel labels are not used.
- `summarize_iteration.py` and `validate_iteration.py`: artifact inventory and strict four-directory validation.

Primary verdict used `--case 1 --rounds 7 --warmup 100 --repeat 100` with exact v092/v093 candidate paths. Helper scripts are diagnostic and remain outside the OJ submission source.
