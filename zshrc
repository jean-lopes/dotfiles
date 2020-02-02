autoload -U colors && colors

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob nomatch
unsetopt beep notify
bindkey -v
export KEYTIMEOUT=5

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
#PROMPT=\$vcs_info_msg_0_'%# '
#zstyle ':vcs_info:git:*' formats '%b'

alias ls='ls --color=auto'

source $HOME/.profile

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

source /home/jean/github/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
