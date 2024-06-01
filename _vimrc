"set gfn=JetBrainsMonoNL_NFM:h12:cANSI:qDRAFT
"set guifont=JetBrainsMonoNerdFontMono:h25
set gfn=Consolas:h15
set encoding=utf-8
set mouseshape=i-r-v:beam
syntax on
colorscheme papercolor
set background=light
filetype indent on
filetype plugin on
set foldmethod=manual
set nocompatible
set nonumber
set noeb 
set belloff=all
set omnifunc=syntaxcomplete#Complete
set incsearch
set showcmd
set showmode
set showmatch
set history=1000
set wildmenu
set wildmode=longest:list,full
set nowrap
set backspace=indent,eol,start
set tabstop=4
set autoindent
set smartindent
set shiftwidth=4
set mouse=a
set undofile
set undodir=C:\Users\chiha\undodir
set backupdir=~\backups
set colorcolumn=""
set lines=50
set columns=82
set guioptions=!egic
set scrollfocus
set scrolloff=8

let mapleader = " "

"remove hl
nnoremap <silent><ESC> :noh<CR>

nnoremap <silent><Leader>t :vert term<CR>
nnoremap <silent><Leader>w :w<CR>
nnoremap <silent><Leader>a :q<CR>
nnoremap <silent><Leader>v :Ex<CR>
nnoremap <silent><Leader>vs :vs<CR>
nnoremap <silent><Leader>vh :sp<CR>
nnoremap <silent><Leader>n :set nu!<CR>
nnoremap <silent><Leader>r :set rnu!<CR>

nnoremap <silent><Leader>bd :bd<CR>
nnoremap <silent><Leader>bn :bn<CR>
nnoremap <silent><Leader>bm :bp<CR>

tnoremap <silent><Leader>a iexit<CR>
tnoremap <ESC> <C-\><C-n>

"copy paste ctrl c ctrl v to os
nnoremap <silent><C-v> "+p
vnoremap <silent><C-v> "+p
nnoremap <silent><C-c> "+yy
vnoremap <silent><C-c> "+y
cnoremap <silent><C-v> <C-R>+
inoremap <silent><C-v> <C-R>+

"comfort for moving
nnoremap <silent><C-k> :wincmd k<CR>
nnoremap <silent><C-j> :wincmd j<CR>
nnoremap <silent><C-h> :wincmd h<CR>
nnoremap <silent><C-l> :wincmd l<CR>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Function to dynamically set color column
function! SetColorColumn()
    let colorcolumn_enabled = 0
    for line in getline(1, '$')
        if len(line) > 80
            let colorcolumn_enabled = 1
            break
        endif
    endfor

    if colorcolumn_enabled
        set colorcolumn=81
    else
        set colorcolumn=
    endif
endfunction

" Autocommand group to update color column
augroup ColorColumn
    autocmd!
    autocmd BufWinEnter,BufReadPost,InsertLeave,TextChanged,TextChangedI * call SetColorColumn()
augroup END


" PLUGINS -------------------------------------------------------- {{{

"call plug#begin('~/.vim/plugged')

"	Plug 'dense-analysis/ale' "	Plug 'preservim/nerdtree'

"call plug#end()

" }}}
