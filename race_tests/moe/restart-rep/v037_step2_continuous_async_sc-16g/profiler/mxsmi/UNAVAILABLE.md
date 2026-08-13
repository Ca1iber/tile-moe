# mx-smi not repeated

v037 changes only the Case1 Step2 copy primitive and improves clean event time by about 0.1%. No new workload-concurrent mx-smi sampling was run because its polling resolution cannot resolve this delta. The v036 workload-observed sample remains the nearest hardware-context reference and is not treated as a bandwidth roof.
