set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Programming
" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
let g:pymode_lint = 0

Plugin 'tomtom/tcomment_vim'
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

Plugin 'SuperTab'

Plugin 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key='<LocalLeader>'

Plugin 'junegunn/vim-easy-align'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number
set relativenumber

syntax on

set novisualbell

set ruler

set showcmd
set showmode

set scrolloff=3

" 自动缩进
set ai

" insert模式退格键删除
set bs=2

" 代码匹配
set showmatch
set matchtime=1

" 显示状态行
set laststatus=2

" 设置tab和空格
set expandtab
set shiftwidth=4
set tabstop=4

" 光标所在行加下划线
set cursorline

" 文件打开使用的编码
set fileencodings=utf-8,gbk

" 检索高亮匹配行
set hls

set helplang=cn

set foldmethod=manual

if &diff
    colorscheme diff-color-scheme
endif
