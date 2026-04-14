
read -p "Array elements : " -a a
read -p "Insertion id and new element : " p x

len=${#a[@]}

for ((i=len; i>=p; i--)); do
    a[i+1]=${a[i]}
done

a[p]=$x

echo "Updated Array : ${a[@]}"
