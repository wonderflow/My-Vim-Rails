" 调用Pathogen插件来管理插件 必须在 filetype plugin indent on 之前
call pathogen#runtime_append_all_bundles()

" 文件类型识别
filetype on
filetype plugin indent on


set nocompatible " 不兼容VI键盘，使用vim键盘 
let mapleader=","
set background=dark
color desert
" colorscheme torte " 设置默认的颜色
syntax on " 设置开启语法高亮
set fileencoding=utf-8 "文件编码
set termencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936,default
"set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 " 设置文件编码检测类型及支持格式

set history=50 " 历史记录数
set undolevels=100

" Folding {{{
set foldenable " Turn on folding
set foldmethod=indent
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds 
function! SimpleFoldText() " {{{
    return getline(v:foldstart).' '
endfunction " }}}
set foldtext=SimpleFoldText() " Custom fold text function (cleaner than default)
" }}}

" General {{{
set undofile " keep a persistent backup file
set undodir=~/.undo
set nobackup " no backup files
set nowritebackup
set noswapfile " 禁止生成临时文件
set backspace=indent,eol,start " make backspace a more flexible
set clipboard+=unnamed " share windows clipboard
set visualbell           " don't beep
set noerrorbells         " don't beep
set hidden " you can change buffers without saving
"set mouse=a "don't use mouse everywhere

set wildmenu " turn on command line completion wild style
set wildmode=full
" ignore these list file extensions
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

set autowrite
set autoread
" set ttyfast
" }}}

" Vim UI {{{
" use perl/python style regex
nnoremap / /\v
vnoremap / /\v
set cursorline " highlight current line
set incsearch " BUT do highlight as you type you search phrase
set nowrapscan 
set laststatus=2 " always show the status line
set lazyredraw " do not redraw while running macros
set nohlsearch " do not highlight searched for phrases    
set incsearch
function! ToggleHLSearch()
    if &hls
        set nohls
    else
        set hls
    endif
endfunction
nmap <leader>h <Esc>:call ToggleHLSearch()<CR>


set guifont=Monaco:h13
set guioptions-=r
"把gui的左边的滑动条去掉
set guioptions-=L
set guioptions-=m
set guioptions-=T

set nostartofline " leave my cursor where it was
set number " turn on line numbers
set report=0 " tell us when anything is changed via :...
set ruler " Always show current positions along the bottom
set scrolloff=10 " Keep 10 lines (top/bottom) for scope
set shortmess+=I "disable startup message
set showcmd " show the command being typed
set showmatch " show matching brackets
set bsdir=buffer "set cwd to buffer dir
"set autochdir "auto change dir to cwd
function! CurDir()
    let curdir=substitute(getcwd(), $HOME, "~", "g")
    return curdir
endfunction


" Text Formatting/Layout {{{
set completeopt=longest,menu
set complete-=i
set expandtab " no real tabs please!
set ignorecase " case insensitive by default
set nowrap " do not wrap line
set autoindent
set cindent
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set smartcase " if there are caps, go case-sensitive
set shiftwidth=2 " auto-indent amount when using cindent, >>, << and stuff like that
set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set tabstop=2 " real tabs should be 8, and they will show with  set list on
" }}}

set iskeyword+=_,$,@,%,#,- " 带有如下符号的单词不要被换行分割

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key









" 设置自动保存
  imap <F9> <Esc>:up<cr>

" 把 F8 映射到 启动NERDTree插件
" NERD Tree {{{
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=0
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=40
let NERDTreeHighlightCursorline=1
let NERDTreeWinPos="right"
" }}}

" Make Arrow Keys Useful Again {{{
map <leader>bd <ESC>:call CloseTab()<CR>
func! CloseTab()
    let s:buf_nr = bufnr("%")
    "echo s:buf_nr
    exec ":Tbbp "
    exec ":bdelete ".s:buf_nr
endfunction

nmap <leader>s :w<CR>
nmap <leader>x <Esc>:q<CR>
nmap <leader>qa :qall<CR>
nmap <leader>f :CtrlP<cr>
nmap <leader>fl <Esc>:NERDTreeToggle<CR>

" 在不同的窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Switch to current dir
map <leader>cd :cd %:p:h<CR>

" F5自动运行
map <F5> <Esc>:w<CR>:!%:p<CR>

" 设置FuzzyFinder
map <leader>F :FufFile<CR>
map <leader>f :FufTaggedFile<CR>
map <leader>g :FufTag<CR>
map <leader>b :FufBuffer<CR>

" 设置Color-Sample
map <silent><F3> :NEXTCOLOR<cr>
map <silent><F2> :PREVCOLOR<cr>

" 设置SuperTab
let g:SuperTabRetainCompletionType="context"
