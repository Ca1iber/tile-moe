# Roofline image unavailable

v166 does not change the mathematical work, grid, waves, shared-memory footprint,
or compulsory Gate/Up traffic. It changes only the issue order inside each CTA:
one Gate and one Up `uint4` load are issued before either vector is stored to the
existing swizzled shared tile. A synthetic roofline would therefore hide the
measured latency-overlap effect. The authoritative evidence is the paired AB/BA
benchmark, generated C++, compiler resource report, and raw mcProfiler counters
archived under `restart-rep/`.
