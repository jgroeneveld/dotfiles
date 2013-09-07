colors lucius
LuciusWhite
set t_Co=256

set mouse=a
set scrolloff=5
let g:ctrlp_max_files=10000
let g:ctrlp_max_depth=40
let g:ctrlp_match_func = {'match': 'matcher#cmatch' }

" disabling auto insert of linebreaks when entering text
set textwidth=0 wrapmargin=0
"set clipboard=unnamed

" ctrp ignores for rails
set wildignore+=*/tmp/*
set wildignore+=*/log/*
set wildignore+=*/vendor/*

" for phraseapp in specific
set wildignore+=*/solr/*
set wildignore+=*/.rsync_cache/*
