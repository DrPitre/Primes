# BASIC09 solution by boisy

![Algorithm](https://img.shields.io/badge/Algorithm-base-green)
![Faithfulness](https://img.shields.io/badge/Faithful-yes-green)
![Parallelism](https://img.shields.io/badge/Parallel-no-green)
![Bit count](https://img.shields.io/badge/Bits-16-yellowgreen)
![Deviation](https://img.shields.io/badge/Deviation-none-blue)

This is a BASIC09 implementation of an odd-only Sieve of Eratosthenes compiled to a native binary via [basic09c](https://github.com/DrPitre/basic09c).

It runs a single pass over the full 1,000,000 sieve, using REAL (64-bit double) variables to avoid i16 overflow on large values. Each odd candidate is stored as one BOOLEAN array element. The program validates against the known prime count of 78,498 and emits a drag-race result line.

## Run instructions

Compile and run with [basic09c](https://github.com/DrPitre/basic09c):

```bash
basic09c --compile -o primes primes.b09
./primes
```

## Output

```log
boisy_basic09;1;0;1;algorithm=base,faithful=yes
```
