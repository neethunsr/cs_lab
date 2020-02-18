#!/bin/awk -f
BEGIN{
    FS="\n"
}
{
    if(var!=$1 && NR>=0)
        print var
    var=$1
    line=$0
}
END{
    print line
}