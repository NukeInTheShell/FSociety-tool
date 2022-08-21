#!/bin/bash
function launcher_linux {
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
    echo "{99} return menu"
    read launcher
    if [[ $launcher == "1" ]]; then
        figlet -f big Nmap | lolcat
        echo "{1} INSTALL"
        echo "{2} RUN"
        read Nmap
        elif [[ $Nmap == "1" ]]; then
            sudo apt install nmap

        elif [[ $Nmap=="2" ]]; then
            nmap
        fi
    if [[ $launcher == "99" ]]; then
        clear
        python3 fsociety.py
    else
        cowsay -f tux Error, retry
        sleep 2
        clear
        launcher_linux
    fi
}
launcher_linux