#! /bin/bash

#Internal Field Separator
IFS="|"

echo "This is all about special variables in Bash"

echo "This is the total arguments passed [\$#]: $#"
echo "This is the status of the last command [\$?]: $?"
echo "This is the PID of current script [\$\$]: $$"

./sleep.sh &
echo "This is the PID of the script in the background [\$!]: $!"

echo "----------"
echo "Passing arguments to ./04-positional-parameters.sh using \$*"
echo "----------"
./04* $*
echo "----------"

echo "Passing arguments to ./04-positional-parameters.sh using \$@"
echo "----------"
./04* $@
echo "----------"

echo "Passing arguments to ./04-positional-parameters.sh using \"\$@\""
echo "----------"
./04* "$@"
echo "----------"

echo "Passing arguments as one to ./04-positional-parameters.sh using \"\$*\""
echo "----------"
./04* "$*"
echo "This uses the IFS variable as separator."
echo "----------"