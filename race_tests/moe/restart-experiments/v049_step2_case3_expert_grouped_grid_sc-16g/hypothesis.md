# Hypothesis

For exact Case3, each of the final 32 experts owns two 128-row blocks. Step2 normally schedules all 28 hidden-column tiles for one row block before reaching the second row block. Interleaving the two row blocks per expert should reuse each expert/by 256x2048 down-weight tile through L2 while preserving the physical 28x96 grid, math, MMA path, barriers, and shared-memory footprint.

TileLang cannot infer the range of dynamically remapped bx/by values. Explicit T.assume bounds are therefore part of the hypothesis: without them, safe-memory legalization inserts repeated guards around loads, async copies, and stores, potentially hiding the locality benefit.
