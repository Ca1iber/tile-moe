# v051 scripts

This directory stores the exact helper scripts used for v051:

- `v050_capture_codegen.py`: compile one exact OJ case, save generated device C++ and resource usage.
- `v050_pair_benchmark.py`: alternating AB/BA clean benchmark using CUDA events.
- `v050_run_paired_mctracer.py`: isolated-process paired mcTracer replay. Its historical internal tags are `v049/v050`; v051 evidence identifies the exact source paths and hashes in the generated summary.
- `profile_submission.py`: one-case trace target.
- `extract_metax_isa.sh`: rebuild generated C++ and extract final xcore1000 MetaX assembly.
- `validate_submission.py`, `validate_oj_submission.py`: numerical and import gates.
- `validate_iteration.py`: strict four-directory archive validator.

All in-flight output was written under `/tmp/tile-moe-scratch-20260814/v051-work`; only curated evidence was copied into the repository.
