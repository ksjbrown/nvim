-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.ai_cmp = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorlineopt = "number"
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.list = false
vim.opt.listchars = { tab = "→ ", space = "·", trail = "•", eol = "↴" }
vim.opt.guicursor = "n-v-c:block-blinkon500-blinkoff500-blinkwait500,i-ci:ver25-blinkon500-blinkoff500-blinkwait500"
vim.o.winborder = "rounded"
