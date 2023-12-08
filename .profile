if [ -z "$ZSH" ]; then
    _MY_ZSH_PATH=$(which zsh)
    test -x "$_MY_ZSH_PATH" && exec "$_MY_ZSH_PATH"
fi;

export PATH="$HOME/.yarn/bin:$PATH"

source /Users/amygdala/.docker/init-bash.sh || true # Added by Docker Desktop
