# v190 Case2 unified-prepack 64-row phase experiment

## Status

`local-qualified / external-OJ-pending`. This is not an accepted global SOTA and must not enter `restart-submission` until all three external OJ score components are available and pass the monotonic SOTA gate.

## Parent

- External-OJ SOTA: v166
- Source: `race_tests/moe/restart-submission/v166_gateup_pairload_sc-16g/submission.py`
- SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- OJ display / ratio / latency: `[84,83,83]` / `[0.848108,0.839953,0.839162]` / `[2.015,3.546,6.876] ms`

## Mechanism

Case2 previously launched rank-map, short-input prepack and long-input prepack separately. The archived v182 unified them, but used two fixed 96-row phases for every expert and therefore processed 64 unnecessary row slots for each short expert.

v190 keeps one physical-expert producer and folds rank construction into its `copy_col==0` CTAs. Only for the exact official Case2 configuration it uses a 16-KiB `64x128` shared bridge: short experts execute two M64 phases and long experts execute three M64 phases. Case1 and Case3 compile to the original two M96 phase path.

All preprocessing remains synchronous, fully timed and fully overwritten in every `run_kernel` call. No result or preprocessed content is reused across calls.

## Candidate identity

- Exact source: `candidate_submission.py`
- SHA-256: `65bc8a14f1aef0fc7ed53be25eb48a4ff10d29a5344a917fd4b71b8d145dbc11`
- OJ source validator: PASS
- Async-copy sites in generated Case2 source: 0
- Foreign source / builtin calls: none in submitted source

## Local decision

The exact candidate passes full valid-row correctness for all three official cases at `rtol=atol=1e-2`. Formal Case2 AB/BA improves exact v166 by a median `1.6193%` across three rounds, above the 1.2% floor. Case1 and Case3 are noise-level side results (`+0.0761%` median and `+0.0821%` one-round respectively).

The candidate is ready for external OJ verification. Until those scores arrive, `dorm`, `SOTA.json` and `restart-submission` remain on v166.
