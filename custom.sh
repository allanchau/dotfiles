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
  git
  hub
  kubernetes-cli
  mongodb
  node@8
  packer
  vagrant-completion
  wget
  yarn --without-node
)

brew install "${packages[@]}"

# Install Cask.
brew tap caskroom/cask

# Install apps.
apps=(
  atom
  docker
  firefox
  focus-booster
  google-chrome
  google-cloud-sdk
  gpg-suite
  hyper
  kaleidoscope
  minikube
  moom
  nordvpn
  postman
  sequel-pro
  slack
  spotify
  typora
  vagrant
  vagrant-vmware-utility
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

cat ./assets/vscode-settings.json > ~/Library/Application\ Support/Code/User/settings.json

# Install packages.
code --install-extension EditorConfig.editorconfig
code --install-extension PeterJausovec.vscode-docker
code --install-extension Tyriar.sort-lines
code --install-extension WakaTime.vscode-wakatime
code --install-extension WallabyJs.quokka-vscode
code --install-extension akamud.vscode-theme-onelight
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension dbaeumer.vscode-eslint
code --install-extension felipecaputo.git-project-manager
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension joelday.docthis
code --install-extension lamartire.git-indicators
code --install-extension ms-vscode.atom-keybindings
code --install-extension naumovs.color-highlight
code --install-extension shinnn.stylelint
