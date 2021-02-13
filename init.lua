local g = vim.g
local o = vim.o
local wo = vim.wo

-- Options
o.autowriteall = true
o.cindent = true
o.complete = '.,w,b,u'
o.completeopt = 'menuone,noinsert,noselect'
o.confirm = true
o.copyindent = true
o.diffopt = 'internal,filler,closeoff,vertical'
o.expandtab = true
o.fileencodings = 'utf8,nobomb'
o.fileformats = 'unix,mac'
o.fillchars = 'vert:│'
o.guicursor = 'n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20'
o.ignorecase = true
o.inccommand = 'nosplit'
o.infercase = true
o.mouse = 'a'
o.secure = true
o.sessionoptions = 'winpos,tabpages,help'
o.shiftround = true
o.shiftwidth = 2
o.shortmess = 'actToOFI'
o.showmatch = true
o.showmode = false
o.showtabline = 2
o.smartcase = true
o.smartindent = true
o.softtabstop = 2
o.spelllang = 'en'
o.splitbelow = true
o.splitright = true
o.swapfile = false
o.switchbuf = 'useopen,usetab,split'
o.tabline = '%!tabline#update()'
o.tabstop = 2
o.tags = ''
o.termguicolors = true
o.textwidth = 100
o.title = true
o.titlestring = "%{substitute(expand('%:p'), $HOME, '$HOME', '')}"
o.undofile = true
o.undolevels = 10000
o.undoreload = 10000
o.virtualedit = 'block'
o.wildignorecase = true
o.wildoptions = 'pum'
o.writebackup = false

-- Window options
wo.colorcolumn = '80,100,120'
wo.foldenable = false
wo.foldmethod = 'manual'
wo.list = true
wo.listchars = 'tab:> ,trail:-,nbsp:+,precedes:<,extends:>'
wo.number = true
wo.numberwidth = 3
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.spell = true
wo.wrap = false

-- Globals
-- Space as map leader
g.mapleader = ' '

-- Highlight lua within vim
g.vimsyn_embed = 'l'

-- Disable standard plugins
g.loaded_getscriptPlugin = 1
g.loaded_gzip = 1
g.loaded_netrwPlugin = 1
g.loaded_rrhelper = 1
g.loaded_tarPlugin = 1
g.loaded_tutor_mode_plugin = 1
g.loaded_vimballPlugin = 1
g.loaded_zipPlugin = 1

-- Global signs icons
g.sign_error = '×'
g.sign_hint = '☺'
g.sign_info = 'ⅰ'
g.sign_warning = '⚠'

-- Setup plugins and other stuff
my = require'my'
my.setup()
