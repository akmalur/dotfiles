#!/bin/sh

zshrc() {
  echo "==========================================================="
  echo "             cloning zsh-autosuggestions                   "
  echo "-----------------------------------------------------------"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  echo "==========================================================="
  echo "             cloning zsh-syntax-highlighting               "
  echo "-----------------------------------------------------------"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  echo "==========================================================="
  echo "             import zshrc                                  "
  echo "-----------------------------------------------------------"
  cat .zshrc > $HOME/.zshrc
}

zshrc

brew bundle install --file=~/.dotfiles/brewfile

chmod 0755 /workspaces/grow

sudo chsh -s $(which zsh) $(whoami)
