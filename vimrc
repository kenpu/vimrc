set nocompatible
filetype off

" -------- Vundle -----------

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'fatih/vim-go'
    Plugin 'guns/vim-clojure-static'
    Plugin 'kien/rainbow_parentheses.vim'
    Plugin 'guns/vim-clojure-highlight'
    Plugin 'groenewege/vim-less'
    Plugin 'derekwyatt/vim-scala'
    Plugin 'dylon/vim-antlr'
    Plugin 'flazz/vim-colorschemes' "https://github.com/flazz/vim-colorschemes
call vundle#end()
filetype plugin indent on

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ------- Keys ------------------
    let mapleader=","
    map <Leader>s :NERDTreeFind<CR>
    map <Leader>ns :NERDTreeClose<CR>
    map <Leader>/ :set hlsearch!<CR>

" -------- VIM Options --------------
set textwidth=80
set tabstop=4 shiftwidth=4 softtabstop=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set nu
set nowb
set noswapfile
set noar
set showmatch
"se spell
set nospell

" --------- Other options ------------
let g:clojure_fuzzy_indent = 0
au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4

syntax enable

" --------- Colormap -----------------
"colorscheme solarized8_light
colorscheme solarized8_dark
hi MatchParen cterm=bold ctermfg=red ctermbg=None
hi CursorLine cterm=bold
hi Search cterm=bold,underline ctermfg=Red
set cursorline

let g:NERDTreeNodeDelimiter = "\u00a0"
