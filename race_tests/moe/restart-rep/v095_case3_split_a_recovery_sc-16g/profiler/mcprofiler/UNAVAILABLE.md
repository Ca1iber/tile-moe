# Roofline / mcProfiler unavailable for v094

This iteration changes only synchronous Step1 producer issue order. FLOPs, logical bytes, grids, MMA count, and barriers are unchanged. Clean paired timing, corrected three-kernel mcTracer, generated code, resource usage, and final xcore1000 ISA directly test the hypothesis; no fresh trustworthy mcProfiler counter set was required or collected.
