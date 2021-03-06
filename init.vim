"Vim的配置文件

    "针对拓展管理器插件vim-plug进行配置
    call plug#begin('~/.local/share/nvim/plugged')

"编码设定

set encoding=utf-8              "默认编码为utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8


"搜索设置

set magic                    "搜索开启正则表达式
set hlsearch                 "搜索时高亮度显示被找到文本
set noic                     "搜索时不忽略大小写


"外观设定
    "状态查看
    set ruler                        "显示最后一行的状态
    set showcmd
    set showmode                     "左下角那一行的状态
    set laststatus=2                 "显示状态栏
    let g:airline#extensions#tabline#enabled = 1
colorscheme   torte              "设定配色方案
set nu                           "在每一行前面显示行号
set bg=dark                      "显示不同的底色色调
syntax on                        "语法高亮
set cursorline                   "突出显示当前行
set so=999  			 "始终让当前行处于中间

"代码折叠

set foldmethod=indent            "根据每行的缩进来进行代码折叠
"使用空格键进行代码折叠
nnoremap <space> za
"使用tab键来打开/关闭所有折叠
nnoremap <tab> zi

"输入设定

set backspace=2                  "随时可用退格键删除
set autoindent                   "自动缩进
set smartindent                  "换行时智能缩进
set shiftwidth=4                 "设置缩进为4个空格
set undofile                     "保存撤销历史
"设置\为自动设置当前行为屏幕中间
nnoremap m zz

    "针对lisp括号输入过多，使用[]替代"
    autocmd BufNewFile,BufRead *.lisp imap [ (
    autocmd BufNewFile,BufRead *.lisp imap ] )
    autocmd BufNewFile,BufRead *.scm imap [ (
    autocmd BufNewFile,BufRead *.scm imap ] )
    autocmd BufNewFile,BufRead *.rkt imap [ (
    autocmd BufNewFile,BufRead *.rkt imap ] )



"分割布局

set splitbelow
set splitright
    "使用快捷键crlt+Vim标准移动键实现布局切换
     nnoremap <C-J> <C-W><C-J>
     nnoremap <C-K> <C-W><C-K>
     nnoremap <C-L> <C-W><C-L>
     nnoremap <C-H> <C-W><C-H>



"安装插件

Plug 'tmhedberg/SimpylFold'                                          "安装自动缩进插件
Plug 'scrooloose/nerdtree'                                           "安装文件浏览树形结构插件
Plug 'tpope/vim-fugitive'                                            "安装GIT集成工具
Plug 'bling/vim-airline'                                             "安装底部状态栏插件
Plug 'vim-airline/vim-airline-themes'                                "安装状态栏的配色方案
    "关于状态栏的小配置
    "状态栏的例子
    "Powerline setting
    let g:airline_theme='molokai'
    let g:airline_powerline_fonts = 1

call plug#end()


