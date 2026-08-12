# v018 scripts

- `run_source_oj_v018.py`: imports an explicit kernel snapshot and runs selected OJ cases.
- `run_paired_source_oj_v018.py`: Candidate-A fresh-process AB/BA timing.
- `run_paired_source_oj_v018b.py`: accurately tagged Candidate-B fresh-process AB/BA timing.
- `capture_codegen_source_v018.py`: captures generated device C++ and MXCC resources from an explicit source.
- `run_paired_mctracer_v018.py`: paired Case3 Step1/Step2 trace attribution.
- `profile_one_case_source_v018.py`: emits exactly one profiled OJ launch from an explicit source.
- `run_mcprofiler_source_v018.sh`: targeted or Roofline mcProfiler collection with source identity.
- `summarize_mcprofiler_v018.py`: flattens targeted replay counters and computes directional deltas.
- `run_official_source_v018.py`: injects an explicit kernel source into the repository official benchmark.
- `fix_archive_paths_v018.py`: repairs recorded absolute paths after evidence directories are normalized.
- `render_roofline.py`: renders portable SVG and optional PNG against explicitly named roofs.
- Common initialized helpers retain environment, mx-smi, benchmark, profiler, and bundle entry points.

All candidate-sensitive runners record the source path/tag; benchmark logs additionally record SHA-256 identity. `collect_mxsmi.sh` runs its workload through a login shell, so the archived successful command explicitly restores the project cwd, `PYTHONPATH`, and `MACA_PATH`; two failed environment attempts are retained under `profiler/mxsmi/failed_*`.
