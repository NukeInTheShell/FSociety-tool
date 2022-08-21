# --------------------------------------------------------------------
# coded by Nuke in the shell
# v1.0
# make in 2020
# --------------------------------------------------------------------
from cProfile import run
import pyfiglet
import subprocess
import os



def menu():
    os.system("figlet -f big FSociety | lolcat")
    # ascii_banner = pyfiglet.figlet_format("FSociety")
    # print(ascii_banner)
    Fsociety="FSociety@localhost $"
    # print("\033[5mCoded By NukeInTheShell\033[0m")

    

    print("{1} actions")
    print("{2} launcher")
    print("{99} exit")
    ask = input(Fsociety)
    if ask == "1":

        print("start")
        os.system("chmod +x ./actions.sh")
        print("test 1 passed")
        subprocess.call("./actions.sh")
        print("test 2 passed")
        print("end")
    if ask == "99":
        exit()
    if ask == "2":
        os.system("chmod +x ./launcher.sh")
        subprocess.call("./launcher.sh")
menu()



