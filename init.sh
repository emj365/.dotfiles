# ln -s $(pwd)/.gitconfig ~/
# ln -s $(pwd)/.gitignore_global ~/

mkdir -p ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes
wget -O ${ZSH_CUSTOM:-~/.oh-my-zsh/customr}/themes/honukai.zsh-theme https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm-zsh/master/honukai.zsh-theme

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
