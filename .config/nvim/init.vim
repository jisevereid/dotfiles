" Install plugins

call plug#begin()
" Default plugin directory :
" Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'folke/zen-mode.nvim'
Plug 'kamykn/spelunker.vim'
Plug 'wbthomason/packer.nvim'
Plug 'flazz/vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()

" Init zen mode plugin
lua << EOF
  require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" NERDTree config
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" turn tabs to spaces
:set tabstop=2
:set shiftwidth=2
:set expandtab

:set smartindent

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" highlight current line
:set cursorline
:hi CursorLineNr term=bold cterm=bold ctermfg=012 gui=bold
:hi CursorLine term=bold cterm=bold guibg=Grey40

" Key bindings
let mapleader = ","

colorscheme gruvbox

" turn off vim spellchecker in favor of spelunker
set nospell

" coc settings
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:floaterm_keymap_toggle = '<F12>'

" code folding
set foldmethod=syntax

" sensible controls for navigating splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
