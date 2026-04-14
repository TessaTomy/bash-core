#!/bin/bash

read -p "Number : " n

if (( n == 0 || n == 1 )); then
    echo "Neither prime nor composite !!"
    exit 0
elif (( n == 2 )); then
    echo "Prime !!"
    exit 0
fi

for (( i=2; i*i<=n; i++ )); do
    if (( n % i == 0 )); then
        echo "Composite !!"
        exit 0
    fi
done

echo "Prime !!"
