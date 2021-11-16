#! /bin/bash

export message="Hello"

echo "\$message is only accessible within this bash - ${message}"
printf "\n"

# run in parent bash
# export parent_bash_variable="This is set in the parent bash"
echo "\$parent_bash_variable will be displayed if "
echo "export parent_bash_variable=\"This is set in the parent bash\" is run:"
echo "${parent_bash_variable}"
printf "\n"

# run in parent bash
# another_variable="This is also set in the parent bash but not exported"
echo "\$another_variable won't be displayed: ${another_variable}"