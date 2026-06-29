#!/bin/sh
set -e
BASIC09_DIR="/Users/boisy/Projects/basic09c"
$BASIC09_DIR/build/bin/basic09c primes.b09 --compile -o primes -O2
./primes
