-- Vim options
vim.g.mapleader = " "
vim.g.autoformat = true
vim.g.editorconfig = true

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
vim.opt.showmode = true
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
vim.opt.winborder = "rounded"
vim.opt.clipboard = "unnamedplus"

-- Plugins
vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/folke/ts-comments.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
})

-- Opts
require("ibl").setup()
require('gitsigns').setup ()
require "nvim-treesitter.configs".setup({
	ensure_installed = { "javascript" },
	highlight = { enable = true }
})
require("telescope").setup({
  defaults = {
		layout_strategy = 'horizontal',
    layout_config = {
			preview_width = 0.7,
    },
  }
})

-- Colorschemes
require "catppuccin".setup({
 flavour = "macchiato",
	transparent = true,
	transparent_background = true,
})
vim.cmd("colorscheme catppuccin")

-- Cmd
vim.cmd("let g:netrw_liststyle = 3")
vim.cmd("set completeopt+=noselect")
vim.cmd(":hi statusline guibg=NONE")

-- LSP
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
vim.lsp.enable({ "biome", "lua_ls" })

-- Keybinds
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>', { desc = 'copy' })
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>d', '"+d<CR>', { desc = 'cut' })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = 'save file' })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = 'quit' })

vim.keymap.set('n', '<leader><leader>', ":Telescope<CR>", { desc = 'Telescope' })
vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", { desc = 'find files' })
vim.keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>", { desc = 'live grep' })
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>", { desc = 'buffers' })

vim.keymap.set('n', '<C-/>', ":terminal<CR>", { desc = 'Open Terminal' })
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = 'Code Format' })
