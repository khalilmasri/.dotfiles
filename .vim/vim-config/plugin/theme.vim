    " THEME --------------------------------------------------------------------------------------

set background=dark    " Setting dark mode

" term true colors
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

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

" Airline

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

