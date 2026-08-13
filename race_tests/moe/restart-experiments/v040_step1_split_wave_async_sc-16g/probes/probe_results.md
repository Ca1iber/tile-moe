# v040 probe results

- synchronous uint4, gate only, two waves: correct, paired median +4.7261%; rejected.
- continuous BSM, gate only, two waves: correct, paired median +3.8447%; rejected.
- continuous BSM, gate only, four waves: correct, paired median +3.9054%; rejected.
- C++ diagnosis: mixing one extern shared writer with one `T.copy` shared writer inserted an extra dynamic CTA barrier per non-terminal K tile.
- gate+up both continuous, four waves: correct, paired median -0.2186%; useful intermediate.
- final split-wave mapping: wave 0/1 stage gate, wave 2/3 stage up; all threads issue eight 16-byte BSM transactions.
- a cache-key/factory-signature mismatch was caught by Case2/3 codegen SHA checks. All evidence used for acceptance was rerun after fixing the signature; pre-fix measurements are non-authoritative.
