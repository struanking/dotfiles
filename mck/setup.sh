#!/usr/bin/env bash

# install apps ’n things via home-brew
brew bundle

# zsh settings
cp .zshrc ~/

# Git settings
cp .git-completion.bash ~/
cp .gitconfig ~/
cp git-diff.sh ~/

chmod +x ~/.git-completion.bash

# Install Fonts - if this doesn't work then open each font and "Install" manually
cp ./fonts/*.* ~/Library/Fonts
cp ./fonts/FiraCode/*.* ~/Library/Fonts

# zsh - installed via Brewfile
# Make zsh the default shell
chsh -s $(which zsh)

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Pure prompt
npm install --global pure-prompt

# NVM setup - do after zsh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash


# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh

# SSH key for git
# https://help.github.com/articles/generating-an-ssh-key/
#ssh-keygen -t rsa -b 4096 -C "struan.king@gmail.com"
