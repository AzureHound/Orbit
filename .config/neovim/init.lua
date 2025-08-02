-- Vim options
vim.g.mapleader = " "
vim.g.autoformat = true

vim.opt.mouse = "a"
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.swapfile = false
vim.opt.hlsearch = true
vim.opt.smarttab = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.signcolumn = "yes"
vim.opt.mousemodel = "extend"
vim.opt.splitkeep = "screen"
vim.opt.fillchars = "eob: "
vim.opt.expandtab = true
vim.opt.winborder = "rounded"
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.HINT]  = "",
      [vim.diagnostic.severity.INFO]  = "󰋼"
    }
  }
})

-- Plugins
vim.pack.add({
  { src = "https://github.com/catppuccin/nvim" },
  { src = "https://github.com/saghen/blink.cmp" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/folke/ts-comments.nvim" },
  { src = "https://github.com/echasnovski/mini.pairs" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/rafamadriz/friendly-snippets" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
})

-- Opts
require("ibl").setup()
require("gitsigns").setup()
require("mini.pairs").setup()
require("blink.cmp").setup({
  fuzzy = {
    implementation = "lua",
  },
})
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls" }
}
require("nvim-treesitter.configs").setup({
  ensure_installed = { "javascript", "lua", "markdown", "markdown_inline", "query", "ron", "vim", "vimdoc" },
  highlight = { enable = true },
})
require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      preview_width = 0.7,
    },
  },
})

-- Colorschemes
require("catppuccin").setup({
  flavour = "macchiato",
  transparent = true,
  transparent_background = true,
})
vim.cmd("colorscheme catppuccin")

-- Cmd
vim.cmd("let g:netrw_liststyle = 3")
vim.cmd(":hi statusline guibg=NONE")
vim.cmd("set completeopt+=noselect")

-- Keybinds
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y<CR>', { desc = "copy" })
vim.keymap.set({ "n", "v", "x" }, "<leader>d", '"+d<CR>', { desc = "cut" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>lua vim.lsp.buf.format()<cr><cmd>w<cr>",
  { desc = "format & save file" })
vim.keymap.set("n", "<C-/>", ":terminal<CR>", { desc = "Open Terminal" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "quit" })

vim.keymap.set("n", "<leader><leader>", ":Telescope<CR>", { desc = "Telescope" })
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "live grep" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "buffers" })
