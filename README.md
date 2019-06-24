# Vim
Contains a vimrc file and autoload folder with [vim-plug](https://github.com/junegunn/vim-plug) plugin manager.

## Setup

```
cd ~
git clone https://github.com/rohitfarmer/vim.git .vim

ln -s .vim/vimrc .vimrc

vi .vimrc
:PlugInstall
```

## Setup Neovim
If vim is already configured as mentioned above then simply copy .vimrc file as
init.vim to ~/.config/nvim directory.

```
cp ~/.vimrc ~/.config/nvim/init.vim
```

### Install vim-plug Plugin Manager in Neovim
```
dest=~/.local/share/nvim/site/autoload/plug.vim
mkdir -p $(dirname $dest)
wget -O - https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > $dest
```

## Plugins Installed

* [The NERDTree](https://github.com/scrooloose/nerdtree)
* [Nvim-R](https://github.com/jalvesaq/Nvim-R)
* [JEDI-VIM](https://github.com/davidhalter/jedi-vim)
* [vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty)
* [Better JSON for VIM](https://github.com/elzr/vim-json)
* [lightline.vim](https://github.com/itchyny/lightline.vim)

**Note: For vim and plugin usage read [https://github.com/rohitfarmer/vim/wiki](https://github.com/rohitfarmer/vim/wiki)**

# Install Latest Version of NeoVIM on Raspberry Pi
```
sudo apt-get install libtool libtool-bin autoconf automake cmake g++ pkg-config unzip gettext

git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

nvim is installed at /usr/local/bin/ 
```
