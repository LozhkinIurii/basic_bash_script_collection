#! /bin/bash

# Task:
# Variables experiments script.
# Define 3 static variables. Print them out. Try out creating a new variable that joins variables together.  Try out calculating the sum of the variables.

var1=2
var2=4
var3=6
joined=$var1$var2$var3
sum=$((var1+var2+var3))
echo Joined variables: $joined
echo Sum of the variables: $sum
