set nocompatible                  " be iMproved
filetype on                       "because if it is already off, turning it off causes bad exit codes
filetype off                      " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ====== General
Bundle 'Shougo/unite.vim'
Bundle 'h1mesuke/unite-outline'
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/vimproc'
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
Bundle 'scrooloose/nerdtree'
Bundle 'Gundo'
Bundle 'regedarek/ZoomWin'
Bundle 'rking/ag.vim'
Bundle 'sickill/vim-pasta'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'

" ====== language files
" Bundle 'vim-polyglot'
Bundle "kchmck/vim-coffee-script"
Bundle "chrisbra/csv.vim"
Bundle "tpope/vim-git"
Bundle "jnwhiteh/vim-golang"
Bundle "tpope/vim-haml"
Bundle "othree/html5.vim"
Bundle "pangloss/vim-javascript"
Bundle "leshill/vim-json"
Bundle "LaTeX-Box-Team/LaTeX-Box"
Bundle "groenewege/vim-less"
Bundle "tpope/vim-markdown"
Bundle "vim-perl/vim-perl"
Bundle "StanAngeloff/php.vim"
Bundle "vim-scripts/python.vim--Vasiliev"
Bundle "sheerun/rspec.vim"
Bundle "vim-ruby/vim-ruby"
Bundle "slim-template/vim-slim"



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

