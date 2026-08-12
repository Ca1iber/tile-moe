# v016 scripts

- `run_paired_source_oj_v016.py`: alternates explicit v013 and archived v012d sources in fresh Python processes, checks correctness, and emits per-pair and aggregate JSON.
- `run_paired_mctracer_v016.py`: captures alternating case-3 traces and attributes the change to Step1, launch gap, or Step2.
- `capture_codegen_source_v016.py`: compiles one explicit source with MXCC resource reporting and archives generated device C++.
- `profile_one_case_source_v016.py`: emits exactly one profiled OJ invocation from an explicit source after warmup.
- `run_mcprofiler_source_v016.sh`: captures targeted per-kernel mcProfiler counters without replacing the repository kernel.
- `extract_metax_isa_v016.sh`: rebuilds captured device C++ to the final xcore1000 ELF and recovers backend assembly.
- `analyze_metax_isa_v016.py`: counts Step1/Step2 ISA classes, barriers, resources, and spill annotations.
- `summarize_v016.py`: builds the compact decision JSON from the paired OJ, mcTracer, mcProfiler, codegen, and ISA archives.
- `collect_mxsmi_v016.sh`: records the closing device/sGPU/process state and the tool help surface.
- `summarize_iteration.py` / `validate_iteration.py`: skill-provided inventory and strict archive validators.

Additional capture/profile scripts will be archived only if used in this iteration.
