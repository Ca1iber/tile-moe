# Roofline not repeated for v095

v095 changes only the Case3 synchronous Step1 producer issue order. FLOPs, logical bytes, grid, MMA count, and barriers are unchanged. Case1/2 generated code is byte-identical to external-OJ-AC v092; Case3 is byte-identical to profiled v094. Strict paired timing, mcTracer reuse under byte identity, compiler resources, and generated code directly test this hypothesis, so no new Roofline image was collected.
