#!/usr/bin/env bash


# Install native apps
apps=(
    #airdisplay
    appcleaner
    atom
    #breach
    caffeine
    #charles
    calibre
    cheatsheet
    #cocktail
    #diffmerge
    #disk-inventory-x
    dropbox
    evernote
    firefox
    gitup
    google-chrome
    #google-chrome-canary
    chrome-remote-desktop-host
    #hazel
    #hipchat
    #imagealpha
    imageoptim
    iterm2
    kindle
    #little-snitch
    nvalt
    #opera
    #phantomjs
    #rescuetime
    #screenflow
    spectacle
    #sublime-text3
    #torbrowser
    #vagrant
    #virtualbox432096996
    vlc
    #webstorm
)

brew cask install --appdir=/Applications ${apps[@]}  2> /dev/null


# Enable casks in Alfred
#brew cask alfred link


# Remove outdated versions from the cellar
brew cask cleanup


# Vagrant plugins, apply here since brew-cask installs vagrant
#vagrant plugin install vagrant-vbguest
#vagrant plugin install vagrant-digitalocean
