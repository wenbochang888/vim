let mapleader=" "

set nu
set expandtab
set smarttab
set smartindent
set smartcase
set autoindent
set background=dark
set encoding=utf-8
set ai!
set clipboard+=unnamed
set wrap
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
let &t_ut=''
set expandtab
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=15
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"搜索
set ignorecase
set incsearch
set hlsearch

"好看
set ruler               "显示当前的行号列号：
set showcmd             "在状态栏显示正在输入的命令
set showmode            "Show current mode
set showmatch           "括号匹配
set cursorline          "下划线

syntax on

"大写S保存并退出
map S :wq<CR>


"行首，行尾
map 1 <S-^>
map 0 <S-$>

"上下翻页
noremap q 10<Down>
noremap Q 10<Up>

"取消高亮
noremap <LEADER><CR> :nohlsearch<CR>

"移动
map <C-i> :m-2<CR>
map <C-k> :m+1<CR>

"分屏左右
noremap <LEADER>j <C-w>h
noremap <LEADER>l <C-w>l
noremap <LEADER>i <C-w>k
noremap <LEADER>k <C-w>j

"上下左右
noremap j h
noremap i k
noremap k j

"插件
call plug#begin('~/.vim/plugged')

"底部栏
Plug 'vim-airline/vim-airline'

" File navigation
Plug 'preservim/nerdtree'

call plug#end()

"nerdtree  目录树s新打开一个标签
map <F1> :NERDTreeMirror<CR>
map <F1> :NERDTreeToggle<CR>


