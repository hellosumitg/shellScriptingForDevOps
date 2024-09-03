#!/bin/bash

#################################################
# Author: Sumit
#
# Date: 02/09/2024
#
# Purpose: This Scripts outputs the Node Health
#
# Version: v1
#################################################

set -x # debug mode

set -e # exit the script when there is `an error in any line's last command` and don't exexcute further

# shasassasas | echo | adsscsf | echo

# but above `set -e` command fails when there is a `|` command as shown in above example so in this case we use the blow code for `pipefail`.

set -o pipefail


df -h

free -g

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'


