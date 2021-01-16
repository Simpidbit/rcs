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
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

"=================================================================

set number
set guioptions-=T
set fileencodings=utf-8,ucs-bom,utf-16,utf-32,gbk,big5,gb18030,latin1,gb2312
set encoding=utf8
set termencoding=utf8
set fileencoding=utf8

"au FileType cpp set fileencoding=gbk
"au FileType cpp set termencoding=gbk
"au FileType python set fileencoding=utf8
"au FileType python set termencoding=utf8

set tabstop=4
set shiftwidth=4
set expandtab

"space is better

set noswapfile
colorscheme simpidbit
syntax on
inoremap jj <Esc>
filetype indent on
"set guifont=Hack\ 11
set guifont=Monaco\ 12
set autoindent
set backspace=2
set cursorline
set autochdir
set noerrorbells
set history=30
set autoread
set wrap!
map - ddp
inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
inoremap <c-u> <esc>ua
inoremap <c-w> <esc>ea
""inoremap <c-e> <esc>ldwi
inoremap <c-e> <esc>dawi
inoremap <c-b> <esc>bi
inoremap <c-v> <esc><<i
inoremap <c-p> <esc>$a
inoremap <c-q> <esc>0i
inoremap <c-o> <backspace>
inoremap <c-f> <delete>
inoremap <c-s> <esc>:w<cr>a
inoremap <a-p> ->
inoremap <c-d><c-d> <esc>dda
inoremap <c-[> <esc>mz0i# <esc>`za
inoremap ' ''<left>
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap <c-d><c-[> <esc>mz0xx`za
inoremap <c-y><c-y> <esc>yya
inoremap <c-y><c-p> <esc>pa
inoremap <c-r><c-w> <esc>ldwa
inoremap <c-r><c-b> <esc>ldba
"inoremap <c-i> <esc>ldbi
"inoremap <c-g> <esc>ldwi
nnoremap -c :cd F:\python\projects
nnoremap -e :vsplit $MYVIMRC<cr>
nnoremap -w :source $MYVIMRC<cr>
nnoremap <a-v> :!D:\Applications\Vim\vimrunPy.exe --path=%:p<cr>
nnoremap <a-c> :!python -m pdb %:p<cr>
nnoremap <a-n> :!gnome-terminal -t "%" -- ls -c "python3 %:p;read;"<cr>
nnoremap <a-m> :!g++ %:p -o %.ghostworker<cr>
nnoremap <s-n> :iunmap '<cr>
iabbrev ssigname # e-mail:isaiah2006@163.com<cr># QQ:2766277616
iabbrev stdhtml <!DOCTYPE><cr><html><cr><head><cr><meta charset='utf-8' /><cr></head><cr><body><cr></body><cr></html><delete><delete>
iabbrev stdcpp #include <iostream><cr><cr>int main(<c-p><cr>{<cr><tab>return 0;
function! Filelist()
    Vex
    vertical resize 20
endfunction
function! Refreshlist()
	Ex
endfunction
function! SafeNotes()
	nnoremap <c-b> j0i<PRE><esc>$a</PRE><esc>
	nnoremap <c-m> /	<cr>i&#9;<esc>lx
	nnoremap -k ggi<cr><esc>ki<body background="http://wallpapers1.hellowallpaper.com/art_black-background-widescreen--03_19-2560x1600.jpg" style="background-repeat:no-repeat;background-size:100% 100%;background-attachment:fixed;font-size:20"><cr><font color="white"><esc>G$a<cr></font><cr></body><esc>
endfunction
function! Headers()
	nnoremap <c-b> /: <cr>lx
	nnoremap <c-m> /:<cr>0wi"<esc>$a"<esc>j0
	nnoremap <c-k> /:<cr>i"<esc>la"<esc>j0
	nnoremap <c-l> /:<cr>$a,<esc>j0
endfunction
nnoremap -s :call SafeNotes()<cr>
nnoremap -h :call Headers()<cr>
nnoremap <a-r> :call Refreshlist()<cr>
nnoremap -o :call Filelist()<cr>
nnoremap <c-a> :Ex<cr>
nnoremap -n :cd F:\python\library\notes\tornado<cr>
nnoremap -un :!python D:\Applications\Vim\vimControl.py -new %:p /home/projects/
nnoremap -ur :!python D:\Applications\Vim\vimControl.py -refresh %:p
nnoremap <c-h> :tabp<cr>
nnoremap <c-l> :tabn<cr>
nnoremap <c-n> :tabnew<cr>
nnoremap <c-c> :tabo<cr>
nnoremap <c-o> :tabc<cr>
nnoremap <a-d> :NERDTree<cr>

set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
set laststatus=2
set ruler
hi CursorLine guibg=#081c47
set cursorcolumn
"hi cursorcolumn guibg=#1e1e1e
hi cursorcolumn guibg=#011f5e
hi cursor guibg=orange guifg=red gui=bold
hi StatusLine guibg=white guifg=darkred

call vundle#begin()
""Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
call vundle#end()

"let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='/home/ghostworker/.vim/bundle/YouCompleteMe/cpp/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui=0
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_filetype_whitelist = { 
			\ "cpp":1,
			\ "c":1,
			\ "python":1,
			\ }

hi Pmenu guibg=#3b3b3b guifg=#43d100
