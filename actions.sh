#!/bin/bash
sudo apt-get install cowsay > ./log.txt 2>&1 
clear
# secret message
cowsay -f tux "LINUX"
clear
function actions_linux {
    figlet -f big actions | lolcat

    echo "{1} Delete a file"
    echo "{2} test if a file exist"
    echo "{99} return to menu"
    read Actions
    if [[ $Actions == "1" ]]; then
        clear
        echo "Your documents :" | lolcat
        ls | lolcat
        echo "Enter filename to remove"
        read fn
        rm -i $fn

    elif [[ $Actions == "2" ]]; then
        clear
        echo "Your documents :" | lolcat
        ls | lolcat
        echo "Enter the name of the file"
        read filename
        if [ -f "$filename" ]; then
            echo "File exists"
        else
            echo "File does not exist"
        fi

    elif [[ $Actions == "99" ]]; then
        clear
        python3 fsociety.py

    else
        cowsay -f tux Error, retry
        sleep 2
        clear
        actions_linux
    fi
}
actions_linux
# I used https://daniel-sc.github.io/bash-shell-to-bat-converter/ to convert this script to batch