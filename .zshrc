export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="pygmalion"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  colorize
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/go/bin:$PATH"

function growtest () {
  if "$@";
  then bundle exec rspec $1;
  else bundle exec rspec {spec,components/*/spec}/**/*_spec.rb;
  fi
}

function editsource {
    code ~/.zshrc
}

function reload {
    source ~/.zshrc && clear
}