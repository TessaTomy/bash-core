echo "Array :"
read -a a

sorted=($(for i in "${a[@]}"; do
    echo "$i"
done | sort -n ))
# -n if numeric else use simply sort
echo "Sorted Array : ${sorted[@]}"
