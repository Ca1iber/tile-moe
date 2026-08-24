# mcProfiler/Roofline not repeated

v092 changes only the static producer order in Case3 Step1. FLOPs, logical bytes, grid, shared memory, MMA/load/store counts, and barriers are unchanged. The targeted causal question is answered by clean seven-round AB/BA timing, corrected three-kernel mcTracer, generated-code identity, final MetaX ISA, and resource usage.

No new mcProfiler counter set or Roofline point was collected because those tools cannot directly distinguish this instruction-order overlap mechanism and profiler-instrumented durations are not valid clean latency evidence. Historical counters are not copied forward as if newly measured.

If external OJ behavior conflicts with the current evidence, rerun mcProfiler on Case3 Step1 only with `Total Cycles`, `AP active cycles`, memory instruction/byte counters, AP MTE/MMA duty, and available wait/stall counters for exact v091 and v092 sources.
