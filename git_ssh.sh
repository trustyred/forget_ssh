#!/bin/bash

if [ $# -ne 2 ];then
    echo "argc is not enough"
	exit 1
fi

sudo apt-get install git
a=`git config --global user.name \"$1\"`
b=`git config --global user.email \"$2\"`

read -p "do you want to connect with github in ssh ,yes or no : " yn

if [ $yn = 'y' ] || [ $yn = 'Y'];then
	c=`ssh-keygen -t rsa -C \"$2\"`
else 
   exit 0
fi

