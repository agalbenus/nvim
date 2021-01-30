source ~/.config/nvim/plugins.vim

colorscheme delek
set clipboard=unnamed

set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set ruler
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
let mapleader = "."

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

nnoremap <Leader>ww :e ~/Documents/notes/index.md<cr>
 
set backspace=indent,eol,start

inoremap jk <Esc>

