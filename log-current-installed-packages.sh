#!/bin/bash
# this script requires a date as a parameter
if [ $# -eq 0 ]
  then
    echo "No argument supplied"
    echo "please supply date under the format yyyy-mm-dd"
fi
#apt list --manual-installed | grep -F \[installed\] 
apt-mark showmanual > ~/software\ installers/$1.list
