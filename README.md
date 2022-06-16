# dotfiles

## Setup

```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
```

## Unlink

```bash
unlink ~/.zshrc
unlink ~/.gitconfig
```

## dotfiles with GitHub Codespaces

`install.sh` installs zsh plugins, copies over `.zshrc`, `.gitconfig`, etc.

Mark `install.sh` as executable: `git add install.sh --chmod=+x`

See [link](https://burkeholland.github.io/posts/codespaces-dotfiles/) for more information

## Brewfile

```bash
# creating a brefile
brew bundle dump --file=~/.dotfiles/Brewfile --force
# installing a brewfile
brew bundle install --file=~/.dotfiles/Brewfile
```
