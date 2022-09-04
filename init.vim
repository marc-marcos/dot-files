syntax on
set noerrorbells
set tabstop=3 softtabstop=3
set shiftwidth=3
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=3

" set colorcolumn=80
" highligh ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

    Plug 'morhetz/gruvbox' " color scheme
    Plug 'lewis6991/impatient.nvim' " make nvim boot faster
    Plug 'shinchu/lightline-gruvbox.vim' " color scheme for light line
    Plug 'pangloss/vim-javascript' " javascript completion
    Plug 'leafgarland/typescript-vim' "  typescript completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'maxmellon/vim-jsx-pretty' " jsx prettyfication
    Plug 'preservim/nerdtree' " better file tree
    Plug 'mhinz/vim-startify' " vim start screen
    Plug 'https://github.com/kien/ctrlp.vim.git'  " no fucking idea
    Plug 'mbbill/undotree' " undo tree, pretty self explainatory
    Plug 'chun-yang/auto-pairs' " auto closing tags
    Plug 'itchyny/lightline.vim' " lightline 
    Plug 'SirVer/ultisnips' " code snippets
    Plug 'honza/vim-snippets' " another plugin for snippets
    Plug 'ervandew/supertab' " no fuckign idea but if i remove it it fucks up my workflow
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " to preview markdown
    Plug 'tpope/vim-fugitive' " git wrapper

    let extension = expand('%:e')

call plug#end() 

let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

if (has("termguicolors"))
   set termguicolors
endif
colorscheme gruvbox 

set background=dark

let mapleader = ","

let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0 

nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>w :wincmd w<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <F3> :UndotreeToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

set completeopt-=preview

set laststatus=2

set noshowmode

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

set ttimeout ttimeoutlen=50  
