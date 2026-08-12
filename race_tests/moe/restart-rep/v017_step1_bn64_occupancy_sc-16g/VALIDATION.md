# v017 validation

- Main kernel SHA-256 before/after: `7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3`.
- Candidate A correctness: PASS on OJ cases 1/2/3; maximum absolute error `0.001953125`.
- Candidate A: paired screen, case-3 mcTracer, targeted Step1 mcProfiler, generated C++, MXCC resources, final xcore1000 assembly, and ISA summary complete.
- Candidate B: generated C++/resource gate complete; rejected at `1240-byte` stack frame before runtime measurement.
- Official benchmark: unavailable because candidates failed earlier acceptance gates.
- New Roofline: unavailable because no candidate was accepted and algorithmic FLOPs/bytes are unchanged; timing/profile evidence is decisive.
- Strict four-directory validation must pass before commit.
