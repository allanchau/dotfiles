#!/usr/bin/env bash

# Check if Homebrew is installed. If not, install it.
which -s brew
if [[ $? != 0 ]] ; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Install packages.
packages=(
  bash
  bash-completion@2
  coreutils
  git
  hub
  node
  packer
  ruby
  watchman
  wget
  yarn
)

brew install "${packages[@]}"

# Install Cask.
brew tap caskroom/cask

# Install apps.
apps=(
  atom
  docker
  firefox
  focusbooster
  google-chrome
  grammarly
  hyper
  kaleidoscope
  moom
  nordvpn
  postman
  sequel-pro
  slack
  typora
  vagrant
  virtualbox
  vlc
)

brew cask install "${apps[@]}"

# Atom

# Open atom and close atom to create default directory and files.
/Applications/Atom.app/Contents/Resources/app/atom.sh
pkill atom

cat ./assets/atom-config.cson > ~/.atom/config.cson

# Install packages.
apm install atom-ide-ui
apm install atom-ternjs
apm install docblockr
apm install editorconfig
apm install ide-typescript
apm install language-docker
apm install language-nginx
apm install linter-eslint
apm install linter-stylelint
apm install pigments
apm install sort-lines
