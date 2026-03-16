#!/bin/bash

read -p "Enter your name: " username
read -p "Enter your age: " age

echo "Hello, $username!"
echo "Next year, you will be $((age + 1)) years old."
