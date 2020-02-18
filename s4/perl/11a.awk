#!/usr/bin/awk -f
BEGIN{

FS = "-"

print "Enter date in mm-dd-yy format: "

getline < "/dev/tty"

if(((($3%4!=0) && ($1==2) && ($2>28)) || (($3%4==0) && ($1==2) && ($2>29))) ||
((($1==1) || ($1==3) || ($1==5) || ($1==7) || ($1==8) || ($1==10) || ($1==12)) && ($2>31)) ||
((($1==4) || ($1==6) || ($1==9) || ($1==11)) && ($2>30)) || ($1<1) || ($2<1) || ($3<1) || ($1>12))
    print "Invalid date"

else{
    if($1==1)
	temp="JAN";
    else if($1==2)
        temp="FEB";
    else if($1==3)
        temp="MAR";
    else if($1==4)
        temp="APR";
    else if($1==5)
        temp="MAY";
    else if($1==6)
        temp="JUN";
    else if($1==7)
        temp="JUL";
    else if($1==8)
        temp="AUG";
    else if($1==9)
        temp="SEP";
    else if($1==10)
        temp="OCT";
    else if($1==11)
        temp="NOV";
    else
        temp="DEC";

    print "The date is " $2 " The month is " temp " The year is " $3
    }
}
