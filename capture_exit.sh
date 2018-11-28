#!/bin/bash

cmd() {
  echo "==> Finally!!!"
  exit 1
}

echo "==> About to do the function"

a=$(cmd)

echo "==> $?"

echo "==> caught the pesky exit :)"

## OUTPUT:
## ==> About to do the function
## ==> 1
## ==> caught the pesky exit :)

