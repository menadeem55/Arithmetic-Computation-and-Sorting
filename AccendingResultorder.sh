#!/bin/bash -x
echo "Enter Value for a :"
read a
echo "Enter Value for b :"
read b
echo "Enter Value for c :"
read c

result1=$(( $a + $b * $c))
echo "Result1 is: " $result1
result2=$(( $a * $b + $c))
echo "Result2 is: " $result2
result3=$(( $c + $a / $b ))
echo "Result3 is: " $result3
result4=$(( $a % $b + $c))
echo "Result4 is: " $result4

declare -A dictinary
dictionary[result1]=$result1
dictionary[result2]=$result2
dictionary[result3]=$result3
dictionary[result4]=$result4

declare -a array
index=0
for computation in ${!dictionary[@]}
do 
    array[index++]=${dictionary[$computation]}
done

echo "The computation results array is"
echo ${array[@]}

size=${#array[@]}
for(( i = 0; i < size; i++ ))
do
    swapped=0
    for(( j = 0; j < size - i - 1; j++))
    do
        if((array[j] > array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
            swapped=1
        fi
    done
    if((swapped==0))
    then
        break
    fi
done

echo "The Computation results sorted in Ascending order are: "
echo ${array[@]}
