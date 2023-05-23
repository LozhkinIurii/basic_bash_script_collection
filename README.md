# Basic bash script collection.

1. The _variables-sum.sh_ script contains three defined variables, which are then joined to each other. There is also the variable that stores the sum of these variables.

2. The _cli-args.sh_ script takes two arguments and prints sum, subtraction, product and division of the arguments. For division 'bc' was used in order to be able to show floating-point number. One probably have to install it by 'sudo apt-get install bc' command. The script must be used with two parameters that are numbers. Otherwise, the script will throw an error.

3. The _interactive-input.sh_ script asks user for two integers and checks, if given values are integers. If yes, then the script outputs the sum, the subtraction, the product and the division of the integers. The script uses 'bc' command for the division to be able to show decimal part.

4. The _function-args.sh_ script implements arithmetic operations just as in previous scripts. The script behavior depends on number of arguments it is given (max 2).  If no arguments are given to the script, then the script asks for them. If only one is given, then the script asks only for second one. If both arguments are given, then the scripts does arithmetics right away.

5. The _rfc-fetch.sh_ script takes a first integer argument, and fetches same amount of rfc files. Then title and number of lines for each rfc file are printed. The url is https://www.ietf.org/rfc/rfc965.txt (rfc number varies). If there is no any argument provided, only one rfc file is processed.