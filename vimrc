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
filetype indent on

"move cursor to begin/end of the line
nmap LB 0
nmap LE $
"common control remap
nmap <Leader>p "+p
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>WQ :wa<CR>:q<CR>
nmap <Leader>Q :qa!<CR>
nmap <Leader>M %

vnoremap <Leader>y "+y

"swith cursor between window
nnoremap nw <C-W><C-W>
"move cursor between window
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

"auto reload vimrc config 
autocmd BufWritePost $MYVIMRC source $MYVIMRC

syntax enable
syntax on

"vim plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
"Plugin 'suan/vim-instant-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-erlang/vim-erlang-compiler'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'flazz/vim-colorschemes'
call vundle#end()

filetype plugin on

colorscheme gruvbox 

"indent settings
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


"nnoremap <Leader>sp :CtrlSF<CR>

"NERDTree settings
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <Leader>nt :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeWinSize=31

" YCM settings
"let g:ycm_key_list_select_completion = ['', '']
"let g:ycm_key_list_previous_completion = ['']
"let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'  

" UltiSnips settings
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
