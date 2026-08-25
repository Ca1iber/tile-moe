# mcProfiler unavailable

On 2026-08-25, v110 Case1 Step2 profiling was retried from `/opt/mcProfiler-ubuntu18.04` with a source-bound wrapper and `PROFILE_DONE` was observed. Hardware counter setup failed before valid counter collection:

- `Access perfcount channel failed!`
- `submit configsPerfCounter ret: 800`
- `mcProfiler config failed!`

No counter values from this failed run are used. Clean device-event AB/BA, generated code, final ISA and mcTracer remain valid evidence.
