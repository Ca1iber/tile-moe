# Runtime artifacts unavailable by design

The probe passed the OJ source validator and compiled for every official shape,
but the resulting combined device source was byte-identical to v110 in every
case.  Running correctness, AB/BA, mcProfiler, mcTracer, or Roofline on the same
machine code would create no candidate evidence and would only sample timing
noise.  The exact codegen hashes and resource records are preserved in
`restart-rep/v140_mfma_layout_flag_codegen_noop_sc-16g/codegen/`.
