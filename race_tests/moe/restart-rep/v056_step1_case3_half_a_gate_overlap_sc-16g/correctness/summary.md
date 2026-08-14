# Correctness summary

The accepted repair passes FP32-reference checks on all three exact OJ shapes with maximum absolute error 0.001953125 and zero padding. The official functional suite passes 2/2 and the standalone OJ import validator accepts the packaged source. External OJ correctness was also reported as passing. The rejected primary probe was numerically correct but failed the performance/resource gate.
