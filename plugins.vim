" Specify a directory for plugins
"   nvim setup dependencie:
"       - fzf -> for fuzy search
"       - ripgrep
"       - task (for task management)
"       - tasklib -> integrates task with taskwiki plugin
"
call plug#begin('~/.vim/plugged')

Plug 'preservim/tagbar'
Plug 'preservim/nerdtree'
Plug 'hashivim/vim-vagrant'
Plug 'ayu-theme/ayu-vim'
Plug 'tomasr/molokai'
Plug 'pearofducks/ansible-vim'
let g:deoplete#enable_at_startup = 1
"Plug '907th/vim-auto-save'
Plug 'pbrisbin/vim-mkdir'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline', { 'commit': 'c7a633ce8f4547e680377efe8ea70493fcce1349' }
Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'Yggdroot/indentLine'
Plug 'dense-analysis/ale'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'


" Initialize plugin system
call plug#end()
