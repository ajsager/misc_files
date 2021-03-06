set nocompatible
let mapleader = " "

filetype off

" Declare bundles are handled via Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" github repos
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'vim-scripts/trailing-whitespace'
Plugin 'tsaleh/vim-tmux'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'

" colorschemes
Plugin 'tpope/vim-vividchalk'
Plugin 'twerth/ir_black'
Plugin 'nanotech/jellybeans.vim'
Plugin 'crusoexia/vim-monokai'

filetype plugin indent on

set autoread * WinEnter
set clipboard=unnamed
set nobackup
set nowritebackup
set noswapfile
set encoding=utf-8
set nowrap
set list listchars=tab:»·,trail:·
set t_Co=256

" Status Line
set number
set ruler
set showcmd
set laststatus=2

" Tab
set tabstop=2
set shiftwidth=2
set expandtab

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Open new split panes to right and bottom
set splitbelow
set splitright

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Moving through split panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

syntax on
colorscheme monokai

let g:html_indent_tags = 'li\|p'

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

" Code pasting from osx system clipboard
map <leader>v "+p

" Include local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
