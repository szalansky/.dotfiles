" General
set nocompatible " use vim settings instead of vi
filetype off
set history=1000
set shell=zsh
filetype plugin indent on

" Editing
set autoindent
set expandtab

" Formatting
set shiftwidth=2
set tabstop=4
set softtabstop=4
set numberwidth=5
set encoding=utf-8

" UI
set ruler
set guioptions-=T " remove MacVim GUI
set cursorline
set showtabline=2
set cmdheight=2
set winwidth=80
set laststatus=2

" Command display
set showmode
set showcmd

" Search
set hlsearch
set incsearch

" Colouring and syntax highlighting

syntax enable
set background=dark
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized

" Vundle bundles
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-cucumber'

" Markdown
Bundle 'tpope/vim-markdown'

" Utils
Bundle 'vim-scripts/paredit.vim'
Bundle 'scrooloose/nerdtree'


" Naughty use of arrow keys removed
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>