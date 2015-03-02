# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
umask 002

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# set prompt
source ~/.bash_colors
PS1_Host="laptop"
#source ~/.bash_prompt
export PROMPT_DIRTRIM=2
export GIT_PS1_SHOWDIRTYSTATE=true
#export GIT_PROJECT=""
source ~/.git_completion
source ~/.git_prompt
#PS1='\[\033[01;31m\]laptop $(__git_ps1 " (%s)")\$\[\033[00m\] '
#PS1=$Red$PS1_Host$White' $(__git_ps1 "(%s)")\$ '$Color_Off
#PS1='\[\033[01;31m\]laptop \$\[\033[00m\] '
PS1=$URed$PS1_Host'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'${Green}'"$(__git_ps1 " (${GIT_PROJECT} | %s)"); \
  else \
    # @5 - Changes to working tree
    echo "'${IRed}'"$(__git_ps1 " {${GIT_PROJECT} | %s}"); \
  fi) '${Color_Off}'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo "'$Red' \w'$Color_Off' \$ "; \
fi)'


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
alias ls='ls -p'
alias gs='lynx http://www.google.com/'
alias h='history | tail -30'
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
alias vm-local='vagrant up 67573c9'

echo   ' .bash_profile sourced.'

