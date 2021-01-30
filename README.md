## Install

First you will need to install Neovim on the machine. You can use Brew for OS X, or you can use the package manager for a specific linux flavor.

https://github.com/neovim/neovim/wiki/Installing-Neovim

```sh
$ brew install neovim
```

```sh
$ sudo apt-get install neovim
```

Once you have Neovim setup, you should clone the configuration repository.

```sh
$ git clone https://github.com/agalbenus/nvim.git ~/.config/nvim
```

Next, install the VIM Plug plugin manager.

https://github.com/junegunn/vim-plug ( Besure to follow instructions for Neovim )

```sh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Config

A little description of `plugins.vim`.

```vim
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()
```

This just has the lines to initiate VIM Plug, both lines with `call`.

Inbetween those lines are the installed plugins. This is where you can add additional plugins, or remove existing ones.

`vim-airline`

This just adds a bar at the bottom of VIM to show the conext of what mode your own, some file information, and maybe some git repository information thanks to `tpop/vim-fugitive`.

`fzf`

This is a useful plugin even outside of VIM. It adds fuzzy search capabilities for files or code.

`vim-fugitive`

This is a plugin that enables some interaction with the git repository of the current project. It also integrates along with `vim-airline`.

`vim-gutter`

This just adds denotion marks along the gutter to show whether or not the line has been modified since the last commit.


