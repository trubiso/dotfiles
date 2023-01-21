source $HOME/.config/antigen.zsh
export TERM=xterm-256color
export GPG_TTY=$(tty)

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/trubiso/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls='ls --color=auto'
alias ll="ls -alG"

alias gap='git add . -p'
alias gs='git status'
alias gd='git diff'

antigen use oh-my-zsh

antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme amuse

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=243

ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=177,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=177,bold
ZSH_HIGHLIGHT_STYLES[arg0]=fg=177,bold

ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=141
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=141
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=141

antigen apply

PS1='%F{111}%B%/%b%f → '
