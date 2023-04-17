" vimrc

" mapleader
let mapleader=','

" go to previous position
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" options
set number relativenumber
set listchars=tab:\ \ ,trail:~ list
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent expandtab
set splitbelow splitright
set autoread noautochdir
set hlsearch incsearch
set scrolloff=6 mouse=a

" keymaps
nmap fj <Esc>
imap fj <Esc>
vmap fj <Esc>
cmap fj <C-c>

nmap <leader>h :nohlsearch<cr>
nmap <leader>w :set wrap!<cr>
nmap <leader>n :set relativenumber!<cr>
nmap fw <C-w>w
