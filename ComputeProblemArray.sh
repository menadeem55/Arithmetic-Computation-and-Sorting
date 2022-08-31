#!/bin/bash -x

declare -A Computation

echo "Enter Value a"
read a
echo "Enter Value b"
read b
echo "Enter Value c"
read c

result1=$(( $a + $b * $c))
echo "result1 is=" $result1

result2=$(( $a * $b + $c))
echo "result2 is=" $result2

result3=$(( $c + $a / $b ))
echo "result3 is=" $result3

result4=$(( $a % $b + $c))
echo "result4 is=" $result4

#storing Values in Dictionary
Computation[result1]=$result1
Computation[result2]=$result2
Computation[result3]=$result3
Computation[result4]=$result4

#reading values through array
result=0
Computation[((result1++))]=$result1
Computation[((result2++))]=$result2
Computation[((result3++))]=$result3
Computation[((result4++))]=$result4

echo ${Computation[@]}
