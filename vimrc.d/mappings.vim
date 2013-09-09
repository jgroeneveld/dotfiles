" replace selected content in visual mode with yanked content
" http://stackoverflow.com/questions/54255/in-vim-is-there-a-way-to-delete-without-putting-text-in-the-register
vmap r "_dP

" expanding directory of current active file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" easier window traversal
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"easier start/end of line
nmap H 0
nmap L $

" remap undo
nmap U <C-R>

" vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

