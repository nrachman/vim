" Vimrc by Rohit Farmer

" PLUGIN MANAGER
" For more information https://github.com/junegunn/vim-plug/wiki/tutorial
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Github user/repository
Plug 'scrooloose/nerdtree' 
Plug 'jalvesaq/Nvim-R'
Plug 'ncm2/ncm2'
Plug 'gaalcaras/ncm-R'
Plug 'davidhalter/jedi-vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'elzr/vim-json'
Plug 'itchyny/lightline.vim'
Plug 'Raimondi/delimitMate'

" To install the plugins in the list above execute :PlugInstall

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" SET LEADER
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Settings related to external plugins
" vim-monokai-tasty
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty

" NERD Tree
"autocmd vimenter * NERDTree " Always open nerdtree
map <leader>nn :NERDTreeToggle<CR>

" Light line
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" Nvim-R
set ma                  " Make a buffer modifiable
let R_assign = 0        " Disable underscore assignment to <-

" Snakemake
au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake

" Line Numbers
set number              " Switch the line numbers on.

" Sets How Many Lines of History VIM Has To Remember
set history=500

" Enable Filetype Plugins
" filetype plugin on
" filetype plugin indent on

" Indentation
" set wrap
set expandtab           " Enter spaces when tab is pressed.
set smarttab            " Use smart tabs.
" set textwidth=80        " Break lines when line length increases.
set autoindent          " Copy indent from current line when starting a new
                        " line.
set si                  " Smart indent.

" Read Options
set autoread

" Ruler or Status Line
set ruler

" Wild Menu
" For tab completion.
" Enables a menu at the bottom of the vim/gvim window.
set wildmenu
set wildmode=list:longest,full

set mouse=i             " Enable mouse support in insert mode.
                        " While selecting text with mouse it automatically
                        " enters in the visual mode. Use yy to copy and p to
                        " paste in the command mode.

" Height of The Command Bar
set cmdheight=2

" SEARCH
" Ignore Case When Searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" For regular expressions turn magic on
set magic

" BRACKETS
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" ERRORS
" No annoying sound on errors
set noerrorbells

" COLOR AND FONTS
" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

" Background colour
" set background=dark     " Use colors that are more suitable for dark background.

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" FILES, BACKUP AND UNDO
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" TABS & NAVIGATION 
" Useful mappings for managing tabs
map <leader>tnew :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tn :tabn<cr>
map <leader>tp :tabp<cr>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


