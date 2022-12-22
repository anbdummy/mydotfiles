# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="cypher"
#ZSH_THEME="arrow"
#ZSH_THEME="bira"
#ZSH_THEME="darkblood"
#ZSH_THEME="fishy"
#ZSH_THEME="gnzh"
#ZSH_THEME="intheloop"
#ZSH_THEME="sorin"
#ZSH_THEME="af-magic"
#ZSH_THEME="trapd00r"
#ZSH_THEME="crunch"
#ZSH_THEME="duellj"
#ZSH_THEME="fox"
#ZSH_THEME="minimal"
ZSH_THEME="afowler"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
zsh-output-highlighting
git
zsh-syntax-highlighting
zsh-autosuggestions
zsh-pentest
docker
docker-compose
pass
golang
z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias dockershell="docker run --rm -it --entrypoint=/bin/bash"
alias dockershellsh="docker run --rm -it --entrypoint=/bin/sh"

function dockershellhere() {
        dirname=${PWD##*/}
	docker run --rm -it --entrypoint=/bin/bash -v `pwd`:/${dirname} -w /${dirname} "$@"
}
function dockershellshhere() {
        dirname=${PWD##*/}
	docker run --rm -it --entrypoint=/bin/sh -v `pwd`:/${dirname} -w /${dirname} "$@"
}
function dockerpshell() {
	dirname=${PWD##*/}
	docker run --rm -it -v `pwd`:/${dirname} -w /${dirname} mcr.microsoft.com/powershell
}

# Colorize with grc
alias nmap="grc nmap"
alias ls="grc ls"


export EDITOR=vim
alias nano='vim'
export PAGER='most'
alias burppro='/opt/Tools/BurpSuitePro/BurpSuitePro'
alias impacket="docker run --rm -it aminnabibohio/impacket" 
alias wpscan="docker run -it --rm wpscanteam/wpscan"
alias bh="docker run -d -p 7474:7474 -p 7687:7687 specterops/bloodhound-neo4j; sleep 2; bloodhound"
alias tidos="docker run --interactive --tty --rm tidos tidos"
alias evilwinrm="docker run --interactive --tty --rm evil-winrm"
alias addpass="pass insert"
alias getpass="pass -c"
alias tunnel="sshuttle --dns -vr ubuntu@13.211.85.55 0/0 --ssh-cmd 'ssh -p46422 -i ~/Documents/geekbit.pem'"
alias port="ssh -p46422 -i ~/Documents/geekbit.pem ubuntu@13.211.85.55 -D 9999"
alias music="ncmpcpp"
alias awh="docker run -p 80:80 -it zdresearch/advanced-web-hacking"
alias srvweb="docker run -it --rm --name MyMovies -v /home/amin/websrv/:/usr/local/apache2/htdocs/ -p 80:80 httpd:2.4"

# Shortcuts
alias ta='tmux attach'
alias iconf="vim ~/.config/i3/config"
alias pconf="vim ~/.config/polybar/config"
alias aconf="vim .config/alacritty/alacritty.yml"
alias genpw="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias stor="du -h --max-depth=1 ./"
alias cpustat='ps -eo pcpu,args | sort -k 1 -r | head -20'
alias tempstat='tlp-stat -t'
alias vpione="vault write ssh/creds/otp_key_role ip=10.244.94.96"
alias vpitwo="vault write ssh/creds/otp_key_role ip=10.244.115.41"

getcidr(){

    ip=`host -t a $1 | grep address | awk '{print $4}'`
    whois $ip
}


ipinfo() {

    curl ipinfo.io/"$1"
}

emailinfo() {

    curl emailrep.io/"$1"
}

myip() {
    curl ifconfig.me
}
