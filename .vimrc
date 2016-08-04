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
set backspace=2

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
Bundle 'tpope/vim-fireplace'
"   Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-clojure-highlight'

" Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-cucumber'

" Markdown
Bundle 'tpope/vim-markdown'

" JSON
Bundle 'jiangmiao/auto-pairs'

" Yaml, Ansible
Bundle 'ingydotnet/yaml-vim'
Bundle 'chase/vim-ansible-yaml'

" Utils
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/paredit.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'elzr/vim-json'

" Syntax hinting
Bundle 'scrooloose/syntastic'

" Search and file browsing
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'

" Tmux integrations
Bundle "epeli/slimux"

" AWS
Bundle 'https://github.com/m-kat/aws-vim'

" Snippets
Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'

" nerdtree config
let NERDTreeShowHidden=1 " display hidden files

" ctrlp setup
let g:ctrlp_working_path_mode = 'ra'

" syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ultisnips
"   Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"   If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" aws-vim
let g:AWSVimValidate = 1
let g:UltiSnipsSnippetDirectories=["UltiSnips", "~/.vim/bundle/aws-vim/snips"]
let g:AWSSnips = "Alarm Authentication Base64 CreationPolicy FindInMap GetAtt Init Instance InstanceProfile Join LaunchConfiguration LoadBalancer Param Policy RDSIngress Ref Role SGEgress SGIngress ScalingPolicy ScheduledAction SecurityGroup Select Stack Subnet VPC Volume VolumeAttachment WaitCondition WaitConditionHandle asg cft init_command init_file init_group init_user"

"   guns/vim-clojure-static
let g:clojure_align_multiline_strings = 1
let g:clojure_align_subforms = 1
" Legacy comma-delimited string version; the list format above is
" " recommended. Note that patterns are implicitly anchored with ^ and $.
let g:clojure_fuzzy_indent_patterns = 'with.*,def.*,let.*'"

"   paredit config
let g:paredit_electric_return = 1

"   kien/rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

" Rainbow parentheses always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Naughty use of arrow keys removed
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

function! CljFix()
  w!
  set autoread
  silent exec "! lein cljfmt fix ".expand('%')
  redraw!
  set noautoread
  e!
  w
endf

au Filetype clojure map <leader>f :silent call CljFix()<cr>
