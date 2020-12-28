# Vim
Contains a vimrc file and autoload folder with [vim-plug](https://github.com/junegunn/vim-plug) plugin manager.

## Setup

### Install vim-plug Plugin Manager for Neovim
```
dest=~/.local/share/nvim/site/autoload/plug.vim
mkdir -p $(dirname $dest)
wget -O - https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > $dest
```
### Clone vim Repository and link Vimrc file
```
cd ~
git clone https://github.com/nrachman/vim.git .vim

mkdir .config/nvim

ln ~/.vim/vimrc ~/.config/nvim/init.vim
```
### Install Plugins
```
vim or nvim
# if this is the first time then it should automatically install all the plugins.
# else

:PlugInstall
```
### to get ncm-2 / nmc-r to work
Change this portion of the ~/.config/nvim/init.vim
```
31 " This is needed to have ncm-R working correctly
32 " Have to install pynvim in this python version
33 " where I have done python3 -m pip install pynvim
34 let g:python3_host_prog="/Users/rachmaninoffn2/tools/miniconda3/bin/python3.8"
```

## Plugins Installed

* [The NERDTree](https://github.com/scrooloose/nerdtree)
* [Nvim-R](https://github.com/jalvesaq/Nvim-R)
* [JEDI-VIM](https://github.com/davidhalter/jedi-vim)
* [lightline.vim](https://github.com/itchyny/lightline.vim)
* [delimitMate](https://github.com/Raimondi/delimitMate/)

**Note: For vim and plugin usage read [https://github.com/rohitfarmer/vim/wiki](https://github.com/rohitfarmer/vim/wiki)**

