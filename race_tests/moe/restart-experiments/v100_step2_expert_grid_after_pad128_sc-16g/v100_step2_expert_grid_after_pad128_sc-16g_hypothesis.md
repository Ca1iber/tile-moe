# v100 hypothesis: Step2 expert-grouped CTA mapping after pad128

- Parent performance: exact external-OJ-AC v095, SHA-256 `7e7f5b69...`.
- Source scaffold: warning-free v096, generated-device C++ byte-identical to v095.
- Fresh v095 mcTracer shows Step2 is 34.6%, 34.3%, and 33.6% of GPU span in Cases 1--3.
- Mechanism: keep the existing +128-FP16-column row pitch and A0/B0/A1/B1 producer order, but enable the already OJ-safe expert-grouped `(bx, by)` mapping independently for Case2 and Case3.
- Rationale: old pre-pitch expert grouping regressed, while v085 showed row pitch changes the Step2 cache/partition behavior and explicitly left post-pitch CTA-row/expert mapping untested. The two mechanisms may interact.
- Falsifier: full padded correctness must pass, generated code must contain the intended remap without async/foreign code, and the isolated target Case must improve at least 1.2% in repeated same-process AB/BA timing. Otherwise archive as rejected and keep v095 unchanged.
