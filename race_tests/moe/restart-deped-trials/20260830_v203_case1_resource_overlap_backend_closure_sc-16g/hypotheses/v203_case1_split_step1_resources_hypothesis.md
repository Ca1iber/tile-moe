# exact-v203 Case1 split Step1 resource-isolation hypothesis

Observed evidence:
- exact-v203 Case1 Step1 is about 59% of steady device span, 1536 CTAs / 6144 waves, 226 MT registers, 32 KiB dynamic shared, and near-compulsory Gate+Up bytes.
- The mixed kernel dispatches 512 short M128N128 CTAs and 1024 long M192N64 CTAs. Long CTAs use only 16 KiB of the 32 KiB mixed weight buffer.
- Historical isolated long M192N64 Step1 reports about 202 MT / 16 KiB, while the mixed kernel allocates the short-path maximum 226 MT / 32 KiB to every CTA.

Verified bottleneck:
- Step1 is latency/operand-feed limited rather than excess-HBM limited. Resource isolation can only help if it shortens long-CTA wave lifetime or permits better residency/scheduling; occupancy is not assumed from register counts alone.

Current hypothesis:
- Split only official Case1 mixed Step1 into a short kernel and a long kernel. Preserve short-first launch order, exact CTA/wave totals, per-CTA tiles, input workspaces, Gate/Up bytes, MMA count, barriers, epilogue, and Cases2/3 source paths.
- First safety stage: the long kernel allocates a 192x64 FP16 buffer (24 KiB), preserving the unified macro's Gate row 0 / Up row 128 offsets while removing the unused final 64 rows and the short branch/live state. Only after correctness and resource evidence may a follow-up compact the Up offset to row 64 for 16 KiB.

Predicted metric changes:
- short kernel remains near 226 MT / 32 KiB; long kernel approaches historical 202 MT and first reaches 24 KiB, with 16 KiB reserved for a separately verified address-compaction follow-up.
- long Step1 average wave life falls enough to repay one additional launch; endpoint improvement must be at least 1.2% to survive.

Falsifying result:
- build/correctness failure; no resource reduction; or direct exact-v203 1x20 screen below credible 1.2% upside. Formal 5x50 is required only after the screen gate.

Correctness and resource risks:
- A missing rank-slot/N64-column mapping would corrupt output; full valid-row rtol=atol=1e-2 is mandatory.
- A second launch may cost more than resource isolation. No async copy, injection, direct builtin, checker disabling, preprocessing cache, or cross-run state is allowed.
