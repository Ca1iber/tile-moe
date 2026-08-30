# Roofline not applicable for the v190 decision

v190 changes only the fully timed rank/input-prepack auxiliary path. Step1 and Step2 MMA shapes, FLOPs, compulsory weight bytes and arithmetic intensity are unchanged. A new main-kernel Roofline point would duplicate v166 and would not explain the measured launch/prepack reduction.

The decision evidence is the exact-source paired endpoint timing plus mcTracer stage decomposition. Generated resources and the 16-KiB / zero-spill producer metadata are archived in `restart-rep/v190_case2_unified_prepack64_sc-16g/`.
