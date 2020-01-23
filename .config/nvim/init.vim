set nocompatible

if has('nvim')
  set shada+=!
endif

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

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-markdown'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf'
Plug 'sbdchd/neoformat'
Plug 'dense-analysis/ale'
" Haskell
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plug 'neovimhaskell/haskell-vim'
"Plug 'mpickering/hlint-refactor-vim'
"Plug 'alx741/vim-hindent'
"Plug 'bitc/vim-hdevtools'
"Plug 'nbouscal/vim-stylish-haskell'

" Elm
Plug 'elmcast/elm-vim'

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

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" ultisnips / vim-snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

" neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
let g:neoformat_enabled_haskell = ["hindent", "stylishhaskell"]
let g:neoformat_run_all_formatters = 1
let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

"haskell-vim
let g:haskell_enable_quantification = 1
let g:haskell_enable_recursivedo = 1
let g:haskell_enable_arrowsyntax = 1
let g:haskell_enable_pattern_synonyms = 1
let g:haskell_enable_typeroles = 1
let g:haskell_enable_static_pointers = 1
let g:haskell_backpack = 1
let g:haskell_indent_if = 2
let g:haskell_indent_case = 2
let g:haskell_indent_let = 2
let g:haskell_indent_where = 2
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 2
let g:cabal_indent_section = 2

"hdevtools
let g:hdevtools_stack = 1
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsInfo<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsClear<CR>

" "hindent
" let g:hindent_on_save = 1
" let g:hindent_indent_size = 2
" let g:hindent_line_length = 100
" let g:hindent_command = "stack exec -- hindent"
