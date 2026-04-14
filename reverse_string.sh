read -p "Number pls : " n 
len=${#n}
echo -n "Reverse : "
for((i=len-1;i>=0;i--))
do
    echo -n ${n:i:1}
done
echo 
