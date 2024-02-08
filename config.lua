-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  "folke/tokyonight.nvim",
  "github/copilot.vim",
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup({
        input = {enabled = false}
      })
    end,
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup({})
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    }
  },
  "sbdchd/neoformat",
  "mg979/vim-visual-multi",
  "tpope/vim-fugitive",
  "sindrets/diffview.nvim",
  "xiyaowong/transparent.nvim",
  "christoomey/vim-tmux-navigator",
  "szw/vim-maximizer",
}

-- Keybindings

lvim.builtin.which_key.mappings["s"] = {
  name = "Windows splitting",
  v = { "<C-w>v", "Split vertically" },
  h = { "<C-w>s", "Split horizontally" },
  e = { "<C-w>=", "Equal sizes" },
  x = { ":close<CR>", "Close split" },
  m = { ":MaximizerToggle<CR>", "Maximize" }
}

lvim.builtin.which_key.mappings['f'] = {
  name = "Telescope",
  f = { "<cmd>Telescope find_files<CR>", "Find Files" },
  s = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
  c = { "<cmd>Telescope grep_string<CR>", "Grep String" },
  b = { "<cmd>Telescope buffers<CR>", "Buffers" },
  h = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
  g = { "<cmd>Telescope git_files<CR>", "Git Files" },
  t = { "<cmd>Telescope git_status<CR>", "Git Status" },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Tabs",
  o = { ":tabnew<CR>", "New Tab" },
  x = { ":tabclose<CR>", "Close Tab" },
  n = { ":tabn<CR>", "Next Tab" },
  p = { ":tabp<CR>", "Previous Tab" },
}


lvim.keys.normal_mode["<leader>]"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<leader>["] = ":BufferLineCyclePrev<CR>"

-- Vim options

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
