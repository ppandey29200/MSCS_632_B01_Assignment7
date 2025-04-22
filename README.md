# MSCS_632_B01_Assignment7

This repository contains three implementations of a basic statistics calculator that computes **mean**, **median**, and **mode** from a list of integers. Each implementation showcases a different programming paradigm using three languages:

- **C** – Procedural programming
- **OCaml** – Functional programming
- **Python** – Object-Oriented Programming (OOP)

## Problem Statement

Given a list of integers, compute the following statistics:

- **Mean**: The average value
- **Median**: The middle value when sorted
- **Mode**: The most frequently occurring value(s)

---

## Programming Paradigms & Languages

### C (Procedural)
Implemented in `statistics.c`, this version uses arrays, manual sorting, and counting. It demonstrates fundamental procedural concepts such as loops, conditionals, and memory management.

### OCaml (Functional)
Implemented in `statistics.ml`, this version uses immutable lists and functions like `List.map`, `List.sort`, and `List.fold_left`. It avoids mutable state and follows functional principles.

### Python (Object-Oriented)
Implemented in `statistics_calculator.py`, this version defines a `StatisticsCalculator` class with methods to compute each statistic. It uses Python’s built-in list and dictionary capabilities for easy manipulation and readability.
