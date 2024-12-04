# Dotfiles
Dotfiles repository managed by [chezmoi](https://www.chezmoi.io/).
## Features
- Supports macOS and Debian(Ubuntu) Linux for containerization only
- zsh and ohmyzsh theme based on agnoster
- Cursor(default) or Visual Studio Code as editor
- Include python(pyenv, poetry), node(nvm), go(gvm), rust, sdkman(jvm langs) 
- Include exa, jq, fd(fd-find), rg(ripgrep-all), fzf

## How to use
Just execute `install.sh`
### options
You can pass options like below
```shell
DOTFILES_EMAIL=maintain0404@gmail.com ./install.sh
```
### Available Options
1. `DOTFILES_EMAIL` : Your email. Used for configuring git(.gitconfig)
2. `DOTFILES_INSTALL_LANG` : Whether you install languages(python, node, etc...). default false
3. `DOTFILES_INSTALL_TOOL`: Whether you install tools(exa, tldr, etc ...). default true
4. `DOTFILES_USE_SUDO`: If you set this option true, use sudo with $DOTFILES_PASSWORD for installing tools.
5. `DOTFILES_PASSWORD`: password for sudo.

### Tips
1. Run template files
```shell
chezmoi execute-template < {filepath}
```
2. Run template and edit
```shell
chezmoi execute-template "{{ templatet }}"
```
