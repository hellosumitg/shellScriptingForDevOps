#!/bin/bash

#################################################
# Author: Sumit
#
# Date: 03/09/2024
#
# Purpose: Write a shell script to print numbers divisible by 3 & 5 and not by 15. Where numbers ranging from 1 to 100
#
# Version: v1
#################################################

# divisible by 3, divisible by 5, not divisible by 3*5 i.e 15

for i in {1..100}; do
	if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ];) && [ `expr $i % 15` != 0 ]; then
        echo $i
    fi
done
