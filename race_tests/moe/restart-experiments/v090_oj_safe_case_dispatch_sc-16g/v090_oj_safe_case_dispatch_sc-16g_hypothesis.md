# v090 OJ-safe per-case composition hypothesis

## Resolved identity

- Workspace: `/root/tilelang-metax`, branch `dorm`, machine `sc-16g`.
- Incumbent: v088, submission SHA-256
  `cf36dc665bffbe7127bb388f583538d31881f1c509157aa27c7ad4cf35e0fa47`,
  external OJ score vector `[0.822321, 0.814906, 0.812460]`.
- Rejected parent clue: v089 SHA-256
  `333fbf1867970e2ffb88e46c021c6091b89da29f75cff7b58b12b1aec7618cd0`.
- Teammate reference: normalized SHA-256
  `5792fd7317914caef019090b05da1d4ec1309457d2ee07dfa96ae220422cd37e`.

## Hypothesis card

Observed evidence:

- v089 improved local Case2 by about 3.07% versus v088 but failed external OJ
  correctness on Case1.
- Case1/3 generated device C++ in v089 was byte-identical to v088, while the
  host wrapper differed by putting the output tensor/proxy into global workspace
  cache keys.
- The teammate Case2 native layout supplied most of v089's Case2 benefit; moving
  its input issue before Gate1 added only about 0.68%, below the user's 1.2%
  recording threshold by itself.

Verified bottleneck:

- Correctness and OJ runtime semantics, not Case2 arithmetic, block promotion.

Current hypothesis:

- A conservative per-case composition can retain the meaningful native-layout
  gain while avoiding v089's cross-case host-cache and schedule changes: use
  v088-equivalent host/device behavior for Cases1/3 and teammate-equivalent
  host/device behavior for Case2.

Proposed mechanism:

- For non-native Cases1/3, use shape/dtype keyed workspaces without tensor/proxy
  objects, matching v088 semantics.
- For native Case2, retain the teammate output-owned workspaces and original
  `Gate0 -> Gate1 -> native input -> Up0 -> Up1` ordering.
- Make both choices compile-time/Python-shape dispatches; introduce no async copy
  or foreign code.

Predicted metric changes:

- Cases1/3 generated device code remains byte-identical to v088 and local latency
  remains neutral.
- Case2 generated device code becomes byte-identical to the teammate reference;
  expected local end-to-end win versus v088 is about 2.4%, above the 1.2% gate.
- External OJ correctness should recover because non-Case2 host behavior returns
  to the already accepted v088 path.

Falsifying result:

- Any full-output failure, OJ-validator failure, codegen identity mismatch,
  Case2 paired median gain below 1.2%, or external OJ WA/regression rejects v090.

Correctness and resource risks:

- OJ proxy semantics for tensor-owned Case2 cache keys remain a risk and must be
  justified only by the exact teammate AC source/evidence, never by local tests
  alone.
- Compile-time branch placement may still perturb generated code; byte identity
  must be checked rather than assumed.
