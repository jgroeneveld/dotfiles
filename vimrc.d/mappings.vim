" expanding directory of current active file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" easier window traversal
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" remap undo
nmap U <C-R>

" vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" remap # to * for use with SearchHighlighting script
nmap # *
vmap # *
