#!/bin/bash

#################################################
# Author: Sumit
# 
# Date: 03/09/2024
#
# Purpose: Learning curl, wget, find
#
# Version: v1
#################################################

set -x # debug mode

set -e # exit sxript on error

set -o pipefail

# lets suppose one log file is stored in a google storage or aws s3 bucket or azure blob or someother storage, then searching `ERROR` in the log file we will use `curl` to retrieve the info from the internet, same command for python is `request` module

curl https://raw.githubusercontent.com/iam-veeramalla/sandbox/main/log/dummylog01122022.log | grep ERROR

curl -X GET https://dummyapi.online/api/movies/1

printf "\n"

# for downloading a file we would use `wget` so for doing the same task we did in `curl` we would use two command in `wget`
wget https://raw.githubusercontent.com/iam-veeramalla/sandbox/main/log/dummylog01122022.log

cat dummylog01122022.log | grep ERROR

# for finding file in the directory hierarchy
sudo find / -name pam
