#!/bin/bash

#################################################
# Author: Sumit
#
# Date: 03/09/2024
#
# Purpose: Write a shell script to print numbers divisible by 3 & 5 but not by 15.
#          The numbers will range from 1 to 100.
#
# Version: v1
#################################################


########################-OlderApproach-################################
# Loop through numbers from 1 to 100
#for i in {1..100}; do
    #if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ]; then
        #echo $i
    #fi
#done


########################-ModernApproach-###############################
# Loop through the numbers from 1 to 100
for i in {1..100}; do
    # Check if the current number is divisible by either 3 or 5
    # and ensure it is not divisible by 15
    # Remember the double parentheses (( ... )) are used for arithmetic operations in bash
    if (( i % 3 == 0 || i % 5 == 0 )) && (( i % 15 != 0 )); then
        # If the condition is true, print the number
        echo $i
    fi # End of if statement
done # End of for loop
