# v203 scripts

- `run_v110_fullcheck.py`: exact-parent same-process correctness and AB/BA device-event timing.
- `validate_oj_submission.py`: OJ import and forbidden-construct source gate.
- `profile_submission.py`: fixed official-case workload used by mcTracer.
- `capture_codegen.py`: generated source and resource capture.
- `collect_environment.sh`: Git/software/mx-smi environment snapshot.
- `run_correctness.sh`: project-native correctness wrapper.
- `run_official_benchmark.sh`: project-native official-case benchmark wrapper.
- `run_mctracer.sh`: project-native mcTracer capture wrapper.
- `summarize_iteration.py`: rebuild the compact iteration summary from raw artifacts.
- `validate_iteration.py`: validate the archived iteration structure and identities.
- `commands.sh`: exact v166-versus-v203 validator and three-case AB/BA recheck entry point.

The archived helpers preserve the v166 project-native validation protocol; `commands.sh` points at the v203 candidate.
