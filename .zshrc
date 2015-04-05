# -- Zsh -----------------------------------------------------------------------
# Path to your oh-my-zsh configuration.
ZSH="/Users/michaeljin/.dotfiles/.oh-my-zsh"

# -- Editor --------------------------------------------------------------------
EDITOR="subl -n -w"

# -- Theme ---------------------------------------------------------------------
# Set name of the theme to load.
# Look in /Users/michaeljin/.dotfiles/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# -- Plugins -------------------------------------------------------------------
# Plugins can be found in /Users/michaeljin/.dotfiles/.oh-my-zsh/plugins/
# Custom plugins may be added to /Users/michaeljin/.dotfiles/.oh-my-zsh/custom/plugins/
#
# Which plugins would you like to load?
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx ant git rails sublime git-flow npm node history-substring-search z zsh-syntax-highlighting)

# -- Oh My Zsh -----------------------------------------------------------------
source $ZSH/oh-my-zsh.sh

# -- Options -------------------------------------------------------------------
unsetopt correct_all
unsetopt correct

# -- Aliases -------------------------------------------------------------------
source $HOME/.dotfiles/.aliases

if [[ -f "$HOME/.aliases" ]]; then
    source $HOME/.aliases
fi

# -- Rbenv ---------------------------------------------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# -- Nvm -----------------------------------------------------------------------
export NVM_DIR="/Users/michaeljin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# -- Term ----------------------------------------------------------------------
TERM=xterm-256color

# -- Update --------------------------------------------------------------------
dotfiles

