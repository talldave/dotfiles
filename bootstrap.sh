#!/bin/bash
# bootstrap.sh

dir=~/.dotfiles
bash_files=".bash_logout .bash_profile .bash_colors .bash_prompt " 
git_files=".git_completion .gitignore_global .git_prompt .gitconfig "
vim_files=".vim .vimrc "
files=""
git=""

function usage {
    echo "USAGE: $0"
    echo
    echo "-b : include .bash*"
    echo "-g : include .git*"
    echo "-v : include .vim*"
    exit
}

function git_config {
    git config --global user.name "${gitu}"
    git config --global user.email "${gite}"
}


if [ "$1" = "" ]
then
    usage
fi

while getopts gbv flag
do
    case ${flag} in
        b)
            files+=$bash_files
            ;;
        g)
            files+=$git_files
            echo -n "Enter your Git username: "
            read gitu
            echo -n "Enter your Git email: "
            read gite
            git=1
            ;;
        v)
            files+=$vim_files
            ;;
        ?)
            usage
            ;;
    esac
done

for file in $files
do
    # if file exists
    mv ~/$file $dir/old_dots/.
    ln -s $dir/$file ~/$file
done

if [ "${git}" -eq 1 ]
then
    git_config
fi

