set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Install Vundle, required
Plugin 'VundleVim/Vundle.vim'

" VUNDLE INSTALLED PLUGINS

  " auto pair brackets
  Plugin 'jiangmiao/auto-pairs'
  " bottom bar helper boi
  Plugin 'vim-airline/vim-airline'
  " file tree
  Plugin 'scrooloose/nerdtree'
  " predawn
  Plugin 'juanedi/predawn.vim'
  " Goyo - distraction free writing
  Plugin 'junegunn/goyo.vim'
  " ES6 syntax hilighting
  Plugin 'isRuslan/vim-es6'
  " emmet
  Plugin 'mattn/emmet-vim' 
  " tmux and vim pane navigation
  Plugin 'christoomey/vim-tmux-navigator'
  " auto align stuff with :Tab
  Plugin 'godlygeek/tabular'
  " commenting [gc]
  Plugin 'tpope/vim-commentary'
  " handlebars syntax hilighting
  Plugin 'mustache/vim-mustache-handlebars'
  " git interaction 
  Plugin 'tpope/vim-fugitive'
  " fuzzy finder
  Plugin 'kien/ctrlp.vim'
  " tab insert-mode autocomplete
  Plugin 'ervandew/supertab'
  " easymotion
  Plugin 'easymotion/vim-easymotion'
  " indent guides
  Plugin 'nathanaelkane/vim-indent-guides'
  " git NERDTree plugin
  Plugin 'xuyuanp/nerdtree-git-plugin'

" =====================

" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
 Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" map jk to exit insert mode
inoremap jk <Esc>

" vim remembers so many things
set history=500

" auto update when something is changed outside of vim
set autoread

" W is sudo save
command! W w !sudo tee % > /dev/null

" line numbers
set nu

" if you can't figure this one out, vim isnt for you
colorscheme predawn
  
set expandtab " Insert spaces instead of tabs
set smarttab " forces use of shiftwidth and tabstop
set shiftwidth=2 " Change the number of spaces inserted for indentation
set tabstop=2 " Tabs insert 2 spaces

" open NERDTree at current dir at start
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close NERDtree if it is the last buffer open (uncomment for use)
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" show hidden files in NERDTree by default
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['/.swp$']

" change leader to space
let mapleader="\<Space>"

set path+=**
set wildmenu

nnoremap ; :
