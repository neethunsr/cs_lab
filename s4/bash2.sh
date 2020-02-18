if [[ $# -eq 0 ]]
then
	echo "No file specified as an argument"
	exit
fi
for file in $*
do
	if [[ !(-a $file) ]]
	then
		echo "Enter a valid files as arguments"
		exit
	fi
done
printf "\nFilename\tLast Modification Time\tPermissions\t\tSize\n\n"
for file in $*
do
	NAME=`basename $file`
	PERM=`ls -lah $file | awk -F " " '{print $1}'`
	SIZE=`ls -lah $file | awk -F " " '{print $5}'`
	DATE=`ls -lah $file | awk -F " " '{print $6 " " $7 " " $8 }'`

	printf "$NAME\t\t$DATE\t\t$PERM\t\t$SIZE\n\n"

done
