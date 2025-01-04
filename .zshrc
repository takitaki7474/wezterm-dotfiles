# alias
alias gs='git status'
alias gb='git branch'
alias gdiff='git diff'
alias gc='git commit'
alias ga='git add'
alias gp='git push'

# export path
export PATH=$HOME/.nodebrew/current/bin:$PATH

# zplug
export ZPLUG_HOME=$(brew --prefix zplug)
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load --verbose

# history settings
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# fzf
export FZF_HOME=$(brew --prefix fzf)
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
echo "y" | $FZF_HOME/install
function select-history() {
  BUFFER=$(history -n -r 1 | fzf --exact --reverse --query="$LBUFFER" --prompt="History > ")
  CURSOR=${#BUFFER}
}
zle -N select-history
bindkey '^r' select-history
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# starship
eval "$(starship init zsh)"