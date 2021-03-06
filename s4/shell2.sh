 #! /bin/sh
 memlimit=10.0;
 cpulimit=10.0;
 while ( true )
 do
 echo " script running .."
 ps -e -o pmem=,cpu=,pid=,user=,comm= | sort -r -k 1
 while read size cpu pid user comm
 do
 kill_mem=0
 kill_cpu=0
 if [ "\ $user " = " mozilla " ]
 then
 echo " Script Running ..."
 kill_mem =` echo "$size$ > $$memlimit " $|$ bc `
 kill_cpu =` echo "$cpu$ > $$cpulimit " $|$ bc `
 if [ " $kill_mem = 1" ]
 then
 echo " process with PID $pid killed "
 kill $pid
 elif [ " $kill_cpu = 1" ]
 then
 echo " process with PID $pid killed "
 kill $pid
 else
 continue
 fi
 fi
 done
 sleep 1
 done
