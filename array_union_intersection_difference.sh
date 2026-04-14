#!/bin/bash

x=(1 2 3 4)
b=(3 4 5 6)

# --- Union ---
union=$(for i in "${x[@]}" "${b[@]}"; do
    echo "$i"
done | sort -n | uniq)

# --- Intersection ---
intersection=$(for i in "${x[@]}" "${b[@]}"; do
    echo "$i"
done | sort -n | uniq -d)

# --- Difference (x - b) ---
difference=$(for i in "${x[@]}"; do
    found=0
    for j in "${b[@]}"; do
        if (( i == j )); then
            found=1
            break
        fi
    done
    if (( found == 0 )); then
        echo "$i"
    fi
done)



echo "Union: $union"
echo "Intersection: $intersection"
echo "Difference (x - b): $difference"
