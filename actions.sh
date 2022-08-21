#!/bin/bash
clear
figlet -f big actions | lolcat
echo "{1} Delete a file"
read Actions
if [[ $Actions=="1" ]]; then
    clear
    echo "Your documents :" | lolcat
    ls | lolcat
    echo "Enter filename to remove"
    read fn
    rm -i $fn
fi

if [[ $Actions=="99" ]]; then
    exit
fi
# I used https://daniel-sc.github.io/bash-shell-to-bat-converter/ to convert this script to batch