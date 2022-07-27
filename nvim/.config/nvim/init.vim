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

" https://github.com/akinsho/toggleterm.nvim
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}

" https://github.com/chun-yang/auto-pairs
"Plug 'chun-yang/auto-pairs'

call plug#end()

autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
