export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

### git completion scripts
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.dotfiles/.git-completion.sh
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/.dotfiles/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

### pretty prompt
export PS1='🐌🦄 `if [ $? = 0 ]; then echo -e "☺️ "; else echo -e "🙄"; fi` \w\[\033[31m\] $(__git_ps1) \[\033[01;34m\]$\[\033[00m\] '

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Rbenv settings
eval "$(rbenv init -)"
export PATH="$HOME/.dotfiles/.rbenv:$PATH"

### Aliases
alias bex="bundle exec"

alias gs="git status -s"
alias gl="git log"
alias gp="git pull --rebase"
alias gc="git commit -a -m "

alias bsync="browser-sync start --server --files "

alias ls="gls --color --group-directories-first"
