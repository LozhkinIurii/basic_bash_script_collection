#! /bin/bash

# Task:
# Functions. Extract the arithmetic operations from previous tasks to a function. Place the function to external file. Combine cli-args.sh and interactive-input.sh so that arguments can be given as parameters or read interactively.

math(){
    local int1
    local int2
    if [ $# -eq 2 ]
    then
        int1=$1
        int2=$2
    elif [ $# -eq 1 ]
    then
        int1=$1
        echo The first integer is $int1
        read -p 'Type the second integer: ' int2
        while ! [[ $int2 =~ ^[0-9]+$ ]]
        do
            read -p 'Type the INTEGER: ' int2
        done
    else
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
    fi
    echo The sum is $(expr $int1 + $int2)
    echo The subtraction is $(expr $int1 - $int2)
    echo The product is $(expr $int1 \* $int2)
    echo The division is $(echo "scale=2; $int1/$int2" | bc -l)
}

math $1 $2
