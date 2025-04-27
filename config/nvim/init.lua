local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.opt.number = true

-- set mapleader before loading plugin in case of

require("lazy").setup({
  "folke/which-key.nvim",
  "nvim-lua/plenary.nvim",
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    
  }
  -- {
  --   "hrsh7th/cmp-nvim-lua",
  --   config = 
  -- }
})
