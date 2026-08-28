# v185 hypothesis: enable TileLang lower-ldgstg on exact v166

## Observed evidence

- Exact v166 Case1 Step1 and Step2 move nearly compulsory HBM bytes, yet expose large VLS pipeline and partition stalls.
- The source uses synchronous `T.copy`; no asynchronous copy is permitted.

## Hypothesis and mechanism

Enable `tilelang.PassConfigKey.TL_ENABLE_LOWER_LDGSTG` while changing no kernel algorithm. If the current lowering leaves eligible global-to-shared copies in a less direct form, the pass may reduce copy/address instructions without changing traffic, grids, MMA count, or synchronization.

## Prediction and falsifier

- First inspect generated device code. Proceed to a benchmark only if code or resources change.
- Reject as a compiler no-op when the exact generated C++ SHA-256 is unchanged.

## Safety

TileLang pass configuration only; synchronous copies only; no async copy, foreign-code injection, direct MXMACA builtin, disabled checker, warmup-only work, or cached contents.
