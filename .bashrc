export PATH=$HOME/local/bin:$HOME/bin:$PATH

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


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
