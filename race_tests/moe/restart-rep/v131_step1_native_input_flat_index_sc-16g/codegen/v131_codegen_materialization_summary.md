# v131 codegen materialization summary

All three generated device C++ files are byte-identical to the exact v110 parent.

| Case | Parent SHA-256 | Candidate SHA-256 | Step1 resources |
|---:|:---|:---|:---|
| 1 | `bcaea2c2...da14` | `bcaea2c2...da14` | 226 MT, 42 ST, 2 waves/PEU |
| 2 | `08529581...5565c` | `08529581...5565c` | 226 MT, 42 ST, 2 waves/PEU |
| 3 | `b3f51feb...9d7c2` | `b3f51feb...9d7c2` | 226 MT, 42 ST, 2 waves/PEU |

The v131 source change is therefore not materialized below TileLang lowering. Formal timing and hardware-counter profiling were skipped by the preregistered falsifier.

