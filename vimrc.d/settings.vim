set t_Co=256

colors wombat256mod
" colors lucius
" LuciusWhite

set mouse=a
set scrolloff=5
let g:ctrlp_max_files=10000
let g:ctrlp_max_depth=40
let g:ctrlp_match_func = {'match': 'matcher#cmatch' }

" disabling auto insert of linebreaks when entering text
" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
set textwidth=0 wrapmargin=0
" wrapping at textwidth
set wrap
set linebreak
set nolist

set clipboard=unnamed

" more natural splitting
set splitright
set splitbelow

" set zsh env vars
if has("gui_macvim")
  set shell=zsh\ -i
endif

" reload files when changed on disc
set autoread

" ctrp ignores for rails
set wildignore+=*/tmp/*
set wildignore+=*/log/*
set wildignore+=*/vendor/*

" for phraseapp in specific
set wildignore+=*/solr/*
set wildignore+=*/.rsync_cache/*

