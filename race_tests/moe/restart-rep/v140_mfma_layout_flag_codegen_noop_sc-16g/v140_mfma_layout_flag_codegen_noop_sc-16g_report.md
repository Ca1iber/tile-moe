# v140 MFMA layout-flag codegen report

## Verdict

- Status: `rejected_codegen_noop`.
- Parent/SOTA: v110, SHA256 `439a2b80fa9b1ad3c12860bc16153a8c0303326ff48334a048ca8b2bd510509e`.
- Probe source: SHA256 `3524049223d4fb4c5ad083eb605d4296381091e425784f82d3ff95a94222d149`.
- Source delta: one literal, MFMA second layout flag `row -> col`.
- OJ source validation: PASS.
- Official-shape compile: PASS for Cases 1/2/3.
- Generated device source: byte-identical to v110 for Cases 1/2/3.
- Benchmark/profile: skipped because no distinct executable exists.
- Promotion: rejected before timing; v110 and `restart-submission` remain unchanged.

## Why the flag is inert on this backend

The public `T.tvm_mfma` signature carries `A_layout` and `B_layout`.  In the
current MetaX code generator, those strings are parsed and used only by a
legality assertion requiring at least one `row`.  The emitted builtin is
`__builtin_mxc_mma_` plus the shape/type prefix; no layout suffix, overload, or
operand transform is selected.  Thus the proposed flag-only change cannot
alter the device program.

## Codegen comparison

| Case | Combined device SHA256 (both) | Bytes | Resources: prepack / Step1 / Step2 |
|---|---|---:|---|
| 1 | `bcaea2c2c9ec00a7f0572711c43734e5a400b827965eea85ccbc1c7f60f2da14` | 30,746 | `70/11/7`, `226/42/2`, `202/52/2` |
| 2 | `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c` | 28,449 | `78/11/6`, `226/42/2`, `220/52/2` |
| 3 | `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2` | 28,449 | `78/11/6`, `226/42/2`, `220/52/2` |

Resource triplets are `MT registers / ST registers / staticMaxWarpsPerPEU`.
Every parent/candidate `cmp` returned zero.

## Why runtime tests were skipped

A fresh runtime sample cannot distinguish two sources that compile to the same
combined device program.  Any measured difference would be launch/clock/noise,
not evidence for the layout flag.  The 1.2% gate therefore fails structurally
before AB/BA.  Correctness is also unchanged at the generated-device-source
level; no new arithmetic or memory instruction exists.

## Scope of the negative result

This closes only flag-only `row/col` changes on the present MetaX backend.  It
does not close a future physical shared/fragment layout rewrite or a backend
that actually emits layout-dependent MFMA variants.  Such a proposal must first
prove distinct codegen and preserve global coalescing.
