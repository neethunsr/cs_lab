#! /bin/bash
echo -e "`cat /etc/os-release`"
echo -e "`cat /etc/shells`"
echo -e "`xset q`"
echo -e "`cat /proc/meminfo`"
echo -e "Driver: `sudo hdparm -I /dev/sda`"
echo -e "`cat /proc/mounts`"
