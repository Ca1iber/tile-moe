# v153 Case2 Step2 traffic-normalized operational point

This is an operational-point comparison using mcProfiler global traffic and the
actual padded MMA work.  It is not labeled as a full-card or guaranteed sGPU
roof because no new bandwidth/compute-roof calibration was performed in this
iteration.

The Step2 arithmetic intensity rises from 116.54 to 141.86 flop/byte because
long experts stop rereading the same Down weights.  With the same 150.324-GFLOP
work model, observed throughput rises from 112.91 to 127.81 TFLOP/s while tracer
time falls from 1.331328 to 1.176192 ms.  This is consistent with the independent
VL1-stall, wave-life, and AP-active-cycle reductions.

