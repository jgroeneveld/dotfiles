 set nocompatible               " be iMproved
 filetype on "because if it is already off, turning it off causes bad exit codes
 filetype off                   " required!

 set rtp+=~/dotfiles/janus/vundle
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:

Bundle 'tpope/vim-rails'
Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'thoughtbot/vim-rspec'
Bundle 'dgryski/vim-godef'
Bundle 'SearchHighlighting'

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
