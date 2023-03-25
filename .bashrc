# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term) 

# Aliases
alias ..='cd ..' 
alias ...='cd ../..' 
alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias ls='exa -alh --header --group-directories-first'
alias df='df -h'
alias free='free -h'

# Dotfiles & Files
alias bs='micro ~/.bashrc'
alias reload='source ~/.bashrc'
alias e="micro"
alias gc="git clone"

# Dunst
alias hi="notify-send 'Hi there!' 'Welcome to my Bspwm desktop! ' -i ''"

# Add Color
alias egrep='grep --color=auto' 

export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
 export VISUAL=nvim;
 export EDITOR=nvim;
# PS1 Customization
# PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ "
PS1="\W $ "
neofetch
