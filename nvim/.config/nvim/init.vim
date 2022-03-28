colorscheme NeoSolarized
set hlsearch
set number
set ignorecase
set smartcase

" Plugins
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'windwp/nvim-autopairs'
call plug#end()

