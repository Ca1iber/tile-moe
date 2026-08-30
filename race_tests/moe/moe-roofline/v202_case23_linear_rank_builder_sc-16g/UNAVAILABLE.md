# Roofline unchanged

v202 does not change GEMM operations, global tensor bytes or numerical work. A new Roofline point would be indistinguishable from v191/v166 and would misrepresent a metadata/control-flow optimization as an arithmetic-intensity change. Refer to the exact-v166 and v191 archived Roofline/profile evidence.
