#! /bin/bash

# Task:
# Interactive input. Ask for two integers interactively. Test if the values are integers. If not, ask again. Repeat the same operations as in previous task.

read -p 'Type the first integer: ' int1

while ! [[ $int1 =~ ^[0-9]+$ ]]
do
    read -p 'Type the INTEGER: ' int1
done

read -p 'Type the second integer: ' int2

while ! [[ $int2 =~ ^[0-9]+$ ]]
do
    read -p 'Type the INTEGER: ' int2
done

echo The sum is $(expr $int1 + $int2)
echo The subtraction is $(expr $int1 - $int2)
echo The product is $(expr $int1 \* $int2)
echo The division is $(echo "scale=2; $int1/$int2" | bc -l)
