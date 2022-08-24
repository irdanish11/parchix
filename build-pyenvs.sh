#!/bin/bash

menu () {
    # clear
    printf "\n"
    printf "____________ Build Envs & Install Requirements ____________\n\n"
    printf "1.  General\n"
    printf "2.  TensorFlow CPU\n"
    printf "3.  TensorFlow GPU\n"
    printf "4.  PyTorch CPU\n"
    printf "5.  PyTorch GPU\n\n"
    printf "____________ Install Requirements Only ____________\n\n"
    printf "6.  General\n"
    printf "7.  TensorFlow CPU\n"
    printf "8.  TensorFlow GPU\n"
    printf "9.  PyTorch CPU\n"
    printf "10. PyTorch GPU\n"
    printf "q.  Exit\n\n"
    printf "Select: "
}


main () {
    # clear
    while :
    do
        #clear
        menu
        read menu_selection
       
        if [[ $menu_selection == "1" ]]; then
            conda env create -f scripts/pyenvs/general.yaml

        elif [[ $menu_selection == "2" ]]; then
            conda env create -f scripts/pyenvs/tf-cpu.yaml      

        elif [[ $menu_selection == "3" ]]; then
            conda env create -f scripts/tf-gpu.yaml    

        elif [[ $menu_selection == "4" ]]; then
            conda env create -f scripts/torch-cpu.yaml    

        elif [[ $menu_selection == "5" ]]; then
            conda env create -f scripts/torch-gpu.yaml    

        elif [[ $menu_selection == "6" ]]; then
            conda activate general
            pip install -r scripts/pyenvs/requirements-general.txt

        elif [[ $menu_selection == "7" ]]; then
            conda activate tf
            pip install -r scripts/pyenvs/requirements-tf-cpu.txt

        elif [[ $menu_selection == "8" ]]; then
            conda activate tf-gpu
            pip install -r scripts/pyenvs/requirements-tf-gpu.txt

        elif [[ $menu_selection == "9" ]]; then
            conda activate torch
            pip install -r scripts/pyenvs/requirements-torch-cpu.txt

        elif [[ $menu_selection == "10" ]]; then
            conda activate torch-gpu
            pip install -r scripts/pyenvs/requirements-torch-gpu.txt

        elif [[ $menu_selection == "q" ]]; then
            exit
        else
            printf "Wrong Choice!\n"
        fi
    done
}


# The eval command make sub-shell recognize conda commands. For more Visit:
# https://stackoverflow.com/a/70474019
# https://stackoverflow.com/a/55507956
eval "$(conda shell.bash hook)"
main

