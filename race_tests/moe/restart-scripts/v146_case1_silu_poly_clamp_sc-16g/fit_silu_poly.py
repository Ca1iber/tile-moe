#!/usr/bin/env python3
"""Reproduce the degree-11 odd sigmoid coefficients used by v146."""

import numpy as np


def main():
    x = np.linspace(-6.0, 6.0, 200001, dtype=np.float64)
    target = 1.0 / (1.0 + np.exp(-x)) - 0.5
    powers = (1, 3, 5, 7, 9, 11)
    design = np.stack([x**power for power in powers], axis=1)
    coefficients, _, _, _ = np.linalg.lstsq(design, target, rcond=None)
    for power, value in zip(powers, coefficients):
        print(f"c{power} = {value:.17g}")

    approximation = 0.5 + design @ coefficients
    sigmoid = target + 0.5
    print(f"sigmoid_max_abs = {np.max(np.abs(approximation - sigmoid)):.17g}")
    print(f"silu_max_abs = {np.max(np.abs(x * approximation - x * sigmoid)):.17g}")


if __name__ == "__main__":
    main()
