#! /bin/bash

echo "Sorting Arithmetic Computation Problem"

read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

declare -A expressionResultDict

function computeExpressions() {
    expression=$1
    a=$2
    b=$3
    c=$4
    case $expression in
        1)
        result=$(($a + $b * $c ))
        ;;
        2)
        result=$(($a * $b + $c ))
        ;;
        3)
        result=$(($c + $a / $b ))
        ;;
        4)
        result=$(($a % $b + $c ))
        ;;
    esac

    echo $result

}

function expressionPerform() {
    expression=$1

    case $expression in
        1)
        exp="a+b*c"
        ;;
        2)
        exp="a*b+c"
        ;;
        3)
        exp="c+a/b"
        ;;
        4)
        exp="a%b+c"
        ;;
    esac

    echo $exp
}
for (( counter=1;counter<=4;counter++ ))
do
    expressionResult=$( computeExpressions $counter $a $b $c )
    expressionForm=$( expressionPerform $counter )
    expressionResultDict[$expressionForm]=$expressionResult
done

echo "The computation expressions are ${!expressionResultDict[@]}"
echo "The computation expressions result are ${expressionResultDict[@]}"
