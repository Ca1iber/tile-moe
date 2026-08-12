# v017 scripts

- `capture_codegen_source_v017.py`: compile one explicit source with MXCC resource reporting and archive generated device C++.
- `run_paired_source_oj_v017.py`: alternate explicit v013 and v017 sources in fresh processes, verify correctness, and summarize paired OJ samples.
- `run_paired_mctracer_v017.py`: capture a paired case-3 trace and attribute the regression to Step1/Step2/gap.
- `profile_one_case_source_v017.py` / `run_mcprofiler_source_v017.sh`: collect targeted per-kernel counters from explicit source snapshots.
- `extract_metax_isa_v017.sh` / `analyze_metax_isa_v017.py`: recover final xcore1000 assembly and summarize resources/instruction classes/spills.
- `finalize_v017.py`: synchronize decision and identity fields in both manifests.
- `summarize_iteration.py` / `validate_iteration.py`: build the SHA-256 artifact inventory and enforce strict four-directory completeness.
