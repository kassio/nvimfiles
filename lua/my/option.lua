local o = vim.o
local wo = vim.wo

-- Global
o.autowriteall = true
o.backup = false
o.completeopt = 'menuone,noinsert,noselect'
o.confirm = true
o.diffopt = 'internal,filler,closeoff,vertical'
o.fileencodings = 'utf8,nobomb'
o.fileformats = 'unix,mac'
o.fillchars = 'vert:│'
o.guicursor = 'n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20'
o.ignorecase = true
o.inccommand = 'nosplit'
o.mouse = 'a'
o.secure = true
o.sessionoptions = 'winpos,tabpages,help'
o.shiftround = true
o.shortmess = 'actToOFI'
o.showmatch = true
o.showmode = false
o.showtabline = 2
o.smartcase = true
o.splitbelow = true
o.splitright = true
o.switchbuf = 'useopen,usetab,split'
o.tabline = '%!tabline#update()'
o.tags = ''
o.termguicolors = true
o.title = true
o.titlestring = "%{substitute(expand('%:p'), $HOME, '$HOME', '')}"
o.undolevels = 10000
o.undoreload = 10000
o.virtualedit = 'block'
o.wildignorecase = true
o.wildoptions = 'pum'
o.writebackup = false
o.scrolloff = 10
o.cindent = true
o.complete = '.,w,b,u'
o.copyindent = true
o.expandtab = true
o.infercase = true
o.shiftwidth = 2
o.smartindent = true
o.softtabstop = 2
o.spelllang = 'en'
o.swapfile = false
o.tabstop = 2
o.textwidth = 100
o.undofile = true

-- Window
wo.colorcolumn = '80,100,120'
wo.foldenable = false
wo.foldmethod = 'manual'
wo.list = true
wo.listchars = 'tab:> ,trail:-,nbsp:+,precedes:<,extends:>'
wo.number = true
wo.numberwidth = 5
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.spell = true
wo.wrap = false
