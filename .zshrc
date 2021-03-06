export ZSH="$HOME/.oh-my-zsh"
export ZDOTDIR=$HOME

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# completions
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist

compinit
_comp_options+=(globdots)		# Include hidden files.

# Colors
autoload -Uz colors && colors

#Aliases
alias cat="bat"		# install bat with Choco

# Plugins
source $HOME/zsh-functions

# Require install 
source $ZSH/custom/plugins/zsh-completions/zsh-completions.plugin.zsh

source $ZSH/custom/plugins/zsh-autopair/autopair.zsh
source $ZSH/custom/plugins/you-should-use/you-should-use.plugin.zsh

# Built-in to OMZ
source $ZSH/plugins/history/history.plugin.zsh
source $ZSH/plugins/git/git.plugin.zsh
source $ZSH/plugins/dirhistory/dirhistory.plugin.zsh
source $ZSH/plugins/web-search/web-search.plugin.zsh
source $ZSH/plugins/last-working-dir/last-working-dir.plugin.zsh


setopt prompt_subst
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Theme

PROMPT='%(?:$fg_bold[green]➜ :$fg_bold[red]➜ ) $fg[cyan]%d$reset_color $(git_prompt_info)'

# Better keep these two lines at the bottom 
# https://github.com/zsh-users/zsh-syntax-highlighting/issues/738
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #load this before substring-search
source $ZSH/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
