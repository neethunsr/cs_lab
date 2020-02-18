if [[ $# -ne 1 ]]
then
    	echo "Enter file as argument"
        exit
fi

if [[ !(-a $1) ]]
then
    	echo "Enter valid file"
        exit
fi
sym_count=0
space_count=`grep -o ' ' $1 | wc -l`
char_count=`wc -c $1 | awk '{print $1}'`
v_count=0
l_count=`wc -l $1 | awk '{print $1}'`
while read -n1 c
do
	if [[ $c == *['!'@#\$%^\&*()_+,]*  ]]
	then
		((sym_count++))
	elif [[ $c == *[aAeEiIoOuU]*  ]]
	then
		((v_count++))
	fi
done < "$1"
echo "The number of lines are: $l_count"
echo "The number of vowels are: $v_count"
echo "The number of characters are: $char_count"
echo "The number of spaces are: $space_count"
echo "The number of symbols are: $sym_count"


