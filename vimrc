"	.vimrc settings and configurations
"	
"	Super basic configurations and plugins
"	Plugins manager: vim-plug: https://github.com/junegunn/vim-plug
"
"	Made by Solracs


set tabstop=4 softtabstop=4
set shiftwidth=4
set rnu
set nu
set scrolloff=8
set incsearch
set nohlsearch
set smartindent
set ttimeoutlen=500

"	Plugin's section

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

colorscheme gruvbox
set background=dark

" Transparent background
hi Normal guibg=NONE ctermbg=NONE


"	Remapping section

let mapleader=" "

" <space>+h leads to this header
" ################################################################################



" ################################################################################


nnoremap <Leader>h	80i#<Esc>4o<Esc>80i#<Esc>2o<Esc>
nnoremap <Leader>c	<Esc>:set colorcolumn=80<CR>
nnoremap <Leader>C	<Esc>:set colorcolumn= <CR>
nnoremap <Leader>gd 	:YcmC GoToDeclaration<CR>
nnoremap <Leader>u	YpVr-<CR>
