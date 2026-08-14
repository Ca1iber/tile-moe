# Roofline unavailable by design

v044 changes only the Step1 SwiGLU reciprocal implementation; declared GEMM FLOPs and compulsory bytes are unchanged from v043. Both changed cases regress in the authoritative paired benchmark, and the short mcTracer sample conflicts with that verdict. A performance point derived from the noisy trace would mislead, so no v044 Roofline image is published. Use the accepted v043 Roofline as the unchanged-AI current-best reference.
