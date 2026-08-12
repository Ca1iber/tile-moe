# v019 scripts

- `run_source_oj_v019.py`: explicit-source OJ runner with SHA identity.
- `run_paired_source_oj_v019.py`: fresh-process AB/BA OJ comparison.
- `capture_codegen_source_v019.py`: generated device C++ and resource capture.
- `run_paired_mctracer_v019.py`: Case2 paired Step1/Step2 trace attribution.
- `profile_one_case_source_v019.py`: one explicit-source profiled launch.
- `run_mcprofiler_source_v019.sh`: targeted/roofline replay collector.
- `summarize_mcprofiler_v019.py`: counter deltas plus automatic replay quarantine checks.
- `extract_metax_isa_v019.sh` / `analyze_metax_isa_v019.py`: final xcore1000 ISA extraction and static summary.
- `run_official_source_v019.py`: explicit-source official benchmark.
- `render_roofline.py`: named-roof SVG/optional PNG renderer.
- Common initialization helpers retain correctness, benchmark, environment, mx-smi and bundle entry points.

The accepted code change is a one-line compile-time schedule threshold; every candidate-sensitive runner records explicit source identity.
