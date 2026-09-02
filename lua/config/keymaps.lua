-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

-- (optional) Override telescope find_files to make dynamic based on if connected to host
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", function()
  builtin.find_files()
end, { desc = "Find Files (Root Dir)" })

wk.add({
  { "<leader>r", icon = "", group = "Remote connections" },
})

-- general
vim.keymap.set("n", "<S-CR>", "m`o<Esc>``", { noremap = true, silent = true, desc = "Blank line below" })
vim.keymap.set("n", "<C-CR>", "m`O<Esc>``", { noremap = true, silent = true, desc = "Blank line above" })
vim.keymap.set("n", "<leader>bc", ":cd %:p:h<CR>", { desc = "cd to current buffer" })
