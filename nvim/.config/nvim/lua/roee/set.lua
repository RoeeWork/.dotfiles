vim.opt.guicursor = ""
vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.cmd.colorscheme("vim")

local normal_bg = vim.api.nvim_get_hl_by_name("Normal", true).background

vim.api.nvim_set_hl(0, "NormalFloat", {
    fg = nil,      -- keep default text color, or set explicitly
    bg = normal_bg -- match normal background
})
