#! /bin/zsh
# Install pyenv(Python)
if [ -n $(which pyenv 1> /dev/null || echo $?) ]
then
    curl https://pyenv.run | zsh
fi

# Install nvm(Node.js)
if [ -n $(which nvm 1> /dev/null || echo $?) ]
then
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | zsh
fi

# Install gvm(Go)
if [ -n $(which gvm 1> /dev/null || echo $?) ]
then
    zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

# Install rust
if [ -n $(which rustup 1> /dev/null || echo $?) ]
then
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | zsh
fi
