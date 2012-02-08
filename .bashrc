# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions

# PS1 magic partly from http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# used to have ${HOME} instead of /local/home/${USER}
export PS1="[7m]0;\${PWD#*/home/${USER}/}\${?#0}\n${HOSTNAME%.example.com}:\${PWD#*/home/${USER}/}/\[[m\]"

alias ls='ls --color=auto --human-readable' #--classify
alias watch='watch --differences --interval=1 --no-title'
alias rsync='rsync --human-readable --progress'
alias du='du --human-readable'
alias df='df --human-readable'
alias cp='cp --interactive'
alias mv='mv --interactive'
alias rm='rm --interactive'
alias post-review='post-review --guess-description --username=jz'

shopt -s cdspell

export PAGER="less"
export EDITOR=emacs

export GREP_OPTIONS='--color=auto'
export HISTIGNORE='&:[bf]g' # :ls
export LESS='FSRX'
export MAKEFLAGS='-j8'
export PYTHONSTARTUP=~/.pythonrc.py
