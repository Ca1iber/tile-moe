# MoE restart policy override

This repository-level policy overrides the generic AKO4ALL guidance for the current sc-16g MoE restart.

## Promotion threshold

- Do not call a candidate an optimization, retain it as a version, create a submission directory, or advance `dorm` for a measured gain below **1.2%** versus the incumbent.
- The gain must be stable under the formal paired benchmark and outside the measured noise band.
- Every other official case must be non-regressing. If the candidate changes only one shape, unchanged byte-identical cases may be treated as neutral, but the changed case still must clear 1.2%.
- Candidates below 1.2% may be tested transiently for diagnosis, but must be discarded without experiment commits or permanent evidence directories.

## Incumbent

The current restart incumbent is the v059 / 79.33 code at commit `0759762565e8a491b19c3625d4d3d7529b432b31`. Historical later experiments remain reachable through archive refs, but `dorm` must stay on the incumbent until a candidate clears this threshold.
