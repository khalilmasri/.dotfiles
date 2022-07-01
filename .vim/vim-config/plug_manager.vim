call plug#begin('~/.vim/plugged')

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'EdenEast/nightfox.nvim'

" Utility
Plug 'preservim/nerdtree'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-scripts/taglist.vim'
Plug 'mbbill/undotree'
Plug 'kien/ctrlp.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'

" Language support
Plug 'vim-scripts/c.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()
