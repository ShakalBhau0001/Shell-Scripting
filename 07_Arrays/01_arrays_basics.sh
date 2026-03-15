#!/bin/bash

# Arrays is shell script

# Syntax:

# array_name=(value1 value2 value3)

# Ex:

arr=( 10 "Shakalen" 30.20 "Hello" 40 "World" 50 )

# Here array index starts from 0

# Access the values
# Syntax:

# ${array_name[index]}

echo ${arr[0]} # 10
echo "Value in 2nd index: ${arr[2]}" # Value in 2nd index: 30.20

# Access all the values
# Syntax:

# ${array_name[@]}

echo "All the values in array:    ${arr[@]}"
# OR
echo "All the values in array:    ${arr[*]}"


# Get the length of the array
# Syntax:

# ${#array_name[@]}

echo "Length of the array: ${#arr[@]}"    # Length of the array: 7
# OR
echo "Length of the array: ${#arr[*]}"    # Length of the array: 7


# Slicing of array
# Syntax:

# ${array_name[@]:start:length}

echo "Values from 0th index to 3rd index: ${arr[@]:0:3}"    # Values from 2nd index to 3rd index: 10 Shakalen 30.20
# OR
echo "Values from 2nd index to 3rd index: ${arr[*]:0:3}"    # Values from 2nd index to 3rd index: 10 Shakalen 30.20
# ${arr[*]:0:3} It means from 0th index to 3rd index
# From 0th index to get 3 elements



echo "Values from 2nd index to last: ${arr[*]:2}"           # Values from 2nd index to last: 30.20 Hello 40 World 50

echo "Values from 0th index to given index: ${arr[*]::4}"   # Values from 0th index to given index: 10 Shakalen 30.20 Hello




# Update an array

# Adding elements to array at the end
arr+=( 5 6 7)

echo "Updated array: ${arr[*]}"    # Updated array: 10 Shakalen 30.20 Hello 40 World 50 5 6 7
