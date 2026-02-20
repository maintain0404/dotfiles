# Dotfiles
Dotfiles repository managed by [chezmoi](https://www.chezmoi.io/).
## Features
- Supports macOS and Debian(Ubuntu) Linux for containerization only
- zsh and ohmyzsh theme based on agnoster
- Visual Studio Code as editor
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

### Tips
1. Run template files
```shell
chezmoi execute-template < {filepath}
```
2. Run template and edit
```shell
chezmoi execute-template "{{ templatet }}"
```
