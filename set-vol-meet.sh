#!/bin/bash

#if [ -z "$1" ]
#  then
#    echo "No argument supplied, defaults to 50%"
#    set 1=50%
#fii
#if [[ $1 ]]
#    $1="50%"
#amixer -D pulse sset Master $1i

amixer -D pulse sset Master 30%
