# Executable source and patch unavailable by design

The static legality gate rejected the proposed mechanism before implementation: the SDK builtin is async global-to-shared copy, while the experiment requires a legal synchronous shared-to-register replacement and forbids async copy and foreign-source injection.

Consequently there is no candidate source snapshot or code patch for v139. See `NO_CODE_DELTA.md` and the experiment report for the parent hash and decision evidence.
