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
  gpg-suite
  grammarly
  hyper
  kaleidoscope
  moom
  nordvpn
  postman
  sequel-pro
  slack
  spotify
  typora
  vagrant
  virtualbox
  visual-studio-code
  vlc
  vmware-fusion
)

brew cask install "${apps[@]}"

# Atom

# Open atom and close atom to create default directory and files.
/Applications/Atom.app/Contents/Resources/app/atom.sh
pkill atom

cat ./assets/atom-config.cson > ~/.atom/config.cson

# Install packages.
apm install atom-ide-ui
apm install docblockr
apm install editorconfig
apm install ide-typescript
apm install language-docker
apm install linter
apm install linter-eslint
apm install linter-stylelint
apm install pigments
apm install sort-lines
apm install wakatime

# VSCode

# Install packages.
code --install-extension EditorConfig.editorconfig
code --install-extension PeterJausovec.vscode-docker
code --install-extension WakaTime.vscode-wakatime
code --install-extension christian-kohler.path-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension joelday.docthis
code --install-extension ms-vscode.atom-keybindings
code --install-extension naumovs.color-highlight
code --install-extension rafamel.subtle-brackets
code --install-extension redhat.vscode-yaml
code --install-extension robinbentley.sass-indented
code --install-extension shinnn.stylelint
