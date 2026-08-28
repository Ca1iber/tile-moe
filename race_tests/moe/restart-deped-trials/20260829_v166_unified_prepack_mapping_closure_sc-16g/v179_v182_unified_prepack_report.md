# v179-v182 unified-prepack and expert-mapping closure (sc-16g)

## Identity and decision rule

- Workspace: `/root/tilelang-metax`
- Branch: `dorm`
- Starting commit: `1d000492571254b1f1d820d8fd354a7b53509133`
- Exact decision parent: `v166_gateup_pairload_sc-16g`
- Parent SHA-256: `02210032640e4644a032e5620210d42e621c45ebb8fb5a644f72d3d6a1c8d33a`
- Target: MetaX C500 `sc-16g`, official/OJ Case2 shape
- Promotion floor: at least 1.2% paired improvement versus exact v166
- Safety: submitted TileLang primitives only; synchronous copies; no async copy, foreign-code injection, compiler builtins, warmup-only work, or cached contents

All candidates were direct modifications of exact v166. None is stacked onto dorm or `restart-submission`.

## Protocol

The project-native runner was used directly:

```text
race_tests/moe/restart-scripts/v166_gateup_pairload_sc-16g/run_v110_fullcheck.py
```

Each screen used exact v166 as `--parent`, Case2, `warmup=3`, `repeat=10`, AB/BA ordering, and full valid-row correctness at `rtol=1e-2`, `atol=1e-2`. The near-floor v182 candidate received an additional 3-round, `warmup=5`, `repeat=20` paired run.

## Results

| Trial | SHA-256 | Mechanism | Correctness | Paired Case2 change | Verdict |
|---|---|---|---|---:|---|
| v179 | `c10ec6a2ac0f314dbbc85b7d312e6737b16e4112c9e377db4187e0fa8383a143` | One expert-indexed prepack plus physical Step1 block mapping; removes rank map and split prepack launches | PASS after correcting short-expert native layout | `+2.0662%` regression | rejected |
| v180 | `0041d3fc8714d7463f032d3c2fbc77ee7399552fe42b091c1f34e3c6b33ef47c` | One unified expert-indexed prepack while retaining v166 rank map and short-first/adjacent-long Step1 order | PASS | `-0.8457%` improvement | sub-floor diagnostic |
| v181 | `3126da6fa802906b664ac2fa325e0ad905ecff9a892c7b81227b1cd1bf3dcbd6` | v180 plus a one-phase M128 producer path for short experts | PASS | `-0.4996%` improvement | rejected; worse than v180 |
| v182 | `d1a5736d74c8a80a758dfe014b681decaf47545b7d7fb39ccb9a2a897e9489f0` | v180 plus rank construction by one producer CTA per expert, removing the standalone rank-map launch | PASS; OJ source validator PASS | screen `-1.0631%`; 3x20 mean `-0.9548%`, median `-0.8953%`, pstdev `0.1003%` | stable but below 1.2% |

v182 3x20 individual paired changes were `-1.0960%`, `-0.8731%`, and `-0.8953%`.

## Causal conclusions

1. Unifying the two prepack launches is a real positive mechanism. v180 repeatedly establishes that launch/control work exists outside the main MMA kernels.
2. The physical expert order is not interchangeable with v166's short-first and adjacent-long-pair order. v179 preserved arithmetic and CTA count but regressed by 2.07%, so locality/scheduling order is material.
3. Removing theoretically empty producer work is not automatically faster. v181's larger 32-KiB shared allocation and different control shape lost much of v180's gain; the backend prefers the regular two-phase schedule.
4. Folding rank construction into producer CTAs is correct because Step1 consumes the table only after the prepack kernel boundary. It removes another launch and raises the signal to roughly 0.95%, but still misses the user-required 1.2% floor.
5. Two sub-floor mechanisms must not be stacked into a promoted version merely because their nominal percentages add. v182 already represents the coherent closure of this family, and its direct-v166 formal signal remains below the floor.

## Stop reason

This family is closed as a useful diagnostic but not an optimization version. `dorm`, the exact v166 experiment, and the external-OJ SOTA ledger remain unchanged. Revisit only if a future independent mechanism eliminates additional work and a fresh direct-parent benchmark gives a causal reason that the combination should exceed 1.2%.

