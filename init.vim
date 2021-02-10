source ~/.config/nvim/plugins.vim

set clipboard=unnamed

set undofile                " Save undo's after file closes
set undodir=$HOME/.config/nvim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undoset ttymouse=xterm2
set number
set relativenumber
set linebreak
set nocompatible
set showbreak=+++
set textwidth=0
set autochdir
set showmatch
set cursorcolumn
set cursorline
set noswapfile
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set ruler
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
let mapleader = ","

let g:vimwiki_list = [{'path':"~/Documents/notes", 'syntax':'markdown', 'ext':'.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:ale_completion_enabled = 0

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" Makes vimwiki markdonw links as [test](text.md) instead of [text](text)
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1
let g:indentLine_concealcursor = "nc"
nnoremap <Leader>ws :e ~/Documents/notes/work/sisal/index.md<cr>
nnoremap <Leader>wa :e ~/Documents/notes/work/axway/index.md<cr>

let g:indentLine_char = '|'

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'never'

filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufNewFile,BufRead *.go set foldmethod=syntax 
" au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible



"set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme

syntax on 
colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
set termguicolors

imap jk <ESC>la
imap jj <ESC><right>

set wildmenu
set wildchar=<TAB>
set wildmode=list:longest
set backspace=indent,eol,start

set pastetoggle=<F10>
map <F7> mzgg=G`z
inoremap <F2> <C-\><C-o>:w<CR>
inoremap <C-p> <F10><C-r>+<F10>
set backspace=indent,eol,start

"Imemdiately search for the word under the cursor in a new tab
nmap<leader>f :Rg<CR> 

imap < <><left>
imap <<space> <<space><space>><left><left>

"Lazy moving lines
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
