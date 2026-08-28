# v154 Case3 Step2 operational point

This directory intentionally records only the measured operational point.
No calibrated C500 sc-16g compute or bandwidth roof was measured in this
iteration, so the report does not claim a physical Roofline ceiling.

- Padded Step2 work: 300,647,710,720 FLOPs.
- Parent: 142.569 flop/B, 125.163 TFLOP/s over 2.402048 ms.
- Candidate: 141.476 flop/B, 133.357 TFLOP/s over 2.254464 ms.
- Interpretation: arithmetic intensity did not improve; the speedup is
  consistent with lower VL1 partition stalls and lower AP active cycles.
