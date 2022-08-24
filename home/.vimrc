set clipboard=unnamedplus
set number
syntax on
set tabstop=4
set autoindent
" Replacing Tabs with White Spaces
 set expandtab
" remove multiple spaces on single backspace
set softtabstop=4
" visual autocomplete for command menu
set wildmenu          
" redraw only when we need to.
set lazyredraw
" highlight matching [{()}]
set showmatch
" enable folding
set foldenable


" my key bindings
nmap <S-PageUp> 0
nmap <S-PageDown> <S-$>
" copies to both clipboard and primary slection, normal outside copy is "+y
" vnoremap <C-c> "+y :let @+=@*<CR>
map <C-p> "+P
map <C-c> :w !xclip -sel c <CR><CR>

map <C-PageUp> kkkkk
