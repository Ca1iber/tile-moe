# v166 mcProfiler evidence index

The exact-v166 mcProfiler capture predates the standardized
`profiler/mcprofiler/` directory name.  The original, unmodified capture is
retained in the sibling directories:

- `../core/`: Case2 Step1 core/ISU counters, reports, plots, raw JSON, and the
  complete `mcprofiler_console.log`.
- `../memory/`: Case2 Step1 memory/VL1 counters, reports, plots, raw JSON, and
  the complete `mcprofiler_console.log`.

The staged candidate submission has SHA-256
`02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a` and is
byte-identical to the development source used by those captures.  Candidate
packaging on 2026-08-29 did not rerun mcProfiler; this file is an index, not a
replacement or reconstructed profile.
