# Code generation summary

| Case | v110 device SHA-256 | v141 device SHA-256 | bytes v110 -> v141 | Step2 MT v110 -> v141 |
|---:|:---|:---|---:|---:|
| 1 | `bcaea2c2c9ec00a7f0572711c43734e5a400b827965eea85ccbc1c7f60f2da14` | `f384c76d6a2bb5fc12a6eda6619bae384d352582aac1c72fba1a0d0cb04bef4c` | `30746 -> 30762` | `202 -> 202` |
| 2 | `08529581037825875d4898b5251a36fb1d23e30e2578d758dfc4c4dcab75565c` | `b4c79524265739ca618c5c2f1a738d4702376af96f330fd82947aee041792d75` | `28449 -> 28441` | `220 -> 224` |
| 3 | `b3f51feb124ac19099d49d379ad01928252535a5af9a8d4fb8674252f3c9d7c2` | `c67c129782977220bd60a8af592fb73adde5e743f9f0840320f408ae10532cb1` | `28449 -> 28441` | `220 -> 224` |

All cases retain 8 MFMA sites, 9 `__syncthreads()` sites, zero async-copy sites and 2 static waves/PEU for Step2. Step1 remains `226 MT / 42 ST / 2 waves`.

The Case2/3 hot-loop diff removes `producer_stage == threadIdx >> 7`, but adds stage-dependent native-vector destination and global-address terms. The exact request set is unchanged; only its issuing waves and order differ.
