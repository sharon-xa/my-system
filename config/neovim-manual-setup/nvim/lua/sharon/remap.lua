vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<leader>cl", ":nohl<CR>")

-- split window
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- clsoe current split window

-- tab 
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- vim-maximizer
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find text 
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find the current string our cursor is on 
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- show active buffers
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

