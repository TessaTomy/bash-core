read -p $'1.Add\n2.sub\n3.Multi\n4.Divide : \n>>' c
read -p "Operands :" a b
case $c in 
    1) echo "$((a+b))" ;;
    2) echo "$((a-b))" ;;
    3) echo "$((a*b))" ;;
    4) echo "$((a/b))" ;;
    *) exit 0;;
esac
