# v052 hypothesis: Case3 Step1 one-wave direct BSM staging

## Baseline and prior evidence

- OJ-valid parent: `v050_case1_step2_v027_rollback_sc-16g` at `b7772836`, submission SHA-256 `3ca06895240e4634e431de2628a887617fca138a6c247a63f4ecf4aa3d95d568`.
- Case3 is the weakest OJ result and mcTracer places about two thirds of its kernel time in Step1 (`~6.86 ms` versus `~3.31 ms` Step2).
- Current Case3 Step1 uses synchronous `T.copy` staging for gate/up around a single 32 KiB shared buffer. Its generated ISA retains four barrier sites and explicit global-load/shared-store staging.
- v040 and v041 established a different path for Case1: direct continuous BSM staging of gate/up, followed by a single producer wave per tensor. It kept 32 KiB shared and two static waves, removed explicit STS staging, reduced barrier sites, and improved Case1 Step1 twice.
- That final one-wave path has not been enabled for Case3. Earlier negative Case3 async versions used materially different mechanisms (64 KiB double buffers, half-N tiles, or wide-CTA reconstruction), so they do not falsify this exact schedule.
- v044 showed that vector fast reciprocal is slightly negative on the long Case2/3 schedules. The Case1 async path currently couples BSM staging with that epilogue, so v052 must decouple it.

## Proposed mechanism

- Enable the existing one-wave gate/up BSM producer path only for the exact 64-expert OJ Case3 selected by `use_step1_expert_grouped_grid`.
- Keep the accepted Case1 path unchanged, including its fast reciprocal.
- Keep Case3 on the normal SiLU epilogue, so the candidate tests staging/synchronization rather than mixing in v044's rejected arithmetic change.
- Do not change tile sizes, CTA grid, MMA work, input ping-pong policy, Step2, shared footprint, or OJ imports.

## Predicted evidence

- Case1 and Case2 generated C++ remain byte-identical to v050; Case3 Step2 remains byte-identical.
- Case3 Step1 generated code contains the direct BSM extern path, fewer explicit shared stores/barrier sites, 32 KiB dynamic shared, zero private memory, and no loss of the two-wave residency tier.
- All three OJ-shaped correctness cases pass.
- Clean Case3 W20/R100 and mcTracer Step1 improve outside noise; Step2 remains unchanged.
- If accepted, mcProfiler should show lower WSM/CTA-wait pressure without a disproportionate VLS/VL1 or MTE-queue penalty.

## Falsifiers

- Correctness failure, Case1/2 codegen change, spill/private traffic, loss of the two-wave tier, or stable Case3 regression rejects the candidate.
- If direct BSM raises VLS/VL1 pressure enough to erase the synchronization gain, the exact one-wave mechanism is considered non-transferable from short-K Case1 to long-K Case3.
