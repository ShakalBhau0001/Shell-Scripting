#!/bin/bash
read -p "Enter your age: " age

[[ age -ge 18 ]] && echo "You are eligible to vote" || echo "You are not eligible to vote"

# Output =>

# Enter your age: 19
# You are eligible to vote

# Enter your age: 17
# You are not eligible to vote
