#! /bin/bash -x

echo "Sorting Arithmetic Computation Problem"

read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

compute4=$(( $a % $b + $c ))

echo " compute4:$compute4 "
