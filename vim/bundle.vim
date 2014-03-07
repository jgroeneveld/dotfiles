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
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'SearchHighlighting'
  " SearchHighlighting Dependency
  Bundle 'ingo-library'
"Bundle 'ervandew/supertab' " obsolet because of YouCompleteMe?
Bundle 'scrooloose/syntastic'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Gundo'
Bundle 'ZoomWin'
Bundle 'rking/ag.vim'
Bundle 'sheerun/vim-polyglot'
Bundle 'sickill/vim-pasta'

" ====== Snippets
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

Bundle 'bling/vim-airline'


Bundle 'tpope/vim-dispatch'
Bundle 'rosenfeld/conque-term'
Bundle 'jgdavey/tslime.vim'

Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'Valloric/YouCompleteMe'

" ====== Ruby / Rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'thoughtbot/vim-rspec'
"Bundle 'skwp/vim-rspec'
"Bundle 'skwp/vim-ruby-conque'
Bundle 'tpope/vim-endwise'
Bundle 'textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

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

