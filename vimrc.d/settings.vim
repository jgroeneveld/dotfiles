set t_Co=256

" colors wombat256
colors lucius
LuciusDark
highlight CursorLineNr guifg=#ffff00 guibg=#666666

set mouse=a
set scrolloff=3
let g:ctrlp_max_files=10000
let g:ctrlp_max_depth=40
let g:ctrlp_match_func = {'match': 'matcher#cmatch' }

" use the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'

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

" better tab completion for commands/filenames etc
set wildmode=longest,list,full
set wildmenu

" ctrp ignores
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pdf,*.png,*.jpg,*.gif,*.gz,*.swf
set wildignore+=*/log/*
set wildignore+=*/vendor/*
set wildignore+=*/spec/cassettes/*
set wildignore+=*/public/assets/*
set wildignore+=*/public/uploads/*

" for phraseapp in specific
set wildignore+=/Users/dynport/projects/dynport/phrase/solr/*
set wildignore+=*/.rsync_cache/*

