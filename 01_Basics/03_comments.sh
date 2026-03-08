#!/bin/bash
# There are two types of comments in shell script
# Single line comment
# Multi line comment



# Single line comment

# For single line comment we use  #  symbol 

# This is a single line comment


# Multi line comment

# For multi line comment we use  : <<  symbol 

<<'COMMENT'
This is a multi line comment
This is a multi line comment
This is a multi line commnet
COMMENT

# OR

<<COMMENT
This is a multi line comment
This is a multi line comment
This is a multi line comment
COMMENT

# OR

: ' This is
an multi line 
comment ' 

echo "Done"

