#!/bin/bash

########################################################################
# Author: Sumit
#
# Date: 03/09/2024
#
# Purpose: Write a shell script to print number of "s" in `mississippi`
#
# Version: v1
########################################################################

set -x # debug mode

set -e # exit script on error

set -o pipefail

word=mississippi

#################1stWay###############
# ` grep -o "s" `: Finds all occurrences of the letter "s" in the input.
# ` wc -l `: Counts the number of lines, which corresponds to the number of "s" characters found.
# ` <<< ` for here-string: This sends the value of ` $word ` as input to ` grep `.

grep -o "s" <<< "$word" | wc -l

################2ndWay###############
# echo "$word": Prints the value of the variable word so it can be piped to grep.

# echo "$word" | grep -o "s" | wc -l 
