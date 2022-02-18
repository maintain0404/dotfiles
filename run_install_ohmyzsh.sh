#! /bin/bash
# Install zsh
if [ -z $(which zsh) ]
then 
{{ if eq .chezmoi.os "linux" -}}
    apt update && apt install -y zsh
{{ else if eq .chezmoi.os "darwin" -}}
    brew install zsh
{{ end -}}
fi

# Install oh-my-zsh
if [ -z ${ZSH} ]
then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install Theme
cp ~/agnoster-custom.zsh-theme ~/.oh-my-zsh/custom/themes
rm ~/agnoster-custom.zsh-theme
