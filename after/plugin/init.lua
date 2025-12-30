-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load settings and plugins
require("caill0ux.set")
require("lazy").setup("plugins", {
  install = { colorscheme = { "tokyonight-night" } },
  checker = { enabled = true, notify = false },
})
