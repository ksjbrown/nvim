vim.notify("hello from lazy.lua")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs.stat(lazypath) then
	
end
