#!/usr/bin/env bash
set -euo pipefail

mx-smi --show-hbm-bandwidth -i 0
mx-smi --show-ap-usage -i 0
