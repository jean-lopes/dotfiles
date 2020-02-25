set nocompatible

set autoindent
set backspace=indent,eol,start
set belloff=all
set display=lastline
set formatoptions=tcqj
set history=500
set tabstop=2
set shiftwidth=2
set expandtab

set wildmenu
set modelines=0

set encoding=utf-8

set number
set relativenumber

set ttyfast
set ttimeoutlen=50

set laststatus=2
set showmode
set showcmd

let mapleader = ','

nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<CR>

set listchars=tab:▸\ ,eol:¬,space:·

map <leader>l :set list!<CR>
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set autoread
au FocusGained,BufEnter * checktime

set clipboard+=unnamed

set hidden
set nobackup
set nowritebackup

" Install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
source ~/.config/nvim/pluggins/airline.vim

Plug 'tpope/vim-markdown'

Plug 'suan/vim-instant-markdown', {'for': 'markdown'}

Plug 'SirVer/ultisnips'
source ~/.config/nvim/pluggins/ultisnips.vim

Plug 'honza/vim-snippets'

Plug 'godlygeek/tabular'
source ~/.config/nvim/pluggins/tabular.vim

Plug 'junegunn/fzf'

Plug 'sbdchd/neoformat'
source ~/.config/nvim/pluggins/tabular.vim

Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.config/nvim/pluggins/coc.vim

Plug 'neovimhaskell/haskell-vim'
source ~/.config/nvim/pluggins/haskell-vim.vim

" Elm
Plug 'elmcast/elm-vim'

Plug 'janko/vim-test'
source ~/.config/nvim/pluggins/vim-test.vim

Plug 'majutsushi/tagbar'
source ~/.config/nvim/pluggins/tagbar.vim

" EBNF
Plug 'killphi/vim-ebnf'
call plug#end()

syntax on
filetype plugin on
filetype indent on

set t_Co=256
set termguicolors
set background=dark
colorscheme dracula

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-q> <C-w>c
