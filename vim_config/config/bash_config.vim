" set number
set clipboard=unnamed
" set cursorline
set noswapfile

set hlsearch
set ignorecase
set incsearch

set softtabstop=2
set shiftwidth=2
set expandtab

set showtabline=2
set splitbelow
set splitright

syntax on
syntax enable
try 
  colorscheme slate
catch
  colorscheme darkbule
endtry

filetype on
filetype indent on
filetype plugin on

set showtabline=2
set scrolloff=3

set wrap
set linebreak
set noshowmode
set smartcase
set nolist
set showcmd

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

