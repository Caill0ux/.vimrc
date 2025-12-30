# Introducion
This is a neovim configuration meant to be used across different debian OS's.

## Requirements:
+ neovim >= 0.10.0
+ Lazy vim
+ tar
+ curl
+ cargo
+ tree-sitter-cli
+ ripgrep
# Installation:

## Install dependencies:
### neovim:
 ```
$ sudo snap install nvim --classic
 ```
### tar && curl && ripgrep:

```
$ sudo apt install tar curl ripgrep -y
```
### rust && cargo:
```
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
###  tree-sitter-cli:
```
$ cargo install --locked tree-sitter-cli
```
### Install `~/.config/nvim`:
```
$ cd ~/.config
$ git clone https://github.com/Caill0ux/.vimrc.git
$ mv .vimrc nvim
```

#### Install Packer :
```
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Now open nvim and do `:PackerSync`.



### Credits
>It was made by Caill0ux with the help of ThePrimeagen videos.

