#! /bin/bash

report_header_formatter="%6s %15s %11s %15s %16s\n"
report_item_formatter="%6d %10s %15s %16.2f %16.2f\n"
report_header_div="---------------------------------------------------------------------------"

printf "$report_header_formatter" "ID" "COURSE NAME" "LEVEL" "ACTUAL PRICE" "DISC. PRICE"

echo $report_header_div
printf "$report_item_formatter" \
10 "Bash" "L100" 99 12 \
105 "Linux" "L200" 1599 15

# echo "10 \"Bash\" L100 \$99 \$12"
# echo "105 \"Linux\" L200 \$1599 \$15.0"