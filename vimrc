"       .vimrc settings and configurations
"
"       Super basic configurations and plugins
"       Plugins manager: vim-plug: https://github.com/junegunn/vim-plug
"
"       Made by Carlos-SE


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
set title
set noshowmode

let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3

"       Plugin's section

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'romainl/Apprentice'
Plug 'jiangmiao/auto-pairs'
Plug 'ycm-core/YouCompleteMe'
Plug 'farmergreg/vim-lastplace'
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-visual-multi'

call plug#end()

colorscheme apprentice
set background=dark

"	Transparent background
"hi Normal guibg=NONE ctermbg=NONE

if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ }
"       Transparent background
"hi Normal guibg=NONE ctermbg=NONE

"       Remapping section

let mapleader=" "

" <space>+h leads to this header
" ################################################################################



" ################################################################################


nnoremap <Leader>h      80i#<Esc>4o<Esc>80i#<Esc>2o<Esc>

" Enable and disable visual column at 80
nnoremap <Leader>c	:set colorcolumn=81<CR>
nnoremap <Leader>C	:set colorcolumn= <CR>
nnoremap <Leader>c      :set colorcolumn=81<CR>
nnoremap <Leader>C      :set colorcolumn= <CR>

" YouCompleteMe go to declaration
nnoremap <Leader>gd :YcmC GoToDeclaration<CR>

" Unerlide previous line
nnoremap <Leader>u      YpVr-<CR>

" Explore tab and change to it
nnoremap <Leader>od :Vex<CR>
nnoremap <Leader>d	:wincmd h<CR>
nnoremap <Leader>d      :wincmd h<CR>
nnoremap <Leader>cd :wincmd l<CR>:on<CR>

" LaTex shorcuts
nnoremap <Leader>li		i\begin{figure}[h]<Esc>o<Tab>\centering<Esc>o<Tab>includegraphics{img/}<Esc>o<Tab>caption{}<Esc>o\end{figure}<CR>
