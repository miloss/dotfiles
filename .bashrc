export PATH=$HOME/local/bin:$HOME/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Fun stuff here
#. /path/to/.bash.d/fun-stuff.sh

# PS1 prompt colors
PS1='\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '

# Powerline
#function _update_ps1() {
#  export PS1="$(~/bin/powerline.py $? 2> /dev/null)"
#}
#export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# Aliases
alias ls='ls -G'
alias la='ls -la'
alias lt='ls -ltr'

alias na='gnome-open .'
alias em='emacs'
alias h='hg'

# GIT aliases
alias g='git'
alias gci='git commit'
alias gcm='git commit -m'
alias gt='git status'
alias gd='git diff'
alias ga='git add'
alias gr='git rm'
alias gb='git branch'
alias gc='git checkout'
alias pull='git pull origin'
alias push='git push origin'

# Mac aliases
alias showFiles='defaults write com.apple.Finder AppleShowAllFiles TRUE;\killall Finder'
alias hideFiles='defaults write com.apple.Finder AppleShowAllFiles FALSE;\killall Finder'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
