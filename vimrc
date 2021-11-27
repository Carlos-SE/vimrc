"	.vimrc settings and configurations
"	
"	Super basic configurations and plugins
"	Plugins manager: vim-plug: https://github.com/junegunn/vim-plug
"
"	Made by Carlos-SE


set tabstop=4 softtabstop=4
set shiftwidth=4
set rnu
set nu
set scrolloff=8
set incsearch
set nohlsearch
set smartindent
set ttimeoutlen=500
set laststatus=2

let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3

"	Plugin's section

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'farmergreg/vim-lastplace'

call plug#end()

colorscheme gruvbox
set background=dark

hi Normal guibg=NONE ctermbg=NONE

"	Remapping section

let mapleader=" "

" <space>+h leads to this header
" ################################################################################



" ################################################################################


nnoremap <Leader>h	80i#<Esc>4o<Esc>80i#<Esc>2o<Esc>

" Enable and disable visual column at 80
nnoremap <Leader>c	:set colorcolumn=80<CR>
nnoremap <Leader>C	:set colorcolumn= <CR>

" YouCompleteMe go to declaration
nnoremap <Leader>gd :YcmC GoToDeclaration<CR>

" Unerlide previous line
nnoremap <Leader>u	YpVr-<CR>

" Explore tab and change to it
nnoremap <Leader>od :Vex<CR>
nnoremap <Leader>d	:wincmd h<CR>
