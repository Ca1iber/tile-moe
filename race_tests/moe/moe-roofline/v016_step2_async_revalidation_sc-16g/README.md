# v016 Roofline artifacts

No new Roofline image is emitted for v016. This iteration revalidates two sources with identical algorithmic FLOPs and tensor bytes; its decision comes from paired OJ timing, per-kernel mcTracer, generated code, ISA, and targeted pipeline counters. The async mcProfiler replay also reports internally inconsistent absolute MTE/traffic values, so rendering those values as a Roofline point would imply unsupported precision.

The current-best v013 Roofline remains the applicable model. See the v016 evidence report for the synchronization and overlap diagnosis.
