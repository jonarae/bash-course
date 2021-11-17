#! /bin/bash

echo "This is all about declaring variables"

echo "------"

echo "Running declare -p"
echo "------"
declare -p
echo "------"

echo "Running declare -x varX=\"hello\""
echo "------"
declare -x varX="hello"
echo "varX: $varX"
echo "------"

printf "\n"
echo "Running declare -r varR=\"read this\""
echo "------"
declare -r varR="read this"
varR="this will error"
echo "varR: $varR"
echo "------"

printf "\n"
echo "Running declare -i varI=123"
echo "------"
declare -i varI=123
echo "varI: $varI"
varI="text"
echo "varI becomes 0 when assigned to a string: $varI"
echo "------"

# printf "\n"
# echo "Running declare -l varL=\"Happy\""
# echo "------"
# declare -l varL="Happy"
# echo "varL: $varL"
# echo "------"

# printf "\n"
# echo "Running declare -u varU=\"happy\""
# echo "------"
# declare -u varU="happy"
# echo "varU: $varU"
# echo "------"