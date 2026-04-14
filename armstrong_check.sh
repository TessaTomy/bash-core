read -p "Number pls : " n
len=${#n}
arm=0

for ((i=0; i<len; i++)); do
    ((arm += ${n:i:1}**len))
done

if ((arm == n)); then
    echo "$n is Armstrong !!"
else
    echo "$n is NOT Armstrong !!"
fi
