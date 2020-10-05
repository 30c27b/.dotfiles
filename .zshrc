##
# GPG
##

export GPG_TTY=$(tty)

##
# LsColors
##

export LSCOLORS=GxfxhxhxexhxhxExExGxGx

##
# Aliases
##

alias ls='ls -G'
alias l='ls -la'
alias cl='clear'
alias nf='neofetch --block_range 0 7 --underline_char ' ' --separator " - " --colors 6 8 8 4 8 7'

alias gi='git init'
alias gcl='git clone'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'

##
# Prompt
##

setopt PROMPT_SUBST

function git_branch() {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
	echo " ⎇ ${ref#refs/heads/}"
}

PROMPT='%F{0}@%f%F{4}%n%f • %B%F{6}%2/%f%F{5}%b$(git_branch)%f λ '

##
# Antigen
##

source ~/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

antigen apply

##
# Environement-specific config
##

source ~/.zsh/env.zsh


##
# neofetch
##

nf