nnoremap <SPACE> <Nop>
let mapleader=" "
" let g:mapleader = "\<Space>" 

nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Single mappings
let g:which_key_map['w'] = [ ':w'               , 'save' ]
let g:which_key_map['q'] = [ ':q!'              , 'Quit no save' ]
let g:which_key_map['`'] = [ 'gg=G'             , 'Format' ] 
let g:which_key_map['c'] = [ 'vgc'              , 'comment line']
let g:which_key_map['x'] = [ 'gc'               , 'comment more than one line']
let g:which_key_map['e'] = [ ':Ex'              , 'Explorer']
let g:which_key_map['\'] = [ '<C-W><C-W>'            , 'change between ex']

" Change background
let g:which_key_map['l'] = [ ':bn'              , 'next buffer' ]
let g:which_key_map['h'] = [ ':bp'              , 'previous buffer' ]
let g:which_key_map['z'] = [ ':bd'              , 'Close buffer' ]
let g:which_key_map['b'] = [ ':Buffers'         , 'List buffer' ]

" FZF
let g:which_key_map['f'] = [ ':Files'           , 'Files']
let g:which_key_map['g'] = [ ':Rg'              , 'search text' ]
let g:which_key_map['t'] = [ ':Tags'            , 'Tags']
let g:which_key_map['m'] = [ ':Marks'           , 'Marks' ]

" Tag_lis
let g:which_key_map['n'] = [ ':Tlist'           , 'Tag list' ]

" s is for search
let g:which_key_map.s = {
            \ 'name' : '+search' ,
            \ '/' : [':History/'     , 'history'],
            \ ';' : [':Commands'     , 'commands'],
            \ 'a' : [':Ag'           , 'text Ag'],
            \ 'b' : [':BLines'       , 'current buffer'],
            \ 'B' : [':Buffers'      , 'open buffers'],
            \ 'c' : [':Commits'      , 'commits'],
            \ 'C' : [':BCommits'     , 'buffer commits'],
            \ 'f' : [':Files'        , 'files'],
            \ 'g' : [':GFiles'       , 'git files'],
            \ 'G' : [':GFiles?'      , 'modified git files'],
            \ 'h' : [':History'      , 'file history'],
            \ 'H' : [':History:'     , 'command history'],
            \ 'l' : [':Lines'        , 'lines'] ,
            \ 'm' : [':Marks'        , 'marks'] ,
            \ 'M' : [':Maps'         , 'normal maps'] ,
            \ 'p' : [':Helptags'     , 'help tags'] ,
            \ 'P' : [':Tags'         , 'project tags'],
            \ 's' : [':Snippets'     , 'snippets'],
            \ 'S' : [':Colors'       , 'color schemes'],
            \ 't' : [':Rg'           , 'text Rg'],
            \ 'T' : [':BTags'        , 'buffer tags'],
            \ 'w' : [':Windows'      , 'search windows'],
            \ 'y' : [':Filetypes'    , 'file types'],
            \ 'z' : [':FZF'          , 'FZF'],
            \ }

let g:which_key_map.b = {
            \ 'name' : '+buffer' ,
            \ '1' : ['b1'        , 'buffer 1']        ,
            \ '2' : ['b2'        , 'buffer 2']        ,
            \ 'd' : ['bd'        , 'delete-buffer']   ,
            \ 'f' : ['bfirst'    , 'first-buffer']    ,
            \ 'h' : ['Startify'  , 'home-buffer']     ,
            \ 'l' : ['blast'     , 'last-buffer']     ,
            \ 'n' : ['bnext'     , 'next-buffer']     ,
            \ 'p' : ['bprevious' , 'previous-buffer'] ,
            \ '?' : ['Buffers'   , 'fzf-buffer']      ,
            \ }

let g:which_key_map.v = {
            \ 'name' : '+background' ,
            \ 't' : [':hi Normal guibg=NONE ctermbg=black'        , 'Transperant background'] ,
            \ 'b' : [':hi Normal guibg=#0f1419 ctermbg=black'     , 'normal background']      ,
            \ }
" Key binds
vnoremap J :m '<+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <c-k> <esc>:m .-2<CR>==
inoremap <c-j> <esc>:m .+1<CR>==
vnoremap <C-c> "*y :let @+=@*<CR>
nnoremap <C-W> <C-W><C-W>

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
