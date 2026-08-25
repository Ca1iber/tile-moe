# Case1 correctness

`run_v110_fullcheck.py` compared the full padded FP16 output against the PyTorch reference after filling the output with a sentinel value. v138 passed with `rtol=1e-2` and `atol=1e-2`.

The same process then ran four alternating AB/BA timing rounds. Raw timings are in `../benchmark/case1_abba.json`.
