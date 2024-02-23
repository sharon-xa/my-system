local opt = vim.opt

-- .guicursor = ""

opt.nu = true
opt.relativenumber = true

-- indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

opt.scrolloff = 8
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

vim.g.mapleader = " "

-- clipboard
opt.clipboard:append("unnamedplus") -- to copy something from nvim to somewhere outside nvim


