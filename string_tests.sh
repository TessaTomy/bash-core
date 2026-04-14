#!/bin/bash

s="Hello"
echo "Length: ${#s}"   # 5

s="Hello, World!"
echo "Substring: ${s:7:5}"   # World

s="banana"
echo "Replace first: ${s/a/o}"     # bonana
echo "Replace all: ${s//a/o}"      # bonono

name=""
echo "Default value: ${name:-Guest}"   # Guest

s="Hello"
[[ $s == H* ]] && echo "Starts with H"
[[ $s == *o ]] && echo "Ends with o"
[[ $s == *ll* ]] && echo "Contains 'll'"
[[ $s == "Hello" ]] && echo "Equal to Hello"
[[ $s != "World" ]] && echo "Not equal to World"
[[ -z $name ]] && echo "Name is empty"
[[ -n $s ]] && echo "String is non-empty"
[[ $s < "World" ]] && echo "$s is less than World"
[[ $s > "Apple" ]] && echo "$s is greater than Apple"
[[ $s =~ ^H.*o$ ]] && echo "Regex match: starts H, ends o"
