# v099 delay second 64-row A producer

Observed evidence: v097/v098 ruled out non-64 split extents and more than two A producers. v095's safe order is `A-low -> Gate0 -> A-high -> Gate1 -> Up0 -> Up1`.

Hypothesis: retaining two 64-row producers but moving the second after Gate1 may shorten high-half lifetime while giving the low half more time to mature.

Falsifier: correctness/OJ gate failure, resource regression, or less than 1.2% Case3 improvement over v095.

Outcome: correctness and OJ source gate PASS, but three paired rounds all regress; median `+2.179928%`, pstdev `0.036329%`. Step1 MT drops `226 -> 218` without improving occupancy, proving the latency loss dominates register reduction. Rejected; triggers fresh v095 profiling.
