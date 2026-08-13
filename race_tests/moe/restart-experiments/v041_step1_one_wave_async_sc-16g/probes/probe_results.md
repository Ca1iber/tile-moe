# v041 probe results

- Reversing the v040 gate/up wave groups was neutral: paired median +0.00523%.
- Interleaving tensor producers across waves regressed +2.12376%; adjacent waves accessing one tensor have better locality/queue behavior.
- Rewriting 8 rounds as 4x2 issue rounds was neutral: +0.01144%; the lowering preserved the effective instruction order.
- A 32 KiB tensor-stagger pipeline was correct but regressed +1.86783%. Generated C++ proved it increased the steady-state CTA barriers from about two to three per K tile.
- Assigning each of two waves one contiguous 64-row stripe regressed +1.11252%.
- One wave per tensor was the successful mechanism. Producer mapping sweep: wave0+1 -2.36421%, wave0+3 -2.26728%, wave1+2 -0.85747% (five-pair medians).
- Final mapping uses wave0 for gate and wave1 for up. Each active thread issues sixteen 16-byte continuous BSM requests; waves2/3 perform no weight staging. Address coverage, shared footprint, barriers, and MMA work remain unchanged.
