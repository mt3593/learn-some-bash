#!/bin/bash

finally() {
  echo "==> Finally!!!"
}

echo "==> Setting up the trap...."
trap finally EXIT

echo "==> About to do the function"

exit 1

echo "==> Should never get here..."

## OUTPUT:
## ==> Setting up the trap....
## ==> About to do the function
## ==> Finally!!!
