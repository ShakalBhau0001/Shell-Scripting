#!/bin/bash

# Logical operator : 

# Logical and : &&    OR   -a
# condition1 && condition2
# condition1 -a condition2


#         && used with [[]]
#         -a used with []


# Syntax:  
# Using && with double brackets

# if [[ condition1 && condition2 ]]; then
#     # Commands if both conditions are true
# fi


# Using -a with single brackets

# if [ condition1 -a condition2 ]; then
#     # Commands if both conditions are true
# fi


read -p "Enter 1st number: " num1
read -p "Enter 2nd number: " num2

if [ $num1 -gt 10 ] && [ $num2 -gt 10 ]; then
    echo "Both numbers are greater than 10"
else
    echo "At least one number is not greater than 10"
fi


# Output =>

# Enter 1st number: 10
# Enter 2nd number: 11
# At least one number is not greater than 10

# Enter 1st number: 11
# Enter 2nd number: 11
# Both numbers are greater than 10


read -p "Enter your age: " age
read -p "Enter your country: " country

if [ $age -ge 18 -a $country == "India" ]; then
    echo "You are eligible to vote"
else
    echo "You are not eligible to vote"
fi

# Output =>

# Enter your age: 18
# Enter your country: India
# You are eligible to vote

# Enter your age: 18
# Enter your country: USA
# You are not eligible to vote


read -p "Enter your age: " age
read -p "Enter your country: " country

if [[ $age -ge 18 && $country == "India" ]]; then
    echo "You are eligible to vote"
else
    echo "You are not eligible to vote"
fi




# Logical OR : ||    OR   -o
# condition1 || condition2
# condition1 -o condition2


# Syntax :

# Using || with double brackets
# if [[ condition1 || condition2 ]]; then
#     # Commands if at least one condition is true
# fi


# Using -o with single brackets
# if [ condition1 -o condition2 ]; then
#     # Commands if at least one condition is true
# fi



read -p "Enter any day: " day

if [[ $day == "Saturday" || $day == "Sunday" ]]; then
    echo "It's the weekend!"
fi


# Output =>

# Enter any day: Sunday
# It's the weekend!

read -p "Enter any day: " day

if [ $day == "Saturday" -o $day == "Sunday" ]; then
    echo "It's the weekend!"
fi



# Logical not  :   ! 


# Syntax : 

# Using ! to negate a condition
# if [[ ! condition ]]; then
#     # Commands if condition is false
# fi



num=5

if [[ ! $num -gt 10 ]]; then
    echo "Number is not greater than 10."
fi


# Output =>
# Number is not greater than 10.
