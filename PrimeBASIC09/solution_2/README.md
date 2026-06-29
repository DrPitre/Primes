# BASIC09 solution_2 by boisy

![Algorithm](https://img.shields.io/badge/Algorithm-base-green)
![Faithfulness](https://img.shields.io/badge/Faithful-yes-green)
![Parallelism](https://img.shields.io/badge/Parallel-no-green)
![Bit count](https://img.shields.io/badge/Bits-8-yellowgreen)
![Deviation](https://img.shields.io/badge/Deviation-none-blue)

This is a BASIC09 implementation of an odd-only Sieve of Eratosthenes targeting the standard 1,000,000 sieve limit. It targets the macOS BASIC09 compiler, which supports 32-bit integers and single array dimensions beyond 32,767.

### Memory layout

A flat 1D boolean array holds one flag per odd candidate:

```
DIM FLAGS(499999):BOOLEAN
```

500,000 elements (indices 0..499,999), one byte each — 500 KB total.

### Variable types

All loop and counter variables (`I`, `J`, `NHALF`, `NSQ`, `COUNT`) are declared `INTEGER`. The macOS BASIC09 compiler uses 32-bit integers, so values up to 499,999 are well within range.

## Run instructions

Compile and run with the macOS BASIC09 compiler:

```text
basic09 primes.b09 -o primes
./primes
```

## Output

The program validates against the known prime count for 1,000,000, which is 78,498, and emits a drag-race-style result line:

```log
boisy_basic09;1;0;1;algorithm=base,faithful=yes
```

The elapsed-time field is `0` because this version does not include a timing harness.
