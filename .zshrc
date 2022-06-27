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

function editsource {
    code ~/.zshrc
}

function reload {
    source ~/.zshrc && clear
}

function rtest() {
  if [ "$1" != "" ]
  then
    bundle exec rspec "$1"
  else
    bundle exec rspec {spec,components/*/spec}/**/*_spec.rb
  fi
}

function lint {
  bundle exec rubocop --cache=false --display-cop-names --force-exclusion --format=simple
}

function checksql {
  if docker ps --filter status=exited | grep --quiet "${COMPOSE_PROJECT_NAME}"_mysql; then
    echo "Detected that mysql container has exited; creating a new one..."
    docker-compose rm --force mysql
    docker-compose up --detach mysql
  fi
}
