call plug#begin(expand('~/.config/nvim/_deps'))

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'https://github.com/kassio/neoterm.git'
  Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh', 'for': ['elixir', 'eelixir']   }
end

" Tools
Plug 'https://github.com/kassio/vim-session_manager.git'
Plug 'benekastah/neomake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'chriskempson/base16-vim' " colors
Plug 'kana/vim-textobj-user'
Plug 'wellle/targets.vim' " extended surrounding
Plug 'vim-scripts/vis' " Visual commands that respect with Visual Blocks
Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeMirror'] }
Plug 'Shougo/neco-vim', { 'for': ['vim'] }
Plug 'osyo-manga/vim-monster'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" Snippets
Plug 'sirver/ultisnips'

" Tomdoc
Plug 'kassio/tomdoc.vim'

" Markdown
Plug 'tpope/vim-markdown', { 'for': ['markdown'] }

" HTML, javascript, css, scss, less
Plug 'othree/html5.vim', { 'for': ['html', 'eruby'] }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'html', 'eruby'] }

" react.js
Plug 'mxw/vim-jsx'

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" Elixir
Plug 'https://github.com/elixir-lang/vim-elixir.git', { 'for': ['elixir', 'eelixir'] }
Plug 'thinca/vim-ref'

call plug#end()
