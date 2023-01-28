call plug#begin()
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug '/usr/local/opt/fzf'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
call plug#end()

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
Plugin 'tpope/vim-fugitive'

" vim status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim hilighting split window
Plugin 'blueyed/vim-diminactive'

Plugin 'arcticicestudio/nord-vim'
Plugin 'morhetz/gruvbox'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore	plugin indent changes, instead use:
" filetype plugin on
" Put your non-Plugin stuff after this line
set encoding=UTF-8
set nu
set autoindent
set hls
set backspace=indent,eol,start

if has("syntax")
	syn on
endif


" colorscheme darkvscode
" colorscheme nord
" colo alduin


if has('termguicolors')
	set termguicolors
endif
" For dark version.
set background=dark
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'hard'
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest
let g:airline_theme='everforest'

"if has('termguicolors')
"	set termguicolors
"endif
"
"let g:gruvbox_contrast_dark = 'soft'
"colorscheme gruvbox
"
"let g:airline_theme='everforest'


set clipboard=unnamed
set ts=4 sw=4 noet
set cindent
"set list
"set lcs=tab:\ \ ▏
"
"set lcs+=trail:✘
"set lcs+=space:·
"hi SpecialKey ctermfg=240
"
"autocmd Filetype python set et | set lcs+=space:⁔ | hi SpecialKey ctermfg=244

" NoneText   : eol, extends, precede
" SpecialKey : nbsp, tab, trail

"… ░ ▏├─·┣━



" key mapping
let mapleader=","
let g:VM_leader=","



noremap <silent> «	<Esc>:vs<CR>
noremap <silent> »	<Esc>:sp<CR>
noremap <silent> ≠  <C-w>+
noremap <silent> –  <C-w>-
noremap <silent> “  <C-w><
noremap <silent> ‘	<C-w>>
noremap <silent> ±	<C-w>=
noremap <silent> ∑	<C-w>w

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

nnoremap <silent> <Esc><Esc>[A :m-2<CR>
nnoremap <silent> <Esc><Esc>[B :m+<CR>
inoremap <silent> <Esc><Esc>[A <Esc>:m-2<CR>
inoremap <silent> <Esc><Esc>[B <Esc>:m+<CR>

nnoremap <Esc>[1;10A yyP
vnoremap <Esc>[1;10A Vygv2p
nnoremap <Esc>[1;10B yyp
vnoremap <Esc>[1;10B Vygv2p
inoremap <Esc>[1;10A <Esc>yyP
inoremap <Esc>[1;10B <Esc>yyp

" for OSX
"nnoremap <Esc><Esc>[A <C-w>k
"nnoremap <Esc><Esc>[B <C-w>j
"nnoremap <Esc><Esc>[C <C-w>l
"nnoremap <Esc><Esc>[D <C-w>h
"tnoremap <Esc><Esc>[A <C-w>k
"tnoremap <Esc><Esc>[B <C-w>j
"tnoremap <Esc><Esc>[C <C-w>l
"tnoremap <Esc><Esc>[D <C-w>h

" for linux: check by sed -ln
" nnoremap <Esc>[1;9D <C-w>h

" vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
set laststatus=2 " turn on bottom bar
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" vim-diminactive
let g:diminactive_enable_focus = 1

" tagbar
nmap <F8> :Tagbar<CR>

" NERDTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" for floaterm
"nnoremap   <silent>   <C-'>    :FloatermNew<CR>
"tnoremap   <silent>   <C-'>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
" <A-'>
nnoremap   <silent>   æ       :FloatermToggle<CR>
tnoremap   <silent>   æ       <C-\><C-n>:FloatermToggle<CR>


" <A-f>
nnoremap  <silent>    ƒ       :Files .<CR>
":GFilesWithDevicons [OPTS]
":GFilesWithDevicons?
"
" <A-g>
nnoremap <silent>     ©       :Rg<CR>
":LocateWithDevicons PATTERN




" key mapping
let mapleader = ","


" Visual Multi
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '∂' " '<C-d>'          replace C-n
let g:VM_maps['Find Subword Under'] = '∂' " '<C-d>'         replace visual C-n

" CoC
"

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <TAB> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"


function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <A-Space> coc#refresh()
else
  inoremap <silent><expr> <A-Space> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" highlight CocErrorFloat ctermfg=White guifg=#ffffff
hi CocHighlightText ctermfg=208 guifg=#ff8700 cterm=underline gui=underline

autocmd ColorScheme * call Highlight()
function! Highlight() abort
  hi Conceal ctermfg=147 guifg=#afafff
  hi CocSearch ctermfg=12 guifg=#18A3FF
endfunction
