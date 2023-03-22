#! /bin/bash

# Task: Command line arguments script. Two parameters. Print out the sum, difference and product and division of the numbers.

echo sum: $(($1+$2))
echo subtraction: $(($1-$2))
echo product: $(($1*$2))
echo division: $(echo "scale=2; $1/$2" | bc -l)
