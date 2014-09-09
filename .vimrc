:syntax enable
set t_Co=256
set tabstop=2

let g:zenburn_high_Contrast = 1
colors zenburn
colors zenburnmng
"colors mango

" Forcing disabled arrow keys - only for the brave :)
"inoremap <Up>      <NOP>
"inoremap <Down>    <NOP>
"inoremap <Left>    <NOP>
"inoremap <Right>   <NOP>
"noremap <Up>       <NOP>
"noremap <Down>     <NOP>
"noremap <Left>     <NOP>
"noremap <Right>    <NOP>


" Shortcuts for cycling trough buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
