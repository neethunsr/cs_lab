#! /bin/bash

ls -l | grep "^-rwx" | awk '{printf "%s", $NF; printf "\n"}'