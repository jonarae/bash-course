#! /bin/bash

animal="Dog"

echo "1: This animal is (before the function): $animal"

function function1 {
    local animal="Tiger"
    echo "2: This animal is (inside the function): $animal"
}

function1

echo "3: This animal is (after the function): $animal"