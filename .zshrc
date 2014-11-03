# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kkelly"
# "gentoo"
EDITOR="vim"
alias vim='vim -p'
alias music='vlc -f http://fileserve.strifey.com:8000 --intf ncurses'
alias srvr='ssh kyle@f.strifey.com'
alias la='ls -a'
alias gtar='tar -zxvf'
alias upup='sudo apt-get update && sudo apt-get upgrade'
alias :q='exit'
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial gitignore pep8 pyenv pylint python tmux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/bin:$PATH
