#!/bin/bash
# 4) Nested IF statement

# Syntax :

# if [ condition1 ]
# then
#     # code to be executed if condition1 is true
#     if [ condition2 ]
#     then
#         # code to be executed if condition1 is true and condition2 is true
#     else
#         # code to be executed if condition1 is true and condition2 is false
#     fi
# else
#     # code to be executed if condition1 is false
#     if [ condition3 ]
#     then
#         # code to be executed if condition1 is false and condition3 is true
#     else
#         # code to be executed if condition1 is false and condition3 is false
#     fi
# fi


# Ex

read -p "Enter your age: " age
read -p "Enter your country: " country

if [ $age -ge 18 ]
then
    if [ $country == "India" ]
    then
        echo "You are eligible to vote"
    else
        echo "You are not eligible to vote because you are not from India"
    fi
else
    if [ $country == "India" ]
    then
        echo "Wait for some more time"
    else
        echo "You are not eligible to vote because you are not from India"
    fi
fi


# Output =>

# Enter your age: 20
# Enter your country: India
# You are eligible to vote

# Enter your age: 20
# Enter your country: USA
# You are not eligible to vote because you are not from India

# Enter your age: 17
# Enter your country: India
# Wait for some more time

# Enter your age: 17
# Enter your country: USA
# You are not eligible to vote because you are not from India




num=15

if [ $num -gt 10 ]; then
    if [ $num -lt 20 ]; then
        echo "Number is between 10 and 20."
    fi
fi
