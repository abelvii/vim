set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"vim-go | go settings `go get -u github.com/golang/lint`
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'acoustichero/goldenrod.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'fatih/vim-go'
Plugin 'ekalinin/Dockerfile.vim'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'
Bundle "https://github.com/tpope/vim-surround"
Bundle "https://github.com/vim-syntastic/syntastic"
call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
set background=dark
"colorscheme desert 
"darkblue delek blue morning elflord shine zellner ron slate murphy torte
colorscheme goldenrod
set helplang=cn     "使用中文帮助文档
set backspace=2
set tabstop=4 "制表符的宽度
set softtabstop=4
set shiftwidth=4 "缩进的空格
set cindent "C 插件
set number "设置行号
set ignorecase "忽略大小写 （查找字符串时）
set nohlsearch "高亮显示 （查找字符串是，找到后高亮显示）
set ruler     "在右下角显示光标位置
set showcmd     "显示未敲完的命令
set cmdheight=1 "设定命令行的行数为 1
set incsearch "在输入搜索的字符串同时就开始搜索已经输入的部分
set wrap "一行就一行，别弄到第二行去
set sidescroll=10     "屏幕放不下时，按一次屏幕移动一个字符    
set whichwrap=b,s,<,>,[,]     "跨行移动
set fileformats=unix,dos
set cursorline "突出显示当前行
set cursorcolumn "突出显示当前列
set showmatch "插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2 "短暂跳转到匹配括号的时间
set smartindent "开启新行时使用智能自动缩进
set paste
set wildmenu "命令补全菜单 
set expandtab
set autoindent     "自动缩进
set splitbelow
set splitright
set shell=/bin/bash

"vim-powerline插件
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'
set encoding=utf8

let g:go_version_warning = 0

" NERD tree
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" " Automatically open a NERDTree if no files where specified
autocmd vimenter * if !argc() | NERDTree | endif
" " Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" " Open a NERDTree
nmap <F5> :NERDTreeToggle<cr>


:set ruler
" higligh column 81
":set colorcolumn=81
:set colorcolumn=101

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



let mapleader="'"
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 跳转至右方的窗口
nnoremap <Leader>l <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>h <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>k <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>j <C-W>j
" 清除高亮显示
nmap <Leader>N :noh<CR>
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
nnoremap <Leader>g <C-]>
nnoremap <Leader>b <C-t>



hi Visual term=reverse cterm=reverse guibg=Grey
"highlight Visual cterm=bold ctermbg=Blue ctermfg=NONE
autocmd BufNewFile *.go exec "call SetTitle()"
func! SetTitle()
"    call setline(1, "/*")
"    call append(line("."), "* File Name: ".expand("%")) 
"    call append(line(".")+1, "* Author: ") 
"    call append(line(".")+2, "* Mail: ") 
"    call append(line(".")+3, "* Created Time: ".strftime("%c")) 
"    call append(line(".")+4, "* Description: ")
"    call append(line(".")+5,"*/")
endfunc
