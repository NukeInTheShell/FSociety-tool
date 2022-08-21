#!/bin/bash

figlet -f big SETUP | lolcat
sleep 2
clear

pip install -r requirments.txt > ./log.txt 2>&1 &
sudo apt install figlet 2>&1 > ./log.txt 2>&1 &
sudo apt install lolcat > ./log.txt 2>&1 &
sudo apt-get install cowsay > ./log.txt 2>&1 

PID=$!
i=1
sp="/-\|"
echo -n ' '
while [ -d /proc/$PID ]
do
  printf "\b${sp:i++%${#sp}:1}"
done
sleep 3
echo -n "Finished, exiting in : "
echo -ne "3 \r"
sleep 1
echo -n "Finished, exiting in : "
echo -ne "2 \r"
sleep 1
echo -n "Finished, exiting in : "
echo -ne "1 \r"
sleep 1
exit


