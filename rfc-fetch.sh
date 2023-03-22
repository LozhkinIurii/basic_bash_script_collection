#! /bin/bash

# Task:
# Fetch N random (N from command line argument)  RFC files, print out the title of the RFCs and number of lines in the RFC.
# (https://www.ietf.org/rfc/rfc1237.txt)

rfc=1
while ! [ $rfc -gt $1 ]
do
    rfc_number=$(($RANDOM % 9411 + 1))
    curl -s "https://www.ietf.org/rfc/rfc$rfc_number.txt" | egrep -m 1 "^ *RFC $rfc_number.*[A-Z]{1}[a-z]* [0-9]{4}$" | sed "s/RFC $rfc_number *//" | sed "s/ *[A-Z]\{1\}[a-z]* [0-9]\{4\}$//"
    echo "Number of lines in the file is" $(curl -s "https://www.ietf.org/rfc/rfc$rfc_number.txt" | wc -l)
    echo
    ((rfc++))
done