" Basic Configuration
syntax on 
filetype plugin indent on

" set splitbelow
set nohlsearch
set mouse=a
set noerrorbells
set sw=2
set expandtab
set smartindent
set number
set rnu
set numberwidth=1
" set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors

" Python setups
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4
" set expandtab
set autoindent
" set fileformat=unix
" set colorcolumn=120
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'

" status line and Icons
" Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'

" functionality
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'vim-python/python-syntax'

" tmux
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'

" test 
Plug 'kkpmw/vim-sendtowindow'
"Plug 'tyewang/vimux-jest-test' 
"Plug 'janko-m/vim-test'

" code completation IDE and typing
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Finder
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim-TeX
Plug 'lervag/vimtex'

" R Plugins
Plug 'jalvesaq/Nvim-R'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'gaalcaras/ncm-R'
" Plug 'ncm2/ncm2'                     " completion [dep]: nvim-0.2.2, nvim-yarp, python3
" Plug 'roxma/nvim-yarp'               " remote plugin framework required for ncm2
" Plug 'ncm2/ncm2-bufword'             " complete words in buffercall 
" Plug 'ncm2/ncm2-path'                " complete paths
" Plug 'gaalcaras/ncm-R'               " R completion [dep]: ncm2, Nvim-R
" Plug 'jalvesaq/Nvim-R'               " required for ncm-R
call plug#end()

" test
" nnoremap <leader>t :TestNearest<CR>
" nnoremap <leader>T :TestFile<CR>
" nnoremap <leader>TT :TestSuite<CR>

" UltiSnips
let mapleader = " "
let g:UltiSnipsExpandTrigger = '<Tab>' " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger = '<Tab>' " use Tab to move forward through
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>' " use Shift-Tab to move backward through
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips'] " using Neovim

" NCM2
" let g:python3_host_prog='/home/robervz22/miniconda3/bin/python3'
" autocmd BufEnter * call ncm2#enable_for_buffer()    " To enable ncm2 for all buffers.
" set completeopt=noinsert,menuone,noselect

" LaTeX Snippets
let g:tex_flavor='latex'
set conceallevel=1
let g:tex_conceal='abdm'
hi Conceal ctermfg=109 guifg=#ECEFF4 ctermbg=NONE guibg=NONE
" When the filetype is FILETYPE then make AutoPairs only match for parenthesis
au Filetype tex let b:AutoPairs = {"(": ")","{":"}","[":"]"}
" 
" Dracula Theme
colorscheme dracula

" Nord Theme
" let g:nord_contrast = v:true
" let g:nord_borders = v:false
" let g:nord_disable_background = v:false
" let g:nord_italic = v:false
" let g:nord_uniform_diff_background = v:true
" let g:nord_bold = v:false
" colorscheme nord
"hi Normal guibg=NONE ctermbg=NONE
      
" air-line
let g:airline_powerline_fonts = 1

" easymotion
nmap <leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1

" NERDTree
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeIgnore=['\.pyc$']
map <leader>nn :NERDTreeToggle<CR>                  

" FZF 
map <leader>p :Files<CR>

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" airline
let g:airline_theme='google_dark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme='tomorrow'
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.colnr = ' Co:'

" personal shortcuts
nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
nnoremap <leader>w :w<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
nnoremap <leader>e :e $MYVIMRC<CR>
vnoremap <c-t> :split<CR>:ter<CR>
nnoremap <c-t> :split<CR>:ter<CR>

nmap oo o<Esc>x
nmap OO O<Esc>x
" faster scrolling 
" nnoremap <C-j> 10<C-e>
" nnoremap <C-k> 10<C-y>
" remap keys for gotos 
nmap <silent> gd <Plug>(coc-definition)
map <leader>ob :Buffers<CR>  
" Buffer movement
nnoremap <leader>k :bn<CR>
nnoremap <leader>j :bp<CR>
" Quit buffer
nnoremap <leader>q :bd<CR>
" Create window
nnoremap <leader>t :tabe<CR>
" Vertical split
nnoremap <leader>vs :vsp<CR>
" Horizontal split
nnoremap <leader>sp :sp<CR>
" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
" Start terminals for R and Python sessions '\tr' or '\tp'
map <Leader>tr :new term://zsh<CR>iR<CR><C-\><C-n><C-w>k
map <Leader>tp :new term://zsh<CR>ipython3<CR><C-\><C-n><C-w>k
 " Tabs & Navigation
" map <leader>to :tabonly<cr>     " To close all other tabs (show only the current tab).
" map <leader>tm :tabmove<cr>     " To move the current tab to next position.
" map <leader>tn :tabn<cr>        " To switch to next tab.
" map <leader>tp :tabp<cr>        " To switch to previous tab. 
