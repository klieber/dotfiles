export M2_HOME=/opt/apache-maven
export M2=$M2_HOME/bin

# Add binaries into the path
PATH=~/.dotfiles/bin:$PATH
PATH=$PATH:.
PATH=$PATH:/var/lib/gems/1.8/bin
PATH=$M2:$PATH
export PATH

export EDITOR=vi
export JAVA_HOME=/usr/lib/jvm/java-7-oracle/jre

# Source all files in ~/.dotfiles/source/
function src() {
  local file
  if [[ "$1" ]]; then
    source "$HOME/.dotfiles/source/$1.sh"
  else
    for file in ~/.dotfiles/source/*; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then source.
function dotfiles() {
  ~/.dotfiles/bin/dotfiles "$@" && src
}

src
