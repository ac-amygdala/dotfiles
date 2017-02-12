if [ -z "$ZSH" ]; then
    _MY_ZSH_PATH=$(which zsh)
    test -x "$_MY_ZSH_PATH" && exec "$_MY_ZSH_PATH"
fi;

export NVM_DIR="/Users/amygdala/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "/Users/amygdala/.dnx/dnvm/dnvm.sh" ] && . "/Users/amygdala/.dnx/dnvm/dnvm.sh" # Load dnvm

export PATH="$HOME/.yarn/bin:$PATH"
