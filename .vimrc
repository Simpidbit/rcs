" 显示代码行数
set number

" T: 关闭Toolbar
set guioptions-=T
set fileencodings=utf-8,ucs-bom,utf-16,utf-32,gbk,big5,gb18030,latin1,gb2312
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" 自动缩进时,缩进长度为4
set shiftwidth=4

" 缩进符号替换为空格
set expandtab

" 设置 tab 字符的显示宽度为多少个空格
set tabstop=4

" 禁止vim创建交换文件
set noswapfile

" 颜色主题
colorscheme Simpidbit_v2_0

" 开启基于文件类型的缩进
filetype indent on

" 设置字体及大小
set guifont=Consolas:h19

" 开启自动缩进
set autoindent

" 0：退格键仅能删除插入点之前的字符，不能删除自动缩进的字符
" 1：退格键可以删除插入点之前的字符和刚刚输入的一个自动缩进字符
" 2：退格键能删除包括自动缩进字符在内的更多内容 
set backspace=2

" 开启光标所在行的高亮显示
set cursorline
" 开启光标所在列的高亮显示
set cursorcolumn

" 开启自动切换工作目录
set autochdir

" 关闭error铃
set noerrorbells

" 让vim记住我30条历史指令
set history=30

" 开启自动重新读取文件
set autoread

" 禁用文本自动换行
set nowrap

"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
set statusline=%F%m%r%h%w\ \|POS=%l,COL=%v,%p%%\|\ \%{strftime(\"20%y.%m.%d\ %H:%M\")}

" 0：状态栏始终不显示
" 1：只有当有多个窗口时，状态栏才显示
" 2：状态栏始终显示
set laststatus=2

" 显示光标所在的行列位置
set ruler

" 关闭兼容模式，以完全体形态运行
set nocompatible


inoremap jj <Esc>

inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-u> <esc>ua
inoremap <c-w> <esc>ea
inoremap <c-e> <esc>dawi
inoremap <c-b> <esc>bi
inoremap <c-v> <esc><<i
inoremap <c-p> <esc>$a
inoremap <c-q> <esc>0i
inoremap <c-o> <backspace>
inoremap <c-f> <delete>
inoremap <c-s> <esc>:w<cr>a
inoremap <c-d><c-d> <esc>dda

inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap <c-y><c-y> <esc>yya
inoremap <c-y><c-p> <esc>pa
inoremap <c-r> ->

nnoremap -e :vsplit $MYVIMRC<cr>
nnoremap -w :source $MYVIMRC<cr>
nnoremap <c-a> :Ex<cr>
nnoremap <c-h> :tabp<cr>
nnoremap <c-l> :tabn<cr>
nnoremap <c-n> :tabnew<cr>
nnoremap <c-o> :tabc<cr>

" Syntax
function! SPSyntax()
    syntax match spNamespace /\v\w+\@=::/me=e-2
    hi spNamespace guifg=#35b5ff

    syntax match spDefine /\v#define[a-zA-Z_0-9 ]+/
    hi link spDefine cDefine

    syntax match spType /\v[a-zA-Z_][a-zA-Z0-9_:<>]+(([\&\*]{0,1} +)|([ +[\&\*]{0,1} +])|( +[\&\*]{0,1}))(\w|\*|\&|_)/me=e-2 contains=spNamespaceChar,spNamespace,spChar,spParenthese,spEnd,spDefine
    hi link spType Type


    syntax match spParenthese "\V(\|)\|{\|}\|[\|]"            "括号
    hi spParenthese guifg=#ffdd00

    syntax match spChar "\V\(+\|-\|*\|%\|.\|&\|<\|>\|=\||\|~\|?\)"
    hi spChar guifg=#2fd911

    syntax match spEnd "\V;\|,"
    hi spEnd guifg=#6e736d

    syntax match spNamespaceChar /\v::/me=e
    hi link spNamespaceChar spChar
endfunction

syntax on
au Syntax * call SPSyntax()

" Taglist设置 =============================
" ctags最常用的几个命令：
" ctrl+ T    返回上一个tag
" ctr + ]     切换到函数定义
" ctr + o
" ctr + W W

" 设置Taglist：

"使用F9切换打开或关闭Taglist
nnoremap <c-p> :TlistToggle<cr>

" taglist参数介绍，大家可以根据自己的偏好在.vimrc中设置：

" Tlist_Use_Right_Window：设置为1时，taglist窗口在右侧显示
let Tlist_Use_Right_Window = 1
" Tlist_Ctags_Cmd：设置ctags命令的位置
let Tlist_Ctags_Cmd = "C:\\Windows\\System32\\ctags.exe"
" Tlist_Use_Horiz_Window：设置为1时，taglist窗口横向显示。默认纵向显示
" Tlist_WinHeight：设置taglist窗口的宽度
" Tlist_WinWidth：设置taglist窗口的高度
" Tlist_Show_One_File：设置Tlist_Show_One_File为1则只显示当前文件的taglist，缺省显示多个文件中的tag
let Tlist_Show_One_File = 1
" Tlist_Sort_Type：taglist默认按tag在文件中出现的顺序进行排序，设置为"name"，taglist将以tag名字进行排序
" Tlist_Exit_OnlyWindow：设置为1时，如果taglist是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
" Tlist_Use_Right_Window：设置为1时，taglist窗口出现在右侧，缺省显示在左侧
" Tlist_Auto_Open：如果想在启动VIM后自动打开taglist窗口，该参数设置为1
let Tlist_Auto_Open = 1
" Tlist_Close_On_Select：如果想在选择了tag后自动关闭taglist窗口，该参数设置为1
" Tlist_GainFocus_On_ToggleOpen：设置为1时，打开taglist光标保留在taglist窗口

" =========================================
