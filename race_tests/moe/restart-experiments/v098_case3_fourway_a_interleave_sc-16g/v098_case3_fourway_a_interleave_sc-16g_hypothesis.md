# v098 Case3 four-way A/weight producer interleave

Observed evidence: v095 64/64 split beats full A-before-Gate0; v097 32/96 is 1.739% slower although correct, showing the 96-row post-Gate0 burst is harmful and 32 early rows alone cannot cover latency. v59 historically benefited from alternating input and gate/up producers.

Hypothesis: four equal 32-row A chunks interleaved as `A0 -> Gate0 -> A1 -> Gate1 -> A2 -> Up0 -> A3 -> Up1` can keep requests continuously in flight across all four weight producers, avoiding both the 32/96 late burst and long full-fragment lifetime.

Prediction: full correctness; no async/foreign code; Case3 Step1 resource occupancy remains two waves; paired Case3 median improves at least 1.2% over exact v095.

Falsifier: correctness failure, generated change optimized away, spill/occupancy regression, or paired median below 1.2%.
