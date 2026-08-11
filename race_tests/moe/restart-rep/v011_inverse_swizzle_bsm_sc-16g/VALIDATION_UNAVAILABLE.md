# Iteration validator unavailable

`summarize_iteration.py` and `validate_iteration.py --strict` were not executed after the sc-16g host accumulated multiple unrelated `find`/Python processes in uninterruptible `flush_workqueue` / `synchronize_srcu` states. Both scripts recursively walk artifacts and would add another potentially unkillable process. Required paths and payloads were checked explicitly with `ls`; rerun both scripts after instance recovery.
