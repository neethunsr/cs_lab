#!/bin/bash
clear
log=`who|wc -l`
echo "The currently logged in user is  $USER "\ 
echo "The current shell is  $SHELL "\ 
echo "The home directory is  $HOME "\ 
echo "The os type is $OSTYPE "\ 
echo "The current path setting is  $PATH "\ 
echo "The working directory is  $PWD "\ 
echo "There are $log users logged in "\