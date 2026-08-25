# v126 hypothesis

- Parent: exact v110 SOTA (`439a2b80...`).
- Scope: official Case1 Step2 expert-grouped grid only.
- Single mechanism: replace the two one-element local mapping arrays and runtime branch with equivalent scalar `T.if_then_else` expressions.
- Evidence: v124 proved removing repeated Down-weight `by` guards helps by 0.587%, but `T.assume` raised Step2 MT registers 202 -> 218. v125 lowered that to 208 but emitted an extra `& 7` and regressed in the quick screen.
- Expected compiler effect: eliminate local-array live ranges and allow range analysis directly from bounded block indices, ideally producing zero Down guards at no register increase.
- Promotion gate: generated-code evidence, correctness, and paired median improvement >= 1.2% versus exact v110.
