set number
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0
set autoindent
set hlsearch
inoremap <silent> jj <Esc>
inoremap <silent> っｊ <Esc>
syntax on

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
let NERDTreeShowHidden=1
