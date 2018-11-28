#!/bin/bash

finally() {
  echo "==> Finally!!!"
}

echo "==> Setting up the trap...."
trap finally EXIT

echo "==> No exit this time but you still call Finally as the script does exit"

## OUTPUT:
## ==> Setting up the trap....
## ==> No exit this time but you still call Finally as the script does exit
## ==> Finally!!!
