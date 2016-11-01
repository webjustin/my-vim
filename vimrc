let mapleader=";"

set number
set relativenumber
set laststatus=2
set incsearch
set ignorecase
set nocompatible
set wildmenu
set rtp+=~/.vim/bundle/Vundle.vim
set ruler
set hlsearch
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set background=dark
set foldmethod=syntax
set nofoldenable
set cursorline


filetype off 
filetype plugin on
filetype indent on

nmap LB 0
nmap LE $
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>M %

vnoremap <Leader>y "+y

nnoremap nw <C-W><C-W>
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

autocmd BufWritePost $MYVIMRC source $MYVIMRC

syntax enable
syntax on

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'suan/vim-instant-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Xuyuanp/nerdtree-git-plugin'
call vundle#end()

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

colorscheme molokai 

nnoremap <Leader>sp :CtrlSF<CR>

"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <Leader>nt :NERDTreeToggle<CR>
