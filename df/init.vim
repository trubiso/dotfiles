let mapleader=","
let maplocalleader=","

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': 'nvim-0.6' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'vim-airline/vim-airline'
Plug 'preservim/tagbar'
Plug 'dense-analysis/ale'
Plug 'tikhomirov/vim-glsl'
Plug 'bfrg/vim-cpp-modern'
Plug 'justinmk/vim-sneak'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'fladson/vim-kitty'
Plug 'airblade/vim-gitgutter'
call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \|   source $MYVIMRC
  \| endif

lua require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }

nnoremap <Tab> <cmd>Telescope find_files<cr>

nnoremap <F8> :TagbarToggle<CR>
nnoremap <F5> :source $MYVIMRC<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

set autochdir
set expandtab
set shiftround
set smarttab
set shiftwidth=2
set tabstop=2

set linebreak

set number
set t_Co=256
set cursorline

filetype on
filetype plugin on
filetype indent on
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set clipboard+=unnamedplus

syntax on
set termguicolors
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
let g:airline#extensions#default#layout = [['a', 'c'], ['x', 'z']]
let g:airline_section_z = "line %#__accent_bold#%l%#__restore__# col %#__accent_bold#%v%#__restore__#"
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-clangd', 'coc-cl']
let g:sneak#s_next = 1
