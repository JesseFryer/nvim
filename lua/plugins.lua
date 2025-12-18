-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	-- Colourscheme
	'ellisonleao/gruvbox.nvim',

	-- Fuzzy finder
	'ibhagwan/fzf-lua',

	-- File tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        --dependencies = {
        --    "nvim-tree/nvim-web-devicons",
        --},
        config = function()
            require("nvim-tree").setup {}
        end,
    },

	-- Auto pairs
	'jiangmiao/auto-pairs',

	-- Completion
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'L3MON4D3/LuaSnip',         -- Snippet engine
	'saadparwaiz1/cmp_luasnip', -- Snippet completion
	'hrsh7th/cmp-buffer',       -- Buffer completions
	'hrsh7th/cmp-path',         -- Path completions
	'hrsh7th/cmp-cmdline',      -- Command-line completions
})
