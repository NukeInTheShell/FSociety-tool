#!/bin/bash
clear
figlet -f big launcher | lolcat
echo "{1} Nmap"
echo "{2} Aircrack-ng"
echo "{3} Hydra"
echo "{4} Jhon The Ripper"
echo "{5} Wireshark"
echo "{6}"
echo "{7}"
echo "{8}"
echo "{9}"
echo "{10}"
read launcher
if [[ $launcher=="1" ]]; then
    figlet -f big Nmap | lolcat
    echo "{1} INSTALL"
    echo "{2} RUN"
    read Nmap
    if [[ $Nmap=="1" ]]; then
        sudo apt install nmap
    fi
    if [[ $Nmap=="2" ]]; then
        nmap
    fi
fi