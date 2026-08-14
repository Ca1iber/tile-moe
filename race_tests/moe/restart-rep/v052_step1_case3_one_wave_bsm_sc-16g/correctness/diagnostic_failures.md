# Correctness diagnostics

- The initial direct reuse of the Case1 helper addressed each weight row with a 4096-byte stride. Case3 has 7168 FP16 columns and therefore requires 14336 bytes; the wrong stride corrupted most Case3 outputs.
- Defining the corrected helper through a second `T.import_source` failed during lowering because the backend could not merge two distinct `pragma_import_c` attributes.
- The final source concatenates helper strings into one import. Exact Case3 and all three final OJ shapes pass.
