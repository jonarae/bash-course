#! /bin/bash

welcome_message="Welcome to the course"

course_name="Awesome Bash Course"
echo "1: ${welcome_message} - ${course_name}"

# overriding
course_name="Shell Scripting Course"
echo "2: ${welcome_message} - ${course_name}"

# readonly
readonly ro_course_name="Read Only Course"
# ro_course_name="This line will error"
echo "3: ${welcome_message} - ${ro_course_name}"

# setting unbound
set -u
# uncomment below to see error
# echo "4: ${welcome_message} - ${unbound_variable}"

# reverting back to +u
set +u
echo "5: This will not error - ${unbound_variable}"

unset course_name
echo "6: ${welcome_message} - ${course_name}"