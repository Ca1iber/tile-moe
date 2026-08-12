#!/usr/bin/env bash
set -u

cd /root/tilelang-metax/race_tests/moe || exit 97
/opt/conda/bin/python -c "import importlib.util,sys; p='/root/moe_runs/v029c_full_b_split_issue.py'; s=importlib.util.spec_from_file_location('custom_fusedmoe',p); m=importlib.util.module_from_spec(s); sys.modules['custom_fusedmoe']=m; s.loader.exec_module(m); import oj_benchmark; print('V029C_BEGIN', flush=True); oj_benchmark.run_case(2,2,10); print('V029C_PASS', flush=True)"
status=$?
printf 'V029C_EXIT=%s\n' "${status}"
exit "${status}"
