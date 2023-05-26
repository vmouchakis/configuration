# add color in `ls` command
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagaced
alias ls='ls --color=auto'

# zsh prompt (needs to be better)
PS1="%n@%m %1~ %# "