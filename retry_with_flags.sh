#!/bin/bash
set -euo pipefail

cmd() {
  echo "cmd executing"
  exit 1
}

echo "==> Setting up the trap...."

echo "==> About to do the function"

set +euo pipefail
for x in {0..10}; do
  echo "==> do it $x"
  answer=$(cmd)
  r=$?
  echo "==> $answer"
  if [ $r -eq 0 ]; then
    echo "==> should not get here"
  fi
done

echo "==> $?"
set -euo pipefail
cmd

echo "==> should not get here"

## OUTPUT:
## ==> Setting up the trap....
## ==> About to do the function
## ==> do it 0
## ==> cmd executing
## ==> do it 1
## ==> cmd executing
## ==> do it 2
## ==> cmd executing
## ==> do it 3
## ==> cmd executing
## ==> do it 4
## ==> cmd executing
## ==> do it 5
## ==> cmd executing
## ==> do it 6
## ==> cmd executing
## ==> do it 7
## ==> cmd executing
## ==> do it 8
## ==> cmd executing
## ==> do it 9
## ==> cmd executing
## ==> do it 10
## ==> cmd executing
## ==> 0
## ==> cmd executing
