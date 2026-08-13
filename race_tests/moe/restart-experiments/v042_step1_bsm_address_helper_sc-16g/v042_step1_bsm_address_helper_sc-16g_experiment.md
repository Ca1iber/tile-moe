# v042 Step1 BSM closed-form address helper

v041 established one independent producer wave per tensor as optimal. This iteration first completed the producer-concurrency curve, then targeted v041's long swizzle/global address expressions. An OJ-compliant `T.import_source` helper computes the equivalent physical shared byte offset and logical global column in closed form. An 8-iteration TileLang loop calls an inlined two-row helper, preserving the same 16 requests per active thread, bytes, barriers, shared layout, and MMA work. Submission SHA-256: `56e66c37871a9f5149b57c481aa2a18b4408314fe8d7c60f296d34baacc69e5d`.

Generated C++/ISA and negative probes showed why superficially shorter forms can fail: runtime pointer selection regressed 1.981%, while a single-tensor helper raised MT to 256 and regressed 43.012%. The accepted paired helper uses static gate/up choice within one helper call and strength-reduced shifts.
