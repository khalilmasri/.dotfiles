    " THEME --------------------------------------------------------------------------------------

set background=dark    " Setting dark mode

" term true colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" gruvbox
" colorscheme gruvbox

" Dracula
" colorscheme dracula

" palenight
" colorscheme palenight
" let g:lightline = { 'colorscheme': 'palenight' }
" let g:airline_theme = "palenight"

" Ayu
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
"
" onehalf
" colorscheme onehalfdark
let g:airline_theme='onehalfdark'

" onedark
" let g:onedark_style = 'darker'
" colorscheme onedark

" Nightfox
" colorscheme nightfox
"nightfly
" colorscheme nightfly
" let g:moonflyIgnoreDefaultColors = 1
" let g:nightflyCursorColor = 1
" let g:nightflyTerminalColors = 1

" Airline

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

