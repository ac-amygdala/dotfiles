export GPG_TTY=$TTY

# Lang options for russian lang
# export LANG=ru_RU.UTF-8

# Autoupdate
# Comment this line, if you want to disable autoupdate on startup
UPDATE_ON_LOGIN="true"

PATH_TO_DOTFILES=`dirname $(readlink ~/.zshrc)`
source $PATH_TO_DOTFILES/utils/.autoupdate

# Source all aliases
source ~/.aliases

# Source all functions
source ~/.fun

# custom aliases and functions
if [ -f "$HOME/.extrarc" ]; then
    source $HOME/.extrarc
fi

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export LS_COLORS="di=1;:ln=35;:so=32;:pi=33;:ex=31;:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
SOLARIZED_THEME=dark
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks for oh-my-zsh
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast)

source $ZSH/oh-my-zsh.sh
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


# Set up fzf variables
export FZF_DEFAULT_OPTS="--no-color"

# Add fzf config
source ~/.fzf.zsh

# Customize to your needs..."
export PATH=$PATH:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin:/Berkanavt/bin:/Berkanavt/bin/scripts:~/node_modules/.bin:/usr/local/share/dotnet:/usr/local/share/dotnet/dotnet:${PATH}

source ~/.projects.env
