#! /bin/bash
# EXPERIMENTAL!

# Install brew if not exists.
if [ -n $(which brew 1> /dev/null || echo $?) ] 
then
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi
# Install karabiner
brew install karabiner-elements
# Install visual-studio-code
brew install visual-studio-code
# Install iterm2
brew install --cask iterm2
# Install docker
brew install --cask docker
