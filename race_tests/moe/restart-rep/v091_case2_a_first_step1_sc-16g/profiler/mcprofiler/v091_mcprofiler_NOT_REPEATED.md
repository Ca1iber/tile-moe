# mcProfiler not repeated

v091 changes only static producer order; FLOPs, logical bytes, grids, MMA count, barriers, shared memory, and workspace layout are unchanged from v090. v090's mcProfiler counters remain the relevant traffic baseline. v091 adds paired mcTracer and final ISA evidence to localize the timing change.
