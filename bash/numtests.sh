#!/bin/bash
a=0
# this script demonstrates doing numeric tests in bash

# TASK 1: Improve it by getting the user to give us the numbers to use in our tests
read -p firstnumber: firstNumber
read -p secondnumber: secondNumber

# TASK 2: Improve it by adding a test to tell the user if the numbers are even or odd
[ $((firstNumber%2)) = 0 ] && echo "The first number is even"
[ $((firstNumber%2)) != 0 ] && echo "The first number is odd"


[ $((secondNumber%2)) == 0 ] && echo "The second number is even"
[ $((secondNumber%2)) != 0 ] && echo "The second number is odd"

# TASK 3: Improve it by adding a test to tell the user if the second number is a multiple of the first number
[ $((secondNumber % firstNumber)) == 0 ] && echo "The second numbere is the multiple of the first"
[ $((secondNumber % firstNumber)) != 0 ] && echo "The second numbere is not the multiple of the first"


[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"

[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"
