# Dotfiles

A small collection of config files that can be shared across all devices (running macOS or Linux)

## Requirements

- [Zsh]
- [NeoVim]
- [NvChad]
- [Tmux]
- [Tmux Plugin Manager]
- [Stow]

## Installation

1. Follow the installation instructions of all of the requirements.
2. Ensure a [Nerd Font] is installed and set to the default font of the terminal emulator.
3. Run `stow` from the repo dir:

```sh
$ stow .
```

## Uninstallation

It is possible to uninstall the dotfiles by running:

```sh
$ stow -D .
```

## Potential Updates (TODO)

- Add Makefile for installing/uninstalling
- Add config for Vim/NeoVim (.vimrc)

[Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
[NeoVim](https://neovim.io/)
[NvChad](https://nvchad.com/)
[Tmux](https://github.com/tmux/tmux/wiki)
[Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)
[Stow](https://www.gnu.org/software/stow/)
