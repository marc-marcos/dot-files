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

set pumheight=5 " to limit autosuggest height for coc.nvim"

set colorcolumn=80
highligh ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

    Plug 'dracula/vim',{'as':'dracula'}
    Plug 'jremmen/vim-ripgrep'
    Plug 'mhinz/vim-startify'
    Plug 'vim-utils/vim-man'
    Plug 'https://github.com/kien/ctrlp.vim.git' 
    Plug 'lyuts/vim-rtags'
    Plug 'mbbill/undotree'
    Plug 'chun-yang/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'itchyny/lightline.vim'

call plug#end() 

let g:dracula_italic = 0
if (has("termguicolors"))
   set termguicolors
endif
colorscheme dracula

set background=dark

if executable('rg')
    let g.rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0 

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k <CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v <bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>

set completeopt-=preview

set laststatus=2

set noshowmode

let g:lightline = {'colorscheme':'wombat'}

set ttimeout ttimeoutlen=50  
