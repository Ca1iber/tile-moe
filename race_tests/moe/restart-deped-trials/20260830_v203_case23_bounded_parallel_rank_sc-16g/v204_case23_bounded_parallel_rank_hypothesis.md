# v204 hypothesis: bounded parallel rank prefix

Observed evidence: v203 lowers the unified Case2/3 producer from 92 MT / 5 waves to 74 MT / 6 waves and reduces Case3 producer time to 0.219328 ms. Its generated producer still executes a fixed 64-iteration loop per rank thread, tests `prepack_expert < threadIdx.x` in every iteration, and reloads the current expert classification inside the loop.

Verified bottleneck: the producer is only about 0.22 ms, but v203's Case3 direct-v166 margin is 1.4779%, so a small producer improvement can increase OJ stability without touching either GEMM stage.

Current hypothesis: use `copy_thread` as the dynamic serial-loop upper bound and hoist the short/long branch outside the loop. This preserves the exact stable rank mapping while reducing loop work and control/address instructions.

Predicted changes: producer generated code loses the per-iteration `prepack_expert < threadIdx.x` comparison and current-expert classification equality; producer resources or mcTracer time decrease; Step1/Step2 codegen stays identical.

Falsifier: compile/correctness failure, any official-case regression, unchanged/worse producer resource tier, or no repeatable Case2/3 improvement over v203.

Risks: dynamic-loop lowering may increase control-flow cost or register lifetime despite fewer iterations. No atomics, async copy, injection, compiler builtins, disabled race checking, or cached contents are introduced.
