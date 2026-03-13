#!/bin/bash
#  2) IF-ELSE statement

# Syntax:

# if [ condition ] # condition can be any logical expression
# then
#     # code to be executed if condition is true
# else
#     # code to be executed if condition is false
# fi

# Example:

marks=45
if [ $marks -gt 50 ]
then
    echo "Marks is Greater than 50"
else
    echo "Marks is Less than 50"
fi

# Output =>
# Marks is Less than 50



num=3

if [ $num -gt 5 ]; then
    echo "Number is greater than 5."
else
    echo "Number is 5 or less."
fi

# Output =>
# Number is 5 or less.




read -p "Enter your age: " age

[[ age -ge 18 ]] && echo "You are eligible to vote" || echo "You are not eligible to vote"

# Output =>

# Enter your age: 19
# You are eligible to vote

# Enter your age: 17
# You are not eligible to vote
