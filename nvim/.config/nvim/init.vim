" Colorsheme solarized, TODO: switcher for nord theme
colorscheme NeoSolarized
set hlsearch

" Enable numbers coloumn
set number

" Search that don't care about uppercase and lowercase
set ignorecase

set smartcase
set termguicolors 

" Syntax for sanity
syntax enable

" Plugins https://github.com/junegunn/vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" https://github.com/chun-yang/auto-pairs
Plug 'chun-yang/auto-pairs'

call plug#end()


