# v053 hypothesis

Case2 and Case3 share hidden=7168 and spend about two thirds of end-to-end kernel time in Step1. Transfer v052's exact 14336-byte one-wave BSM gate/up staging to Case2 without changing math, tiles, grid, Step2, or imports. If Case2's smaller 48-CTA grid under-exposes BSM work, repair it by assigning two waves to each tensor so all four waves issue copies.
