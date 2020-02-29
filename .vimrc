set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'ycm-core/YouCompleteMe'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" Enable folding
" set foldmethod=indent
" set foldlevel=99

" Python tab settings
set tabstop=4 
set shiftwidth=4
set smarttab

" Tabs by spaces
set expandtab

" 4 spaces in tab
set softtabstop=4

set autoindent

" Python syntax highlighting
let python_highlight_all = 1

" Enable 256 colors mode in terminal
set t_Co=256

" Remove useless spaces in *.py files on save
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

" Enable smart indentation after keywords in *.py files
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Enable syntax highlighting
syntax on

" Enable line numbers
set nu
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Hide mouse cursor on typing
set mousehide

" Enable mouse support
set mouse=a

" Terminal encoding
set termencoding=utf-8

set novisualbell

" Comfortable Backspace behaviour
set backspace=indent,eol,start whichwrap+=<,>,[,]

set showtabline=1

" Line breaking and wrapping
set wrap
set linebreak

" Turning off .swp and ~ (backup) files
set nobackup
set noswapfile

set encoding=utf-8
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

colorscheme OceanicNext
