"""Read the small scalar resource record embedded in a MACA mcbin ELF."""

from __future__ import annotations

import argparse
import json
from pathlib import Path


KEYS = (
    ".max_block_size",
    ".mtreg_count",
    ".streg_count",
    ".private_memory_size",
    ".shared_memory_size",
)


def _decode_integer(data: bytes, offset: int) -> int:
    tag = data[offset]
    if tag <= 0x7F:
        return tag
    if tag >= 0xE0:
        return tag - 0x100
    formats = {
        0xCC: (1, False),
        0xCD: (2, False),
        0xCE: (4, False),
        0xCF: (8, False),
        0xD0: (1, True),
        0xD1: (2, True),
        0xD2: (4, True),
        0xD3: (8, True),
    }
    if tag not in formats:
        raise ValueError(f"unsupported MessagePack integer tag 0x{tag:02x}")
    width, signed = formats[tag]
    start = offset + 1
    return int.from_bytes(data[start : start + width], "big", signed=signed)


def _messagepack_key(key: str) -> bytes:
    encoded = key.encode("ascii")
    if len(encoded) >= 32:
        raise ValueError(f"key too long for fixstr: {key}")
    return bytes((0xA0 + len(encoded),)) + encoded


def read_resources(path: Path) -> dict[str, int | None]:
    data = path.read_bytes()
    result: dict[str, int | None] = {}
    for key in KEYS:
        needle = _messagepack_key(key)
        positions: list[int] = []
        start = 0
        while True:
            index = data.find(needle, start)
            if index < 0:
                break
            positions.append(index)
            start = index + 1
        if not positions:
            # Dynamic shared memory is supplied by the TileLang launcher and
            # some mcbin records omit a static `.shared_memory_size` field.
            result[key.removeprefix(".")] = None
            continue
        # The resource MessagePack record is the final exact fixstr occurrence;
        # textual LLVM bitcode/debug occurrences do not carry this prefix.
        value_offset = positions[-1] + len(needle)
        result[key.removeprefix(".")] = _decode_integer(data, value_offset)
    return result


def read_resource_occurrences(path: Path) -> dict[str, list[int]]:
    """Return every decodable scalar following each resource key.

    A combined mcbin can contain one metadata record per device kernel.  The
    original ``read_resources`` intentionally reports only the final record;
    this helper exposes all plausible records for multi-kernel audits.
    """
    data = path.read_bytes()
    result: dict[str, list[int]] = {}
    for key in KEYS:
        needle = _messagepack_key(key)
        values: list[int] = []
        start = 0
        while True:
            index = data.find(needle, start)
            if index < 0:
                break
            try:
                values.append(_decode_integer(data, index + len(needle)))
            except (IndexError, ValueError):
                pass
            start = index + 1
        result[key.removeprefix(".")] = values
    return result


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("mcbin", type=Path, nargs="+")
    parser.add_argument("--all", action="store_true", help="show every decodable metadata occurrence")
    args = parser.parse_args()
    for path in args.mcbin:
        resources = read_resource_occurrences(path) if args.all else read_resources(path)
        print(json.dumps({"path": str(path), **resources}, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
