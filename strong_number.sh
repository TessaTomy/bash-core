fact() {
    local d=$1
    if (( d <= 1 )); then
        echo 1
    else
        echo $(( d * $( fact $((d-1)) ) ))
    fi
}

read -p "Number : " n
len=${#n}   
sum=0

for (( i=0; i<len; i++ )); do
    digit=${n:i:1}       
    f=$(fact $digit)     
    (( sum += f ))
done

if (( sum == n )); then
    echo "Strong Number !!"
else
    echo "Not Strong !!"
fi
