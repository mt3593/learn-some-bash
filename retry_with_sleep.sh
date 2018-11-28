#!/bin/bash

cmd() {
  echo "cmd executing"
  sleep 1
  echo "cmd done"
  exit 1
}

echo "==> Setting up the trap...."

echo "==> About to do the function"

for x in {0..3}; do
  echo "==> do it $x"
  answer=$(cmd)
  r=$?
  echo "==> $answer"
  if [ $r -eq 0 ]; then
    echo "==> should not get here"
  fi
done

echo "==> caught the pesky exit :)"

## OUTPUT:
## ==> Setting up the trap....
## ==> About to do the function
## ==> do it 0
## ==> cmd executing
## cmd done
## ==> do it 1
## ==> cmd executing
## cmd done
## ==> do it 2
## ==> cmd executing
## cmd done
## ==> do it 3
## ==> cmd executing
## cmd done
# ==> caught the pesky exit :)

