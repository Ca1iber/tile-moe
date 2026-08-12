# v016 validation

- Main kernel SHA-256 before and after: `7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`.
- Correctness: PASS for every OJ sample, maximum absolute error `0.001953125`.
- Strict long-shape paired OJ: complete, three alternating pairs.
- Paired case-3 mcTracer: complete, three alternating pairs.
- Targeted case-3 Step2 mcProfiler: complete for both sources; invalid absolute async utilization fields are explicitly quarantined.
- Generated device C++, MXCC resources, xcore1000 ELF/assembly, and ISA summaries: complete for both sources.
- Official benchmark: not rerun because the candidate failed the OJ acceptance gate and was not installed.
- New Roofline: intentionally unavailable because no candidate was accepted and async replay absolute traffic/duty fields are inconsistent.
- Decision: rejected; v013 remains current best.
