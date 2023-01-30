# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kkelly"
UPDATE_ZSH_DAYS=60
# "gentoo"
EDITOR="vim"
alias vim='vim -p'
alias music='vlc -f http://m.strifey.com --intf ncurses'
alias srvr='ssh kyle@strifey.com'
alias la='ls -a'
alias gtar='tar -zxvf'
alias pgrep='pgrep -fl'
alias upup='sudo apt update && sudo apt upgrade'
alias :q='exit'
alias fixssh='export $(tmux show-environment | grep \^SSH_AUTH_SOCK=)'
alias fs='fixssh'
alias review-branch='review-branch --nopush -f'
alias ish='ssh -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias mdf='df -h -xsquashfs -xtmpfs -xdevtmpfs'

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
plugins=(docker git mercurial gitignore pep8 pyenv pylint python tmux)

source $ZSH/oh-my-zsh.sh

if [[ -n "${TMUX}" ]] then;
	PROMPT_COMMAND='eval `/nail/scripts/tmux-env`'
fi

# Customize to your needs...
#export PATH=/usr/local/bin:$PATH
