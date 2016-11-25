#!/usr/bin/env bash


# Install native apps
apps=(
    # Code Editors
    atom
    #sublime-text3
    #
    # Apps
    calibre
    chrome-remote-desktop-host
    dropbox
    evernote
    hyper
    imageoptim
    iterm2
    kindle
    little-snitch
    moom
    nvalt
    #rescuetime
    #remote-desktop-connection
    #vagrant
    virtualbox
    vlc
    #
    # Browsers
    brave
    firefox
    google-chrome
    #google-chrome-canary
    opera-beta
    torbrowser
    #
    # Dev Tools
    #charles
    cheatsheet
    gitup
    #phantomjs
    #
    # OS Enhancements
    a-better-finder-rename
    #airdisplay
    appcleaner
    bettertouchtool
    caffeine
    cocktail
    #diffmerge
    #disk-inventory-x
    #hazel
    omnidisksweeper
    the-unarchiver
    todoist
    #totalfinder
    the-unarchiver
    spectacle
    #teamspeak
    #
    # Games
    starrealms
    #
    # Quick Look Plugins
    suspicious-package
    betterzipql
    qlmarkdown
    quicklook-csv
    quicklook-json
    quicknfo
    webpquicklook
    webpquicklook
)

brew cask install --appdir=/Applications ${apps[@]}  2> /dev/null


# Enable casks in Alfred
#brew cask alfred link


# Remove outdated versions from the cellar
brew cask cleanup


# Vagrant plugins, apply here since brew-cask installs vagrant
#vagrant plugin install vagrant-vbguest
#vagrant plugin install vagrant-digitalocean
