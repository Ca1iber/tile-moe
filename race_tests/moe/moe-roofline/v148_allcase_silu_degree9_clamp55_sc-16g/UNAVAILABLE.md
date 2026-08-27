# v148 Roofline note

No new full Roofline claim is made for v148. Fresh native v110 Case3 profiling is archived under the matching `restart-rep` directory and shows MMA duty near 54.5%/49.2% for Step1/Step2 with substantial VLS pipeline stalls. A targeted v148 Step1 replay reduces total cycles by 2.47% and raises MMA duty to 55.33%, while VLS pipeline stalls remain essentially unchanged. The v148 change targets the exact SiLU scalar dependency chain and leaves the tensor-core and memory traffic structure intact, so paired latency plus compiler resources are the relevant primary evidence.

An external-OJ-qualified v148 may be profiled separately before SOTA promotion if a cross-environment causal comparison is needed.
