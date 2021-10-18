" -- VIM PLUG SETUP --
call plug#begin('~/.config/nvim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'chiel92/vim-autoformat'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'vim-scripts/c.vim'
Plug 'tpope/vim-surround'
call plug#end()

" -- VIM AUTOFORMAT --
let g:python3_host_prog="/usr/bin/python3"

" -- TO MAKE INDENT 4 SPACE --
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" -- SHOW LINE NUMBERS --
set number

" -- SET THEME -- "
colorscheme nord
let g:airline_theme='deus'
let g:airline_powerline_fonts = 1
" -- NERDTREE CONFIG
nmap <C-f> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" -- DISABLE YOUCOMPLETEME SYNTAX CHECK
let g:ycm_show_diagnostics_ui = 0

" -- ENABLE RELATVE LINE NUMBERS
:set relativenumber
:set rnu

