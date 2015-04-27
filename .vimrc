set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" 文件管理
Plugin 'scrooloose/nerdtree'
" 缩进线对对其
Plugin 'Yggdroot/indentLine'
" 自动补全插件
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplcache.vim'
" 代码注释
Plugin 'scrooloose/nerdcommenter'
" 多光标同时输入
Plugin 'terryma/vim-multiple-cursors'
" 函数 方法查看
Plugin 'majutsushi/tagbar'
" 前端插件
Plugin 'JulesWang/css.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'mxw/vim-jsx'

" Code colon 
Plugin 'junegunn/seoul256.vim'
" 自动补全
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on

"语法高亮
syn on
""自动缩进
set autoindent
"总是现实状态行
set laststatus=2
"以下三个配置配合使用，设置 tab 和缩进空格数
set expandtab
set shiftwidth=4
set tabstop=4
"为光标所在行加下划线
set cursorline
""光标移到最后一个字母后
set virtualedit=onemore
"显示行号
set number
""文件在 Vim 之外修改过，自动重新读入
set autoread
"在编辑过程中，在右下角显示光标位置的状态行
set ruler
""显示匹配括号
set showmatch
"代码折叠
" set foldmethod=indent
""检索时忽略大小写
set ignorecase
"使用 utf-8 或 gbk 打开文件
set fileencodings=utf-8,gbk
set termencoding=utf-8
set encoding=utf-8
""检索时高亮显示匹配项
set hlsearch
"增量式搜索
set incsearch
" ================== neocomplcache.vim config =======================
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1

"============================= emment 配置 ===========================

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_expandabbr_key = '<Tab>'

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" ======================= 文件管理配置 =============================
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree

" ======================= 代码颜色配置方案 =========================
" Light color scheme
let g:seoul256_background = 239
colo seoul256

" Switch
set background=dark
" set background=light

" ============================== react jsx config ====================
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1

" ==============================  tag config ========================
nmap <F8> :TagbarToggle<CR>
