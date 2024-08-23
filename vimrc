syntax on
set history=500

set number
set ruler
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set background=dark

nmap <C-N><C-N> :set number!<CR>
nmap <C-R><C-R> :set relativenumber!<CR>
nmap <C-P><C-P> :set paste!<CR>

call plug#begin('~/.vim/plugged')
	Plug 'morhetz/gruvbox'
	Plug 'vim-scripts/bash-support.vim'
call plug#end()

" Load Vim gruvbox color scheme only if using xterm
" Otherwise use whatever is currently used
if (&term=="xterm-256color") || (&term=="xterm-kitty")
	autocmd vimenter * ++nested colorscheme gruvbox
endif
