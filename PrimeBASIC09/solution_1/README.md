# BASIC09 solution by boisy

![Algorithm](https://img.shields.io/badge/Algorithm-base-green)
![Faithfulness](https://img.shields.io/badge/Faithful-no-yellowgreen)
![Parallelism](https://img.shields.io/badge/Parallel-no-green)
![Bit count](https://img.shields.io/badge/Bits-unknown-yellowgreen)
![Deviation](https://img.shields.io/badge/Deviation-sievesize-blue)

This is a BASIC09 implementation of an odd-only Sieve of Eratosthenes for OS-9.

The program uses a sieve size of 10,000 rather than the standard 1,000,000 so it can run on typical 6809 BASIC09 systems with constrained data space. It stores one odd candidate per integer array element, with `0` meaning "prime until proven composite" and `1` meaning "composite".

## Run instructions

Run the program from BASIC09 on OS-9:

```text
basic09
B:load primes.b09
B:run primes
```

This solution is source-only. A Dockerfile is not included because this repository does not currently contain a Dockerized BASIC09 or OS-9 execution environment.

## Output

The program validates against the known prime count for 10,000, which is 1,229, and emits a drag-race-style result line:

```log
boisy_basic09;1;0;1;algorithm=base,faithful=no
```

The elapsed-time field is `0` because this source-level version does not include a portable BASIC09 timing harness.
