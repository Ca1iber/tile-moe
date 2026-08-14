# v054 hypothesis

v052's 7168-wide two-row helper inlines the same lane, row, swizzle, and base-address arithmetic twice. Compute those values once and issue the two adjacent 16-byte BSM transactions from the shared expressions. Keep logical bytes, math, barriers, tiles, grid, Step2, and imports unchanged. If grouping both transactions inside one divergent branch harms issue behavior, repair it by restoring one branch-reconvergence region per row while retaining the common address arithmetic.
