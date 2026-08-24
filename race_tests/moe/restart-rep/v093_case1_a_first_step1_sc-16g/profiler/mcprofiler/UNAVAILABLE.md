# mcProfiler/Roofline not repeated

v093 only reorders Case1 Step1 producer issue order. FLOPs, logical bytes, grid, shared memory, MMA/load/store counts, and barriers are unchanged. Clean seven-round timing, corrected three-kernel mcTracer, generated-code comparison, final MetaX ISA, and resources directly test the hypothesis.

No new mcProfiler/Roofline result is synthesized. If external OJ conflicts with local evidence, profile exact v092/v093 Case1 Step1 with cycles, MTE/MMA duty, memory bytes/instructions, and available wait/stall counters.
