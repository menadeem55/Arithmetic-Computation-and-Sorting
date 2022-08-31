#!/bin/bash -x

	echo "Enter Value a"
	read a

	echo "Enter Value b"
	read b

	echo "Enter Value c"
	read c

	
	result1=$(( $a + $b * $c))
	
	echo "Result1 is: " $result1
	
	result2=$(( $a * $b + $c))
	
	echo "Result2 is: " $result2
	
	result3=$(( $c + $a / $b ))
	
	echo "Result3 is: " $result3
