# MoE restart policy override

This repository-level policy overrides the generic AKO4ALL guidance for the current sc-16g MoE restart.

## Promotion threshold

- Do not call a candidate an optimization, retain it as a version, create a submission directory, or advance `dorm` for a measured gain below **1.2%** versus the incumbent.
- The gain must be stable under the formal paired benchmark and outside the measured noise band.
- Every other official case must be non-regressing. If the candidate changes only one shape, unchanged byte-identical cases may be treated as neutral, but the changed case still must clear 1.2%.
- Candidates below 1.2% may be tested transiently for diagnosis, but must be discarded without experiment commits or permanent evidence directories.

## AKO4ALL project overlay: abandoned-trial archive

- `race_tests/moe/restart-deped-trials/` is the single persistent archive for explored, rejected, regressing, or inconclusive directions.
- Every archived trial must record the starting commit, exact source/configuration, correctness result, benchmark/profile evidence, hypothesis, and the reason it was stopped.
- A trial below the 1.2% promotion threshold, or one that fails correctness, regresses an official case, or remains inside the noise band, must not become a version, branch, submission, or `dorm` advance. It belongs only in `restart-deped-trials/`.
- Do not leave temporary research wrappers, generated kernels, profiler dumps, or scratch artifacts in the submission tree; keep them outside the repository or attach only the concise reproducibility record to the archive report.
- This section is the repository's persistent, project-specific AKO4ALL overlay. The installed system `ako4all-c500/SKILL.md` is read-only in this environment, so this file is the authoritative local policy for this restart.

## Incumbent

The current restart incumbent is the v059 / 79.33 code at commit `0759762565e8a491b19c3625d4d3d7529b432b31`. Historical later experiments remain reachable through archive refs, but `dorm` must stay on the incumbent until a candidate clears this threshold.
