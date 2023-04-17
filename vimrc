" vimrc

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

nmap fj <Esc>
imap fj <Esc>
vmap fj <Esc>
cmap fj <C-c>

nmap ,h :nohlsearch<cr>
nmap ,w :set wrap!<cr>
nmap ,n :set relativenumber!<cr>
nmap fw <C-w>w
