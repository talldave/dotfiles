


files=".bash_logout .git_completion .gitignore_global .bash_profile .git_prompt .vim .bash_colors .bash_prompt .git_repo .viminfo .gitconfig .vimrc" 


for file in $files; do
    unlink ~/$file
done
