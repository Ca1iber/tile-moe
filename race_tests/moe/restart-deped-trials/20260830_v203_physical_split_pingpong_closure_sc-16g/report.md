# exact-v203 physical mapping, split paired-K, and long-Step1 ping-pong closure (sc-16g)

## Identity and decision

- Date: 2026-08-30.
- Exact parent: `v203_case23_parallel_rank_builder_sc-16g`, SHA-256 `4cef09d09d6f867e28afb4386fdf9dc0c1fe5d9a3f3b0b440638ae016eb21e7d`.
- External OJ SOTA remains v166. Promotion still requires at least `1.2%` direct-parent paired improvement plus later external-OJ monotonic confirmation.
- All runnable sources pass the OJ source validator and full valid-row correctness at `rtol=atol=1e-2`.
- All mechanisms use synchronous public TileLang only. There is no async copy, source injection, direct MXMACA builtin, disabled race checker, cached result, or out-of-score preprocessing.

No trial clears the promotion floor. There is no numbered experiment, submission, SOTA-ledger update, or performance-head movement.

## A. Case1 physical Step1 mapping

The dormant `use_physical_step1_mapping` path reinterprets the 24 physical padded M128 blocks directly: a short expert owns one M128N128 slot and a long expert's two physical blocks encode its two M192N64 N-halves. This preserves the mixed Step1 `1536 CTA / 6144 waves` and replaces rank + separate short/long prepack launches with one physical-expert M64 producer.

The first run exposed an implementation bug in the dormant path: physical mapping aliases the unused `expert_rank` argument to `group_sizes`, while physical prepack still rebuilt rank into that buffer. Suppressing the obsolete rank builder restores strict correctness.

- Corrected Case1 1x20: parent `2.041498 ms`, candidate `2.076250 ms`, regression `+1.7023%`.
- Parent resources: rank/prepack kernels plus mixed Step1 `226 MT / 46 ST` and Step2 `202 / 52`.
- Candidate: one producer `74 / 48 / 6 waves`, mixed Step1 `226 / 56`, Step2 `202 / 52`.

The launch consolidation is real, but runtime physical-slot metadata raises mixed-Step1 ST state by ten registers and pollutes the dominant kernel. Reject and close direct physical-block mapping for Case1.

## B. short/long split paired-K Step2

The previously archived unified long-only batch-A paired-K path improves Case1 by `0.9794%` but raises the unified Step2 body from `202` to `218 MT`. The follow-up split Step2 into a 64-CTA short launch retaining the parent body and a 128-CTA long M192N128 launch using paired-K.

- OJ validator / correctness: PASS.
- Case1 1x20: parent `2.042330 ms`, candidate `2.351642 ms`, regression `+15.1451%`.

The extra launch and loss of the incumbent continuous short-to-long schedule dominate any resource isolation. Reject; do not split the unified Case1 Step2 grid.

## C. long-Step1 use of idle shared quarters

In the mixed Step1 kernel, short M128N128 needs the full 256x64 FP16 shared tile. Long M192N64 uses only Gate rows `0:64` and Up rows `128:192`; the other two 64-row quarters are idle. Three variants used those quarters without changing bytes, MMA count, CTA/waves, precision, fragments, or the 32-KiB allocation.

| Variant | Mechanism | Case1 change | Decision |
|---|---|---:|---|
| two-K prebatch | stage even and odd Gate/Up before the first barrier; consume both | `+0.2747%` | reject |
| disjoint odd | keep even timing; write odd into idle quarters after even MMA; remove pre-overwrite barrier | `-0.2992%` | sub-floor |
| disjoint ping-pong | also overlap next-pair even writes with previous odd reads; remove loop-tail barrier | `-0.3726%` | sub-floor |

The terminal ping-pong source is correct on all three official cases:

| Case | Parent ms | Candidate ms | Change |
|---:|---:|---:|---:|
| 1 | `2.040486` | `2.032883` | `-0.3726%` |
| 2 | `3.436915` | `3.419776` | `-0.4987%` |
| 3 | `6.647757` | `6.620723` | `-0.4067%` |

Case1 codegen confirms a real schedule change: mixed Step1 remains `226 MT`, ST falls `46 -> 44`, static wave tier remains 2, and generated synchronization sites fall `15 -> 13`; MMA sites remain 12 and there is no async/barrier-wait primitive. The consistent 0.37--0.50% speedup proves the disjoint shared ping-pong is valid, but also establishes its endpoint ceiling below the mandatory 1.2% floor. It must not be stacked with other sub-floor probes.

## Reusable conclusion

1. Physical-block encoding saves auxiliary launches but moves metadata/control into the dominant mixed Step1 body and regresses.
2. Unified Case1 scheduling is more valuable than short/long Step2 resource isolation.
3. The long-Step1 idle shared quarters can safely form a synchronous ping-pong and remove two static sync sites, but synchronization is only a roughly 0.4% endpoint lever. Future work must reduce operand latency/bytes or change generated transport, not remove more ordinary barriers.
