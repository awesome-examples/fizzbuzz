#!/bin/bash

 for i in {1..100}
 do
	if [ $(($i % 3)) = 0 ]; then
	echo -n "Fizz"
	if [ $(($i % 5)) = 0 ]; then
	echo "Buzz"
	else
	echo
	fi
	elif [ $(($i % 5)) = 0 ]; then
	echo "Buzz"
	else
	echo $i
	fi
 done
