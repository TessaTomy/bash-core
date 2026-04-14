echo "Array :"
read -a a
n=${#a[@]}
x=1

read -p "Search Key : " s

for i in ${a[@]}
do
    if((i==s))
    then
        echo "Element found at pos : $x"
        exit 1
    fi
    let x++
done

echo "Element not found !!"
