set nocompatible
set number
set cursorline
set cursorcolumn

set laststatus=2  "Always display the status bar
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

set wildmenu
set autoindent  "New lines inherit the indentation of previous lines.
set linebreak   "Wrap lines at convenient points, avoid wrapping a line in the middle of a word.

set tabstop=2     "Show existing tab with 2 spaces width.
set softtabstop=2
set shiftwidth=2  "When indenting with ‘>’, use 2 spaces width.
set expandtab   "On pressing tab, insert 2 spaces.

set directory=$HOME/.vim/swp//  "Save all swap files in one location.

set undofile    "Allow vim to create undo files.
set undodir=$HOME/.vim/undodir    "Keep undo files in a single directory.

" Highlight trailing whitespace
match ErrorMsg '\s\+$'

" Remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

let mapleader = "\<Space>"  "Set <Space> as the default leader key.

"Mapped commands

" Allow Ctrl-K, Ctrl-J to quickly switch between the buffers.
map <C-K> :bprev<CR>
map <C-J> :bnext<CR>

" Make . to work with visually selected lines.
vnoremap . :normal.<CR>

" Allow Space + W to execute :w in normal mode.
nnoremap <Leader>w :w<CR>

"End of mapped commands

"Autoload this template everytime you create a new .html file.
autocmd BufNewFile *.html 0r ~/.vim/templates/html.tpl

colorscheme desert
filetype plugin indent on
syntax on
