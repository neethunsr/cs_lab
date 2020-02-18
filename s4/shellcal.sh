clear
i="y"
echo "Enter the first number "
read n1
echo "Enter the second number "
read n2
while [ $i = "y" ]
do
echo "1- Addition "
echo "2- Subtraction "
echo "3- Multiplication "
echo "4- Division "
echo "5- Modulo division "
read c
case $c in
1)sum=` expr $n1 + $n2 `
echo "Result =" $sum;;
2) sum=` expr $n1 - $n2 `
echo "Result =" $sum;;
3) sum=` expr $n1 \* $n2 `
echo "Result =" $sum;;
4) sum=` expr $n1 / $n2 `
echo "Result =" $sum;;
5) sum=` expr $n1 % $n2 `
echo "Result =" $sum;;
esac
echo "Do you want to continue (y/n)"
read i
if [ $i != "y" ]
then
exit
fi
done
