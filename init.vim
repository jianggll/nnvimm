" 文件位置:   ~/.config/nvim/init.vim
" 文件创建者: jianggl(jianggl6827@gmail.com)
" 说明:       neovim的配置文件

" ---------------- 通用设置 ----------------
let &t_ut=''
set exrc
set secure
set cursorline
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set lazyredraw
set visualbell
silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=$HOME/.config/nvim/tmp/undo,.
endif
set virtualedit=block
set smarttab
set smartindent
set autoindent                    " 与前面一行相同的缩进
set scrolloff=0                   " 滚动时，光标所在行与上下的距离
set hlsearch                      " 搜索结果高亮显示
set incsearch                     " 在输入搜索内容的同时搜索
set wildmenu                      " 补全时, 下拉菜单的样式显示可选项
set showcmd                       " 低栏显示输入的命令
set noshowmode                      " 在底行显示当前处于的模式(insert/nomal/command/visual)
if has("autocmd")                 " 从上次关闭的位置继续
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set backspace=indent,eol,start    " 插入模式下<Bs>可以删除的字符
set history=200                   " 保存的命令数量

" ---------------- 个人的设置 ----------------
set noexpandtab                   " 键入tab时改为插入空格
set tabstop=8                     " tab的长度
set softtabstop=8
set shiftwidth=8
set number                        " show line number
set norelativenumber              " 关闭相对行号
set listchars=tab:\|\ ,trail:~
set list                          " 显示空白字符
set nowrap                        " 不换行显示
set splitbelow                    " 新分割窗口在当前窗口
set splitright                    " 下方或右方
set autochdir                     " 打开新文件时，切换工作目录
"set clipboard+=unnamed           " 共用系统剪切板
"set clipboard+=unnamedplus       " 共用系统剪切板

" ---------------- 插件 ----------------
" 使用的插件管理器是"vim plug"
" 工具发布地址: http://github.com/junegunn/vim-plug
call plug#begin()
	" 文件管理
	Plug 'https://github.com/preservim/nerdtree'
	" 快捷注释文本
	Plug 'https://github.com/tpope/vim-commentary'
	" nvim主题
	Plug 'https://github.com/cocopon/iceberg.vim'
	" dashboard
	Plug 'https://github.com/glepnir/dashboard-nvim'
	" 显示颜色
	Plug 'https://github.com/norcalli/nvim-colorizer.lua'
call plug#end()
" 设置颜色主题
set termguicolors
colorscheme iceberg
" #开头的数字识别为RGB颜色，显示这个颜色 #FF0000 #00FF00 #0000FF
lua require'colorizer'.setup()

set re=0

" ---------------- 键盘设置和快捷键 ----------------
let mapleader=","
nmap <leader>a :set vb t_vb=<cr>
nmap <leader>w :set wrap!<cr>
nmap <leader>n :set relativenumber!<cr>
nmap <leader>c :set list!<cr>
nmap <leader>s :source ~/.config/nvim/init.vim<cr>
nmap <leader>t :sp<cr>:terminal<cr>i
nmap <leader>m :nohlsearch<cr>
nmap <leader>d :%bd\|e#\|bd#<cr>
nmap <C-j> 5j
nmap <C-k> 5k
nmap gb :tabprevious<cr>
nmap Y y$
nmap ; i <Esc>
nmap gp "+p
nmap fj <Esc>
nmap fh :w<cr>
nmap fy :q<cr>
nmap fm A
nmap fp $
nmap fo 0
"nmap fe :NERDTreeToggle<cr>
nmap feh :vertical resize -5<cr>
nmap fej :resize -5<cr>
nmap fek :resize +5<cr>
nmap fel :vertical resize +5<cr>
nmap fwh <C-w>h
nmap fwj <C-w>j
nmap fwk <C-w>k
nmap fwl <C-w>l

imap fj <Esc>

cmap fj <Esc>
" Command Mode Cursor Movement
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <M-b> <S-Left>
cnoremap <M-w> <S-Right>

vmap fj <Esc>
vmap fp $
vmap fo 0
" Copy to system clipboard
vmap Y "+y
