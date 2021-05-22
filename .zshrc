#! /bin/zsh -
# Set options
# ===========
# Docs: http://zsh.sourceforge.net/Doc/Release/Options.html#Options

export ZSH=~/.zsh

export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Extend Autocomplete Search Path
# fpath=($HOME/.dotfiles/zsh/lib/completions $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# unset http_proxy 
# unset https_proxy

# Auto-cd when issuing a command that is a directory name
setopt auto_cd

# Case-insensitive globbing. This allows case-insensitive expansions
# e.g. % ls ~/d*<tab> expands to % ls /Users/dte/Desktop /Users/dte/Documents
setopt no_case_glob

# Enable autocorrection on commands
setopt correct
setopt correct_all

# Auto-completion
autoload -Uz compinit && compinit

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# Search history with up/down arrow keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Vim mode
bindkey -v

# Better searching in command mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# History options
# ===============
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt extended_history
SAVEHIST=5000
HISTSIZE=2000

# share history across multiple zsh sessions
setopt SHARE_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

# Source .after configs
# for f (~/.dotfiles/**/*.zsh(N.))  . $f

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"