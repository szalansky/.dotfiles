" General
set nocompatible " use vim settings instead of vi
filetype off
set history=1000
set shell=bash
filetype plugin indent on
set number

" Editing
set autoindent
set expandtab

" Formatting
set shiftwidth=2
set tabstop=2
set softtabstop=2
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

" Easy window splits
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Command display
set showmode
set showcmd

" Search
set hlsearch
set incsearch

" Vundle bundles
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle"
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Colouring and syntax highlighting
" git@github.com:chrishunt/color-schemes.git
syntax enable
set t_Co=256
set background=dark
colorscheme vimbrant
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray

" Clojure
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
" Bundle 'tpope/vim-classpath'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-cucumber'

" Markdown
Bundle 'tpope/vim-markdown'

" Yaml, Ansible
Bundle 'ingydotnet/yaml-vim'
Bundle 'chase/vim-ansible-yaml'

" Utils
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/paredit.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'christoomey/vim-tmux-navigator'

" Syntax hinting
Bundle 'scrooloose/syntastic'

" Search and file browsing
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'

" Tmux integrations
Bundle "epeli/slimux"

" nerdtree config
let NERDTreeShowHidden=1 " display hidden files

" ctrlp setup
let g:ctrlp_working_path_mode = 'ra'

" Naughty use of arrow keys removed
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
