# Iteration validator unavailable

`summarize_iteration.py` and `validate_iteration.py --strict` were not executed because sc-16g already has many recursive-walk and TileLang processes stuck in uninterruptible `flush_workqueue` / `synchronize_srcu`. Starting another rglob-based validator would be unsafe. Required directories/files were checked explicitly with `ls`; rerun summarization and strict validation after instance or driver recovery.
