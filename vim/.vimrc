set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

"vim with git status(added, modified, and removed lines)
Plugin 'airblade/vim-gitgutter'

" vim with git command(e.g., Gdiff)
" Plugin 'tpope/vim-fugitive' 

" vim status bar
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'

" vim hilighting split window
Plugin 'blueyed/vim-diminactive'

call vundle#end()            " required

filetype plugin indent on    " required
" To ignore	plugin indent changes, instead use:
" filetype plugin on
" Put your non-Plugin stuff after this line

set nu
set autoindent
set hls
set backspace=indent,eol,start

if has("syntax")
	syn on
endif

colorscheme darkvscode
set clipboard=unnamed

set ts=4 sw=4 noet
set cindent
set list
set lcs=tab:\ \ ▏

set lcs+=trail:✘
set lcs+=space:·
hi SpecialKey ctermfg=240

autocmd Filetype python set et | set lcs+=space:⁔ | hi SpecialKey ctermfg=244

" NoneText   : eol, extends, precede
" SpecialKey : nbsp, tab, trail

"… ░ ▏├─·┣━ 




" key mapping
let mapleader = ","	
inoremap <A-Space> <C-p>
nnoremap ; :
vnoremap ; :
nnoremap ,p "0p
nnoremap ,p "0P
nnoremap ˙ <C-w>h
nnoremap ∆ <C-w>j
nnoremap ˚ <C-w>k
nnoremap ¬ <C-w>l
nnoremap Ó <C-w>H
nnoremap Ô <C-w>J
nnoremap  <C-w>K
nnoremap Ò <C-w>L

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='supernova'
set laststatus=2 " turn on bottom bar
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" vim-diminactive
let g:diminactive_enable_focus = 1

" tagbar
nmap <F8> :Tagbar<CR>

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
