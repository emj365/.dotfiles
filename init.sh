[[ ! -e $HOME/.zshrc ]] && ln -s $(pwd)/.zshrc $HOME/
[[ ! -e $HOME/.gitconfig ]] && ln -s $(pwd)/.gitconfig $HOME/
[[ ! -e $HOME/.gitignore_global ]] && ln -s $(pwd)/.gitignore_global $HOME/

[[ ! -e $HOME/.vim/backups ]] && mkdir ~/.vim/backups
[[ ! -e $HOME/.vim/swaps ]] && mkdir ~/.vim/swaps
[[ ! -e $HOME/.vim/undo ]] && mkdir ~/.vim/undo
[[ ! -e $HOME/.vim/colors ]] && mkdir ~/.vim/colors
if [ ! -e $HOME/.vim/colors/solarized8.vim ]; then
	wget -O $HOME/.vim/colors/solarized8.vim https://raw.githubusercontent.com/lifepillar/vim-solarized8/v1.1.1/colors/solarized8.vim
fi
[[ ! -e $HOME/.vimrc ]] && ln -s $(pwd)/.vimrc $HOME/

if [ ! -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes ]; then
	mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
fi
if [ ! -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/honukai.zsh-theme ]; then
	wget -O ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/honukai.zsh-theme https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm-zsh/master/honukai.zsh-theme
fi

if [ ! -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

if [ ! -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

# https://medium.com/the-code-review/make-your-terminal-more-colourful-and-productive-with-iterm2-and-zsh-11b91607b98c
brew install powerlevel9k
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
