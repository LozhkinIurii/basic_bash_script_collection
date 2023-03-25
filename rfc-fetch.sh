#! /bin/bash

# Task:
# Fetch N random (N from command line argument)  RFC files, print out the title of the RFCs and number of lines in the RFC.
# (https://www.ietf.org/rfc/rfc1237.txt)

# Check if there is no arguments supplied to the script.
if [ $# -eq 0 ]
then
# If no args, one rfc file is fetched.
    amount=1
else
# Only first argument is taken into account
    amount=$1
fi
rfc=1
# Fetch a title from random rfc files
while ! [ $rfc -gt $amount ]
do
    rfc_number=$(($RANDOM % 9411 + 1))
    curl -s "https://www.ietf.org/rfc/rfc$rfc_number.txt" | egrep -m 1 "^ *RFC $rfc_number"
    echo "Number of lines in the file is" $(curl -s "https://www.ietf.org/rfc/rfc$rfc_number.txt" | wc -l)
    echo
    ((rfc++))
done