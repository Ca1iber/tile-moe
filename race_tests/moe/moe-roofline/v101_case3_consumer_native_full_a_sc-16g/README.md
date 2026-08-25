# v101 performance-model note

No new arithmetic Roofline point is claimed: FLOPs, MMA count, grids, and official shapes are unchanged. Paired mcTracer provides the decisive evidence. The consumer-native A representation shifts work into prepack (`+3.91%`) but reduces Step1 (`-5.15%`), for a total GPU-span reduction of `3.05%`; occupancy tiers remain unchanged.
