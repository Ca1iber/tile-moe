# v140 MFMA layout-flag codegen gate

## Objective

Test whether the `A_layout`/`B_layout` strings on v110's inline
`T.tvm_mfma` call select a different MetaX operand-layout instruction or data
path that could improve Step1/Step2 operand feeding.

## Hypothesis

Changing the second layout flag from `row` to `col` might select a distinct
MFMA mode while keeping v110's shared-memory layout, register fragments, tile
shape, grid, and synchronization unchanged.

## Atomic source change

```diff
 T.tvm_mfma(
     self.mma_suffix,
     "row",
-    "row",
+    "col",
     ...
 )
```

No async copy, source injection, foreign import, tile change, or scheduling
change was introduced.  The candidate source passed the project OJ validator.

## Static backend finding

`src/target/codegen_maca.cc` parses both layout strings and only checks
`A_layout == "row" || B_layout == "row"`.  It then constructs the builtin name
solely from the MFMA shape/type prefix and emits
`__builtin_mxc_mma_<prefix>`; neither layout string participates in emitted
code.  Therefore `row,row` and `row,col` are expected to be equivalent in this
backend.

## Lowering result

The expectation was confirmed for all official cases:

| Case | Device-source bytes | Parent SHA256 | Probe SHA256 | `cmp` |
|---|---:|---|---|---|
| 1 | 30,746 | `bcaea2c2...f2da14` | `bcaea2c2...f2da14` | identical |
| 2 | 28,449 | `08529581...75565c` | `08529581...75565c` | identical |
| 3 | 28,449 | `b3f51feb...9d7c2` | `b3f51feb...9d7c2` | identical |

Prepack/Step1/Step2 resource usage also matches v110 exactly.  Case1 reports
`70/11/7`, `226/42/2`, and `202/52/2` (MT/ST/static waves); Cases2/3 report
`78/11/6`, `226/42/2`, and `220/52/2`.

## Decision

Reject at the codegen gate.  There is no distinct machine-code candidate, so
correctness timing, AB/BA, and profiler runs are intentionally skipped.  This
direction cannot clear the 1.2% candidate threshold.  v110 remains the
external-OJ SOTA and `restart-submission` is unchanged.

## Reopen condition

Only reopen if the MetaX backend adds layout-dependent MFMA builtin selection,
or if a physical fragment/shared-layout rewrite produces demonstrably different
device code without adding transpose traffic or breaking coalescing.
