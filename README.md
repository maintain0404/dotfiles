# Dotfiles
Dotfiles repository managed by [chezmoi](https://www.chezmoi.io/).

## Supported Platforms
- **macOS**
- **WSL2** (Windows Subsystem for Linux, Ubuntu/Debian)

## Features
- zsh with oh-my-zsh (agnoster theme)
- Tool version management via [mise](https://mise.jdx.dev/)
- Visual Studio Code as editor

### macOS Apps (installed via Homebrew)
- karabiner-elements, iterm2, docker, raycast, warp, maccy, arc, dia, kaset

### WSL / Windows Apps (installed via winget)
- Obsidian, Visual Studio Code, TableCloth, Raycast
- WSL wrapper script for `obsidian` (`~/.local/bin/obsidian`)

## How to use

> Some steps require manual configuration before and after running the installer.
> See the [manual/](manual/) guides below.

### 1. Before installing — manual setup
Follow the platform-specific guide for pre-installation steps (virtualization, WSL2, zsh, etc.):
- **Windows/WSL**: [manual/1_before_dotfiles/windows.md](manual/1_before_dotfiles/windows.md)

### 2. Install dotfiles
```shell
sh -c "$(curl -fsLS https://raw.githubusercontent.com/maintain0404/dotfiles/main/install.sh)"
```

Or clone and run manually:
```shell
./install.sh
```

#### Options
```shell
DOTFILES_EMAIL=your@email.com ./install.sh
```

| Option | Description |
|--------|-------------|
| `DOTFILES_EMAIL` | Your email, used for git config |

### 3. After installing — manual setup
Follow the guides for post-installation steps (login, VSCode sync, etc.):
- **All platforms**: [manual/2_after_dotfiles/common.md](manual/2_after_dotfiles/common.md)
- **Windows/WSL**: [manual/2_after_dotfiles/windows.md](manual/2_after_dotfiles/windows.md)

## Tips
```shell
# Run a chezmoi template file
chezmoi execute-template < {filepath}

# Evaluate a template expression
chezmoi execute-template "{{ .chezmoi.os }}"
```
