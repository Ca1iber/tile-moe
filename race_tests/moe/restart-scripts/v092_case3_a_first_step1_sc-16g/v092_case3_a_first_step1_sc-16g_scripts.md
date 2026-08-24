# v092 scripts

- `run_v59_fullcheck.py`: exact-source same-process AB/BA correctness and latency comparison. Used for the Case3 screen, seven-round verdict, and Case1/2 non-regression checks.
- `validate_oj_submission.py`: OJ source allowlist plus three generated-device source validation.
- `capture_codegen.py`: compiles one official case with cache disabled and captures generated source/resource usage.
- `extract_metax_isa.sh`: emits final xcore1000 MetaX ISA and resource metadata from generated device source.
- `profile_submission.py`: executes one profiled invocation after warmup.
- `run_paired_mctracer.py`: collects three AB/BA raw mcTracer pairs. Its legacy two-kernel labels are not used for the verdict.
- `summarize_three_kernel_trace.py`: corrected post-processing for `prepack -> Step1 -> Step2`; this is the authoritative trace summary for v092.

Primary verdict command:

```bash
MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=/root/tilelang-metax /opt/conda/bin/python run_v59_fullcheck.py --parent <v091-candidate> --candidate <v092-candidate> --case 3 --rounds 7 --warmup 100 --repeat 100 --output case3_verdict.json
```

All helper scripts are diagnostics outside `submission.py`; the exact candidate remains limited to OJ-allowed imports.
