#! /bin/bash

a=100
b=101

a_greater_than_b="a is greater than b"
a_less_than_or_equal_to_b="a is less than or equal to b"
divider="--------"

echo $divider
echo "Using [test \$a -gt \$b]"
if test $a -gt $b; then
    echo $a_greater_than_b
else
    echo $a_less_than_or_equal_to_b
fi

echo $divider
echo "Using [[ \$a -gt \$b ]]"
if [[ $a -gt $b ]]; then
    echo $a_greater_than_b
else 
    echo $a_less_than_or_equal_to_b
fi

echo $divider
echo "Using (( \$a > \$b ))"
if (( $a > $b )); then
    echo $a_greater_than_b
else
    echo $a_less_than_or_equal_to_b
fi

echo $divider
echo "Using (( a > b ))"
if (( a > b )); then
    echo $a_greater_than_b
else
    echo $a_less_than_or_equal_to_b
fi

compare () {
    if (( a > b )); then
        return 0
    else
        return 1
    fi
}

echo $divider
echo "Using compare function"
if ( compare ); then
    echo $a_greater_than_b
else
    echo $a_less_than_or_equal_to_b
fi
