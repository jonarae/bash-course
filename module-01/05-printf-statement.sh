#! /bin/bash

printf "Hello!\n\n"

printf "Beautiful JR Siblings\n"
printf "%-15s : %10d\n" "Jona Rae" 29 "Jeuel Rue" 15 "Jerous Raymond" 28
printf "\n\n"

printf "Random floating numbers\n"
printf "%10.2f\n" 1003 989.12 1234.589
printf "\n\n"

number=12345.234234
printf "Printing a floating number from a variable here (number=%s) \n" ${number}
printf "Number value in variable is: %10.2f\n" ${number}