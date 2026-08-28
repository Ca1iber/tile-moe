# Roofline image unavailable

This candidate merges M128xN128 and M192xN64 Step1 geometries behind one
runtime-uniform CTA branch.  There is no single calibrated sc-16g compute roof
for that mixed instruction path, and mcProfiler reports 3.00% more global read
bytes rather than a traffic reduction.  Rendering a synthetic roof would be
misleading.  The authoritative evidence is the exact 5x20 paired benchmark,
mcTracer per-symbol timing, mcProfiler raw counters, and code-generation
resources archived under `restart-rep/`.
