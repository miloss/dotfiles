export PATH=$HOME/local/bin:$HOME/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Fun stuff here
#. /path/to/.bash.d/fun-stuff.sh

# Powerline
function _update_ps1() {
  export PS1="$(~/bin/powerline.py $? 2> /dev/null)"
}
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"


# General short aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias lt='ls -ltr'

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
