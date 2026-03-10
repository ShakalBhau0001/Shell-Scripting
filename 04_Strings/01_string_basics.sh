#!/bin/bash
# expr is also used to evaluate string length and substring

# string length
str="Hello World"
echo "Length of string is: " `expr length "$str"`

# substring
# echo "Substring from 2 to 5 is: " `expr substr "$str" 2 5`
echo "Substring form 2 to 5: " `expr substr "$str" 2 5`

# string comparison
str1="Hello"
str2="Hello"
if [ "$str1" = "$str2" ]
then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi
