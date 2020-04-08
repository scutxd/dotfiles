" 让配置变更立即生效
autocmd BufWritePost vimrc source vimrc

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim:/plugged')
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'endel/vim-github-colorscheme'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/VimFold4C'

"Plug 'inkarkat/vim-LogViewer' 
"Plug 'inkarkat/vim-ingo-library'
Plug 'mtdl9/vim-log-highlighting'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"Plug 'prettier/vim-prettier', {
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json',
"  \ 'graphql', 'markdown', 'vue', 'yaml', 'html', 'kml'] }
Plug 'prettier/vim-prettier'
Plug 'google/yapf', { 'rtp': 'plugins/vim', 'for': 'python' }

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:prettier#config#parser = 'babylon'
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
"set statusline=[%p%%]\ [POS=%l,%v]\ [TYPE=%Y]\ [FORMAT=%{&ff}]\ %F%m%r%h%w\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
"set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set ruler                   " 打开状态栏标尺
set t_Co=256

set history=1000 " 历史记录数

" 设置文件备份相关设置
" 不需要备份文件
set nobackup    
" 记录撤销更改的文件统一存放
set undodir='$VIM/undodir/'

"设置文内智能搜索提示  
" 高亮search命中的文本。  
set hlsearch            
" 搜索时忽略大小写  
set ignorecase  
" 随着键入即时搜索  
set incsearch  
" 有一个或以上大写字母时仍大小写敏感  
set smartcase  
" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

"设定tab宽度为4个字符
set tabstop=4
"设定tab用space代替
set expandtab
"设定自动缩进为4个字符
set shiftwidth=4

"设定 list模式，即显示空格和TAB等
"set list
"set listchars=space:.

"折叠方法syntax
set foldmethod=syntax
"打开文件是默认不折叠代码
set foldlevelstart=99

"发生更改时自动更新
set autoread

"快捷键修改
imap jj <Esc>

"airline配置
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline#extensions#tabline#fnamemod = ':p:~'
"function! AirlineInit()
"    let g:airline_section_c = airline#section#create(['%p'])
"endfunction
"autocmd VimEnter * call AirlineInit()
