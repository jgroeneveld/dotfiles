set nocompatible                  " be iMproved
filetype on                       "because if it is already off, turning it off causes bad exit codes
filetype off                      " required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ====== General
Bundle 'tpope/vim-sensible'
Bundle 'Shougo/unite.vim'
" Bundle 'h1mesuke/unite-outline'
" Bundle 'soh335/unite-outline-go'
" Bundle 'tsukkee/unite-tag'
Bundle 'Shougo/neomru.vim'
Bundle 'Shougo/vimproc'
" Bundle 'kien/ctrlp.vim'
" Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'SearchHighlighting'
  " SearchHighlighting Dependency
  Bundle 'ingo-library'
Bundle 'scrooloose/syntastic'
" Bundle 'jeetsukumaran/vim-buffergator'
" Bundle 'ton/vim-bufsurf'
" Bundle 'scrooloose/nerdtree'
" Bundle 'Gundo'
Bundle 'regedarek/ZoomWin'
Bundle 'rking/ag.vim'
Bundle 'sickill/vim-pasta'
" Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-commentary'
" Bundle 'godlygeek/tabular'
" Bundle 'majutsushi/tagbar'

" ====== TMUX
Bundle 'christoomey/vim-tmux-navigator'
" Bundle 'jgdavey/tslime.vim'
Bundle 'benmills/vimux'

" ====== language files
" Bundle 'vim-polyglot'
Bundle "kchmck/vim-coffee-script"
Bundle "chrisbra/csv.vim"
Bundle "tpope/vim-git"
Bundle "tpope/vim-haml"
Bundle "othree/html5.vim"
Bundle "pangloss/vim-javascript"
Bundle "leshill/vim-json"
Bundle "LaTeX-Box-Team/LaTeX-Box"
Bundle "groenewege/vim-less"
Bundle "rcmdnk/vim-markdown"
"
Bundle "vim-perl/vim-perl"
Bundle "StanAngeloff/php.vim"
Bundle "vim-scripts/python.vim--Vasiliev"
Bundle "sheerun/rspec.vim"
Bundle "vim-ruby/vim-ruby"
Bundle "slim-template/vim-slim"
  " more colorful golang syntax
  Bundle "athom/more-colorful.vim"

Bundle "xolox/vim-session"
  Bundle "xolox/vim-misc"

Bundle "vim-scripts/CursorLineCurrentWindow"

" ====== Snippets
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

" ===== misc
Bundle 'bling/vim-airline'
" Bundle 'tpope/vim-dispatch'
" Bundle 'rosenfeld/conque-term'
" Bundle 'jgdavey/tslime.vim'
Bundle 'nathanaelkane/vim-indent-guides'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'Valloric/MatchTagAlways'
  " Match HTML Tags
" Bundle 'Shougo/neocomplete.vim'
Bundle 'AndrewRadev/splitjoin.vim'

" ====== Ruby / Rails
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-endwise'
Bundle 'textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

" ====== Go
Bundle 'fatih/vim-go'
Bundle 'rhysd/vim-go-impl'


Bundle 'junegunn/fzf.vim'

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

