set number
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
set noswapfile
set showtabline=2
set mouse=a
inoremap <silent> jj <Esc>
inoremap <silent> っｊ <Esc>
nnoremap <Esc><Esc> :nohlsearch<CR>
syntax on
set termguicolors

call plug#begin()
Plug 'projekt0n/github-nvim-theme'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'lambdalisue/nerdfont.vim'
call plug#end()

" github-nvim-thme
let g:github_sidebars = ["terminal"]
colorscheme github_dimmed
