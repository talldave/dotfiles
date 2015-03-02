#!/bin/bash
# bootstrap.sh

dir=~/.dotfiles
files=".bash_logout .git_completion .gitignore_global .bash_profile .git_prompt .vim .bash_colors .bash_prompt .git_repo .viminfo .bash_history .gitconfig .vimrc" 

for file in $files; do
    mv ~/$file $dir/old_dots/.
    ln -s $dir/$file ~/$file
done
