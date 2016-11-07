if has('nvim')
  command! Pupgrade PlugClean! | PlugUpgrade | PlugUpdate
else
  command! Pupgrade PlugUpgrade | PlugUpdate
end

call plug#begin(expand('~/.config/nvim/_packs'))

if has('nvim')
  Plug 'https://github.com/kassio/neoterm.git'
end

" Tools
Plug 'https://github.com/kassio/vim-session_manager.git'
Plug 'benekastah/neomake'
Plug 'vim-scripts/vis'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'mhartington/oceanic-next'
Plug 'kana/vim-textobj-user'
Plug 'wellle/targets.vim' " extended surrounding
Plug 'scrooloose/nerdtree', { 'on': ['NERDTree', 'NERDTreeToggle', 'NERDTreeMirror'] }

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
Plug 'othree/yajs.vim', { 'for': ['javascript', 'html', 'eruby'] }

" Ruby
Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'Keithbsmiley/rspec.vim', { 'for': ['ruby'] }
Plug 'sunaku/vim-ruby-minitest', { 'for': ['ruby'] }

" Elixir
Plug 'https://github.com/elixir-lang/vim-elixir.git', { 'for': ['elixir', 'eelixir'] }

Plug 'derekwyatt/vim-scala', { 'for': ['scala'] }

call plug#end()
