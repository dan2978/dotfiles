# Options

HISTFILE=~/.histfile
HISTSIZE=1024
SAVEHIST=1024
setopt beep notify
unsetopt autocd extendedglob nomatch completealiases 

# Autoloads

autoload -U promptinit && promptinit
autoload -U compinit && compinit
autoload -U colors && colors
autoload -U select-word-style && select-word-style bash

zstyle :compinstall filename '~/.zshrc'

# Prompt

export PROMPT="%(?..[%{$fg[red]%}%?%{$reset_color%}] )[%{$fg[green]%}%n@%m%{$reset_color%}] (%d) %# "
export RPROMPT="%*"

# Keybindings

zstyle ':completion:*' menu select

typeset -g -A key

# Navigation

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[2~" overwrite-mode
bindkey "^[[3~" delete-char
bindkey "^[[A" up-line-or-history
bindkey "^[[B" down-line-or-history
bindkey "^[[D" backward-char
bindkey "^[[C" forward-char
bindkey "^[[5~" beginning-of-buffer-or-history
bindkey "^[[6~" end-of-buffer-or-history
bindkey "^[[3;5~" kill-word
bindkey "^H" backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
