# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
umask 002

# include .dotfiles if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.git_completion ]; then
    source ~/.git_completion
fi

if [ -f ~/.bash_prompt ]; then
    source ~/.bash_prompt
fi

export TZ=America/Los_Angeles
export CDPATH=.:~:~/Work:~/Work/git
export PATH=$PATH:~/Work/bin
export EDITOR=vim
export LS_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

alias ls='ls -p'
alias la='ls -a'
alias ll='ls -al'
alias gs='lynx http://www.google.com/'
alias h='history | tail -30'
alias hg='history | grep -i'
alias dots='echo "git clone https://gitlab.urthecast.com/dbianco/dotfiles.git ~/.dotfiles"'
#alias rm='~/bin/trashit'
#alias grass='/Applications/GRASS-6.4.app/Contents/MacOS/grass.sh'
#alias today='echo;grep ~~~ ~/Projects/Notebook/todo.md;echo'
alias sd='$EDITOR ~/.bash_profile;source ~/.bash_profile'
alias psg='ps -ef | grep -v $$ | grep -i -e WCHAN -e '
alias ping='ping -c 4'
alias ducks='pwd;du -ck | sort -nr | head'
alias df='df -H'
alias du='du -ch'
alias wget='wget -c'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias vi='vim'
alias v='vim .'
alias pine='alpine'
alias vm='vm.sh'
alias repo='repo.sh'

echo   ' .bash_profile sourced.'

