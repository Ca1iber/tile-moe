#!/usr/bin/env python3
"""Reject Python imports outside the MetaX MoE OJ submission allowlist."""

from __future__ import annotations

import argparse
import ast
from pathlib import Path


ALLOWED_ROOTS = {"torch", "tilelang", "math"}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    return parser.parse_args()


def format_alias(alias: ast.alias) -> str:
    return alias.name if alias.asname is None else f"{alias.name} as {alias.asname}"


def validate_import(node: ast.Import) -> list[str]:
    errors: list[str] = []
    for alias in node.names:
        root = alias.name.split(".", 1)[0]
        if root not in ALLOWED_ROOTS:
            errors.append(f"line {node.lineno}: forbidden root import `{root}`")
    if any(alias.name.startswith("tilelang") for alias in node.names):
        valid = (
            len(node.names) == 1
            and (
                (node.names[0].name == "tilelang" and node.names[0].asname is None)
                or (node.names[0].name == "tilelang.language" and node.names[0].asname == "T")
            )
        )
        if not valid:
            rendered = ", ".join(format_alias(alias) for alias in node.names)
            errors.append(f"line {node.lineno}: forbidden TileLang import form `import {rendered}`")
    return errors


def validate_import_from(node: ast.ImportFrom) -> list[str]:
    module = node.module or ""
    root = module.split(".", 1)[0]
    errors: list[str] = []
    if node.level != 0 or root not in ALLOWED_ROOTS:
        rendered_root = "." * node.level + module
        errors.append(f"line {node.lineno}: forbidden root import `{rendered_root}`")
        return errors
    if root == "tilelang":
        exact = [(alias.name, alias.asname) for alias in node.names]
        valid = (module == "tilelang" and exact == [("jit", None)]) or (
            module == "tilelang.intrinsics"
            and exact == [("make_mma_swizzle_layout", None)]
        ) or (
            module == "tilelang.layout"
            and exact == [("make_swizzled_layout", None)]
        )
        if not valid:
            rendered = ", ".join(format_alias(alias) for alias in node.names)
            errors.append(
                f"line {node.lineno}: forbidden TileLang import form "
                f"`from {module} import {rendered}`"
            )
    return errors


def main() -> int:
    args = parse_args()
    source = args.source.resolve()
    if not source.is_file():
        print(f"INVALID: missing source: {source}")
        return 1
    try:
        tree = ast.parse(source.read_text(encoding="utf-8"), filename=str(source))
    except (OSError, UnicodeDecodeError, SyntaxError) as error:
        print(f"INVALID: cannot parse {source}: {error}")
        return 1

    errors: list[str] = []
    for node in ast.walk(tree):
        if isinstance(node, ast.Import):
            errors.extend(validate_import(node))
        elif isinstance(node, ast.ImportFrom):
            errors.extend(validate_import_from(node))
        elif (
            isinstance(node, ast.Call)
            and isinstance(node.func, ast.Name)
            and node.func.id == "__import__"
        ):
            errors.append(f"line {node.lineno}: dynamic `__import__` is forbidden")

    if errors:
        print(f"INVALID: {source}")
        for error in errors:
            print(f"- {error}")
        return 1
    print(f"VALID OJ IMPORTS: {source}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
