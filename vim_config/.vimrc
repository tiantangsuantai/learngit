source ~/.vim/config/bash_config.vim


" plugins manage
call plug#begin('~/.vim/plugged')
  " Plug 'vim-airline/vim-airline'
  Plug 'scrooloose/nerdtree'
  Plug 'tomtom/tcomment_vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-surround'
  Plug 'rust-lang/rust.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'vim-latex/vim-latex'
call plug#end()

" coc extensions
let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-html',
      \ 'coc-vimlsp',
      \ 'coc-cmake',
      \ 'coc-highlight',
      \ 'coc-pyright',
      \ 'coc-rust-analyzer',
      \ ]


" vim-go
let g:go_bin_path = $HOME."/go/bin"

source ~/.vim/config/plug_config.vim
