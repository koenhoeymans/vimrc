set nocompatible
filetype off
set backspace=indent,eol,start
syntax on

set number
set hidden
set confirm

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'StanAngeloff/php.vim'
Plugin 'scrooloose/nerdtree'

let g:NERDTreeWinSize=30

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

autocmd VimEnter * :source /media/koen/dev/vim/session.vim
autocmd VimEnter * :NERDTree /media/koen/dev/projects/

autocmd VimLeave * :NERDTreeClose
autocmd VimLeave * :mksession! /media/koen/dev/vim/session.vim

let mapleader=","
imap jk <esc>
map <leader>n :NERDTreeToggle<cr>
