set nocompatible                  " be iMproved
filetype on                       "because if it is already off, turning it off causes bad exit codes
filetype off                      " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ====== General
Bundle 'kien/ctrlp.vim'
Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'SearchHighlighting'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Gundo'
Bundle 'ZoomWin'
Bundle 'rking/ag.vim'
Bundle 'sheerun/vim-polyglot'
Bundle 'sickill/vim-pasta'
Bundle 'Valloric/YouCompleteMe'
  " snimpate dependencies
  Bundle 'MarcWeber/vim-addon-mw-utils'
  Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" ====== Ruby / Rails
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-endwise'

" ====== Go
Bundle 'dgryski/vim-godef'



 filetype plugin indent on        " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

