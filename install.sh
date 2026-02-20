#!/usr/bin/env sh

echo "Install chezmoi..."
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin

echo "Now setup..."
init_command="chezmoi init maintain0404"

add_init_option() {
    local type=$1
    local optname=$2
    local envname=$3
    local default=$4
    local value=$(env | grep $3 | cut -d "=" -f2)

    echo "$optname $value"

    if [ -n "$value" ]; then 
        init_command="$init_command --prompt$type \"$optname=$value\""
    else 
        init_command="$init_command --prompt$type \"$optname=$default\""
    fi
}

add_init_option String email DOTFILES_EMAIL maintain0404@gmail.com

echo "$init_command"
sh -c "$init_command"
chezmoi apply
