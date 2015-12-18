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
alias music='vlc -f http://m.strifey.com --intf ncurses'
alias srvr='ssh kyle@strifey.com'
alias la='ls -a'
alias gtar='tar -zxvf'
alias upup='sudo apt-get update && sudo apt-get upgrade'
alias :q='exit'

function mnl () {
	if [ $# -lt 2 ]; then echo "Need at least 2 args: 'mnl FILE DIR'"; return; fi
	dir="${@: -1}"
	while [ $# -gt 1 ]; do
		mv $1 $dir && ln -sf "$dir/$1" $1; shift
	done
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mercurial gitignore pep8 pyenv pylint python tmux)

source $ZSH/oh-my-zsh.sh

if [[ -n "${TMUX}" ]] then;
	PROMPT_COMMAND='eval `/nail/scripts/tmux-env`'
fi

# Customize to your needs...
#export PATH=/usr/local/bin:$PATH
