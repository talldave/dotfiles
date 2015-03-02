# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
umask 002

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

source ~/.git_completion
source ~/.bash_prompt

export TZ=America/Los_Angeles
#export LD_LIBRARY_PATH=/opt/X11/lib
#export EC2_HOME=~/.ec2
export CDPATH=.:~:~/Work:~/Work/git
export PATH=$PATH:~/Work/bin
#export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin:$EC2_HOME/bin:$HOME/bin:/Library/Frameworks/GDAL.framework/Programs:/opt/local/bin
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/
#export PERL5LIB=/opt/local/lib/perl5/site_perl/5.12.3
export EDITOR=vim
#export TW_CON_KEY=ep4UC47ZbqSW0vPCPlvQNtgND
#export TW_CON_SECRET=rSW6jk8PUruu4R3VgHzSYRWSsDM82t71E9dt5ZRet3ofGUSJO9
#export TW_ACS_KEY=11006842-rcz0Hi3FXSPuhUuM43J8JDpAC1eXOu6zrdJnjIsf1
#export TW_ACS_SECRET=ywDi9AyxLKPi5IJe8Iw6vklkSBtDI7qsBCrGMobLwexgS
#export PG_TW_PW=earthcats.spacemonkey

export LS_OPTIONS='--color=auto'
export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

alias ls='ls -p'
alias la='ls -a'
alias ll='ls -al'
alias repo='source ~/.git_repo'
alias gs='lynx http://www.google.com/'
alias h='history | tail -30'
alias hg='history | grep -i'
alias dots='echo "git clone git@gitlab.urthecast.com:dbianco/dotfiles.git ~/.dotfiles"'
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
alias vm-local-up='vagrant up 67573c9'
alias vm-local-dn='vagrant halt 67573c9'
alias vm-local-ssh='vagrant ssh 67573c9'
alias vm-gs='vagrant global-status'

echo   ' .bash_profile sourced.'

