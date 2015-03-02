#!/bin/bash
# bootstrap.sh

dir=~/.dotfiles
bash_files=".bash_logout .bash_profile .bash_colors .bash_prompt" 
git_files=".git_completion .gitignore_global .git_prompt .gitconfig"
vim_files=".vim .vimrc"
files=""

case "$1" in
    b)
        files+=$bash_files
        ;;
    g)
        files+=$git_files
        # Enter git username
        echo "Enter your Git username: "
        read gitu
        git config --global user.name "${gitu}"
        # Enter git email
        echo "Enter your Git email: "
        read gite
        git config --global user.email "${gite}"
        ;;
    v)
        files+=$vim_files
        ;;
    *)
        echo "Use -gbv to instantiate git bash vim dotfiles"
        exit 1
        ;;
esac

for file in $files
do
    # if file exists
    mv ~/$file $dir/old_dots/.
    ln -s $dir/$file ~/$file
done


