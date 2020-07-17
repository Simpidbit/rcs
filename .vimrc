set guioptions-=T
set number
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
au FileType python set noexpandtab
au FileType * set noexpandtab
au FileType cpp set expandtab
"space is better

set noswapfile
colorscheme yixiu
syntax on
inoremap jj <Esc>
filetype indent on
set guifont=Hack\ 11
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
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 
set laststatus=2
set ruler
hi CursorLine guibg=#1e1e1e
set cursorcolumn
hi cursorcolumn guibg=#1e1e1e
hi cursor guibg=orange guifg=red gui=bold
hi StatusLine guibg=white guifg=darkred

let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
