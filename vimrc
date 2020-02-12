" 让配置变更立即生效
autocmd BufWritePost vimrc source vimrc

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$VIM/plugged')
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'endel/vim-github-colorscheme'
Plug 'luochen1990/rainbow'
"Plug 'vim-airline/vim-airline'

Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/VimFold4C'

"Plug 'inkarkat/vim-LogViewer' 
"Plug 'inkarkat/vim-ingo-library'
Plug 'mtdl9/vim-log-highlighting'

Plug 'prettier/vim-prettier'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

call plug#end()

"文件类型检测
filetype on                  " required
filetype plugin on
filetype indent on
filetype plugin indent on    " required

set nocompatible              " be iMproved, required

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"使用系统剪贴板
set clipboard+=unnamed

"显示
set number 
syntax on 
"colorscheme onedark
"colorscheme solarized
"colorscheme molokai
"colorscheme github
"set background=light
set showcmd         " 输入的命令显示出来，看的清楚些  
set statusline=[%p%%]\ [POS=%l,%v]\ [TYPE=%Y]\ [FORMAT=%{&ff}]\ %F%m%r%h%w\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set ruler                   " 打开状态栏标尺

set history=1000 " 历史记录数

"设置文内智能搜索提示  
" 高亮search命中的文本。  
set hlsearch            
" 搜索时忽略大小写  
set ignorecase  
" 随着键入即时搜索  
set incsearch  
" 有一个或以上大写字母时仍大小写敏感  
set smartcase  

"设定tab宽度为4个字符
set tabstop=4
"设定tab用space代替
set expandtab
"设定自动缩进为4个字符
set shiftwidth=4

"设定 list模式，即显示空格和TAB等
set list
set listchars=space:.

"快捷键修改
imap jj <Esc>
