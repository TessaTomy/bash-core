read -a a
n=${#a[@]}

for ((i=0; i<n; i++)); do
    for ((j=i+1; j<n; j++)); do
        if (( a[i] > a[j] )); then
            t=${a[i]}
            a[i]=${a[j]}
            a[j]=$t
        fi
    done
done

echo "Sorted Array : ${a[@]}"
