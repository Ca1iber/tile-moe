# mcTracer evidence unavailable

No mcTracer timeline was captured for the exact v166 source.  During the
2026-08-29 candidate-packaging pass, `mcTracer` was not present on the
non-interactive shell `PATH`, so no trace was synthesized or borrowed from a
different version.

The exact candidate was instead checked with full valid-row correctness,
five-round paired AB/BA timing on all three official shapes, generated-device
C++ inspection, backend ISA inspection, the retained exact-v166 mcProfiler
core/memory captures, and an `mx-smi` environment snapshot.  External OJ
validation remains pending.
