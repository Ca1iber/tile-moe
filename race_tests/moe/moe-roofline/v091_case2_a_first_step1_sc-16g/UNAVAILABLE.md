# Roofline not repeated

v091 changes only Case2 Step1 producer order and does not change FLOPs or logical bytes. Existing v090 Case2 profiler/roofline assumptions remain applicable; the decisive new evidence is paired timing, generated code, ISA resources, and mcTracer stage attribution.
