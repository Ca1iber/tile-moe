# v100 Step2 expert-grid-after-pad128 experiment

This iteration starts from the exact external-OJ-AC v095 performance behavior, using the warning-free v096 source scaffold whose generated code is byte-identical to v095. It independently enables the existing expert-grouped Step2 CTA mapping for official Case2 and Case3 while retaining pad128, A0/B0/A1/B1 staging, grids, MMA count, bytes, and arithmetic.

Both variants pass the OJ source validator and full padded-output correctness. Case2 regresses by `+4.256570%` median and Case3 by `+4.245676%` median in three-round AB/BA screens. The experiment is rejected; v095 remains the development-performance base and v092 remains formal SOTA.
