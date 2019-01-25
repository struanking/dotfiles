#!/usr/bin/env bash


# install apps ’n things via home-brew
#./brew.sh
#./brew_cask.sh

# NVM setup
#mkdir ~/.nvm
#echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.bash_profile

# Bash settings
cp .aliases ~/
cp .bash_profile ~/
#cp .bash_prompt ~/
cp .bashrc ~/
cp .functions ~/

# Git settings
cp .git-completion.bash ~/
cp .gitconfig ~/
#cp git-diff.sh ~/

chmod +x ~/.git-completion.bash

# Install Font - if this doesn't work then open each font and "Install" manually
cp ./fonts/*.* ~/Library/Fonts

# OS X customisations
chmod +x .macos
./.macos

# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile

# SSH key for github
# https://help.github.com/articles/generating-an-ssh-key/
#ssh-keygen -t rsa -b 4096 -C "struan.king@gmail.com"
