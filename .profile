export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
# unset MANPATH # delete if you already modified MANPATH elsewhere in your config
# MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

### git completion scripts
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.dotfiles/.git-completion.sh
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.dotfiles/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Rbenv settings
eval "$(rbenv init -)"
export PATH="$HOME/.dotfiles/.rbenv:$PATH"

### NVM settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Aliases
alias bex="bundle exec"

alias gs="git status -s"
alias gl="git log"
alias gp="git pull --rebase"
alias gc="git commit -a -m "

alias bsync="browser-sync start --server --files "

alias ls="gls --color --group-directories-first"
alias nicechrome='function _nicechrome(){ open -na "Google Chrome" --args "--app=https://$1" };_nicechrome'

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/alexandra/Development/google-cloud-sdk/path.bash.inc' ]; then source '/Users/alexandra/Development/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/alexandra/Development/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/alexandra/Development/google-cloud-sdk/completion.bash.inc'; fi
export PATH="/usr/local/opt/node@10/bin:$PATH"
