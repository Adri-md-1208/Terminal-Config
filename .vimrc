set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode

set nocompatible
filetype off 

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manager
Plugin 'gmarik/Vundle.vim'

" Themes
Plugin 'morhetz/gruvbox'

" IDE
Plugin 'vim-airline/vim-airline'

" Files
Plugin 'easymotion/vim-easymotion' "Search string patterns
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator' "Moving throught tabs
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" Intellisense
"Plugin 'neoclide/coc.nvim', {'branch': 'release'} " Autocomplete engine
Plugin 'jiangmiao/auto-pairs' " Autocomplete () [] and {}
Plugin 'vim-syntastic/syntastic'

" Python Plugins
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
"Plugin 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop'  }

call vundle#end()
filetype plugin indent on

" Colors
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Python settings
let g:python_light_all = 1
let g:jedi#use_tabs_not_buffers	= 1
syntax on
au BufNewFile,BufRead *.py " PEP 8 for identation
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" HTML settings
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Key maps
let mapleader=" "
nmap <leader>s <Plugin>(easymotion-s2)
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>f :Files<CR>
nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nmap <leader>c ciw
nmap 9 $4
:imap ii <Esc>
