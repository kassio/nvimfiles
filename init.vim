source $HOME/.config/nvim/bundles.vim
let g:data_home=expand("$HOME/.local/share/nvim")

scriptencoding utf8
set fileencoding=utf8 nobomb

runtime macros/matchit.vim
set showmatch

set confirm

set shortmess=aI

set noshowmode

set splitright splitbelow

set diffopt+=vertical

set number numberwidth=3

set ignorecase smartcase

set cursorline

set showcmd

set switchbuf=useopen,usetab,split

set list

set virtualedit=block

set complete=.,w,b,u
set completeopt=menu,menuone,preview,longest
set tags=tags,tags.gems

set wildcharm=<tab>

set wildignorecase
set wildmode=list:longest,list:full
set wildignore=*.zip,*.gz,*.bz,*.tar
set wildignore+=*.jpg,*.png,*.gif,*.avi,*.wmv,*.ogg,*.mp3,*.mov

set nowrap

set sessionoptions=buffers,tabpages,help

set copyindent cindent smartindent
set tabstop=2 shiftwidth=2 softtabstop=2
set expandtab shiftround

set lazyredraw

set foldmethod=manual nofoldenable

set fileformats+=mac

set nobackup nowritebackup noswapfile

set ttimeout

let mapleader=" "
