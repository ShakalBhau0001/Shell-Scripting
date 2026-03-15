#!/bin/bash
# While loop

# Syntax :

# while(Condition)
# do
#     Instruction1 Instruction2
#     .
#     .
#     InstructionN
# done


# OR


# while [ condition ]; do
#     # Commands to execute
# done


# Example 1

# Print numbers from 1 to 5
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))  # Increment count
done

# count=1
# while [[ $count -le 5 ]]; do
#     echo "Count: $count"
#     ((count++))  # Increment count
# done
# Output =>
# Count: 1
# Count: 2
# Count: 3
# Count: 4
# Count: 5

echo -e "\n"

# Example 2

count=1
while (test $count -le 5); do
    echo "Count: $count"
    ((count++))  # Increment count
done

# Output =>
# Count: 1
# Count: 2
# Count: 3
# Count: 4
# Count: 5


# Getting the content of the file

file="/home/shakal/Desktop/Programming/name.txt"

while read myvar
do
    echo "Value form the file:   $myvar"
    
done < $file


# Output =>

# Value form the file:   shakal
# Value form the file:   aaa
# Value form the file:   bbb
# Value form the file:   ccc
# Value form the file:   ddd
# Value form the file:   eee
# Value form the file:   fff


echo -e "\n\n"

# Read csv file

file="/home/shakal/Desktop/Programming/Data_Science/employees.csv"

while IFS="," read id Name Salary       # Internal feed seperator IFS tells the comma seperated values
do
    echo "ID is : $id"
    echo "Name is : $Name"
    echo "Salary is : $Salary"
done < $file


# Output =>

# ID is : ID
# Name is : Name
# Salary is : Salary
# ID is : 1
# Name is : Aarnav
# Salary is : 70000
# ID is : 2
# Name is : Rohit
# Salary is : 80000
# ID is : 3
# Name is : Om
# Salary is : 50000
# ID is : 4
# Name is : Nikhil
# Salary is : 65000
# ID is : 5
# Name is : Raj
# Salary is : 72000
# ID is : 6
# Name is : Vaishnavi
# Salary is : 85000
# ID is : 7
# Name is : Ishaan
# Salary is : 87000
# ID is : 8
# Name is : Priya
# Salary is : 78000
# ID is : 9
# Name is : Ankita
# Salary is : 90000
# ID is : 10
# Name is : Neha
# Salary is : 60000

echo -e "\n\n"

cat $file | awk 'NR!=1 {print}' | while IFS="," read id Name Salary
do
    echo "ID is : $id"
    echo "Name is : $Name"
    echo "Salary is : $Salary"
done


# Output =>

# ID is : 1
# Name is : Aarnav
# Salary is : 70000
# ID is : 2
# Name is : Rohit
# Salary is : 80000
# ID is : 3
# Name is : Om
# Salary is : 50000
# ID is : 4
# Name is : Nikhil
# Salary is : 65000
# ID is : 5
# Name is : Raj
# Salary is : 72000
# ID is : 6
# Name is : Vaishnavi
# Salary is : 85000
# ID is : 7
# Name is : Ishaan
# Salary is : 87000
# ID is : 8
# Name is : Priya
# Salary is : 78000
# ID is : 9
# Name is : Ankita
# Salary is : 90000
# ID is : 10
# Name is : Neha
# Salary is : 60000
