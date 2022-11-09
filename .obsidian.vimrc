" No arrow keys --- force yourself to use the home row
nnoremap <Left>  <CR>
nnoremap <Right> <CR>
nnoremap <Up>    <CR>
nnoremap <Down>  <CR>
" ...and in insert mode
inoremap <Left>  <ESC><CR>
inoremap <Right> <ESC><CR>
inoremap <Up>    <ESC><CR>
inoremap <Down>  <ESC><CR>

vnoremap <C-S-V> "+y

" Yank to system clipboard
set clipboard=unnamed
