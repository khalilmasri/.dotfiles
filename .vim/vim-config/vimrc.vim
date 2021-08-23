syntax on
set number
set ruler
set cursorline
set showcmd
set relativenumber

filetype plugin indent on 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap

"set expandtab
set noerrorbells
set visualbell
set scrolloff=8
set nohlsearch
set incsearch
set smartcase

set ttyfast
"vim line wrap without bracking a word
set shortmess+=c

"BACKUP AND UNDO ---------------------------------------------
set backup
set backupdir=~/.vim/.backup//
set backupcopy=yes
"Meaningful backup name, ex: filename@2015-04-05.14:59
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set undofile
set undodir=~/.vim/undodir//
set noswapfile

" Disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

noremap <S-+> <Nop>

" Cursor settings
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
      \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Enable VimRainbow
let g:rainbow_active = 1

" Make capital commands
command! W   :w
command! WQ  :wq 
command! Wq  :wq 
command! Q   :q 

