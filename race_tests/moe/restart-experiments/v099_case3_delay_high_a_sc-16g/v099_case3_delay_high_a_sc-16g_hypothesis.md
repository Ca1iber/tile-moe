# v099 delay second 64-row A producer until after Gate1

Observed evidence: v095 `A-low -> Gate0 -> A-high -> Gate1 -> Up0 -> Up1` is correct and fast. v097/v098 show that changing row extents or using more than two A producers is either slower or incorrect. Therefore retain the exact two 64-row producer shapes.

Hypothesis: moving only the second 64-row producer after Gate1 gives the first half more Gate work to mature while shortening the second-half lifetime, without triggering nonstandard extents or multi-producer lowering.

Mechanism: odd and next-even become `A-low -> Gate0 -> Gate1 -> A-high -> Up0 -> Up1`; all other code is unchanged.

Prediction/falsifier: full correctness and OJ gate must pass; Case3 paired median must improve at least 1.2% over v095. Any regression, resource spill/occupancy loss, or correctness failure rejects the direction and triggers fresh v095 profiling.
