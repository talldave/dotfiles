#!/bin/bash
# bootstrap.sh

dir=~/.dotfiles
files=".bash_logout .git_completion .gitignore_global .bash_profile .git_prompt .vim .bash_colors .bash_prompt .git_repo .viminfo .gitconfig .vimrc" 

for file in $files; do
    # if file exists
    mv ~/$file $dir/old_dots/.
    ln -s $dir/$file ~/$file
done


# Enter PS1 Hostname

# Enter git username
# Enter git email

