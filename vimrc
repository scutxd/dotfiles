" 让配置变更立即生效
autocmd BufWritePost vimrc source vimrc

set nocompatible              " be iMproved, required
" set the runtime path to include Vundle and initialize
set rtp+=$VIM/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('$VIM/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" Plugin 'andreshazard/vim-logreview'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mtdl9/vim-log-highlighting'
Plugin 'prettier/vim-prettier'

Plugin 'tomasr/molokai'

Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/VimFold4C'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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
"set background=light
set showcmd         " 输入的命令显示出来，看的清楚些  
set statusline=[%p%%]\ [POS=%l,%v]\ [TYPE=%Y]\ [FORMAT=%{&ff}]\ %F%m%r%h%w\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set ruler                   " 打开状态栏标尺
"文件类型检测
filetype on                  " required
filetype indent on

set history=1000 " 历史记录数

"搜索逐字符高亮
set hlsearch
set incsearch
