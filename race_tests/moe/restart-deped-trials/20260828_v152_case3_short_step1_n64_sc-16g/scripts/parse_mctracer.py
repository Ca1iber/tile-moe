#!/usr/bin/env python3
import collections
import json
import sys


def main(path):
    with open(path, "r", encoding="utf-8") as handle:
        events = json.load(handle)["traceEvents"]
    counts = collections.Counter(
        event.get("name", "") for event in events if event.get("ph") == "X"
    )
    print(path)
    print("X events:", len([event for event in events if event.get("ph") == "X"]))
    print("kernel-like names:")
    for name, count in counts.most_common():
        lower = name.lower()
        if "kernel" in lower or "profiler" in lower or "synchronize" in lower:
            print(f"  {count:3d} {name}")
    print("kernel events:")
    for event in events:
        name = event.get("name", "")
        if event.get("ph") == "X" and name.startswith("kernel_kernel"):
            print(
                f"  name={name} ts={event.get('ts')} dur={event.get('dur')} "
                f"pid={event.get('pid')} tid={event.get('tid')} args={event.get('args')}"
            )


if __name__ == "__main__":
    for input_path in sys.argv[1:]:
        main(input_path)
