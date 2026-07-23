-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- remote-sshfs
local api = require("remote-sshfs.api")
local wk = require("which-key")

vim.keymap.set("n", "<leader>rc", api.connect, { desc = "Connect to remote host" })
vim.keymap.set("n", "<leader>rd", api.disconnect, { desc = "Disconnect from remote host" })
vim.keymap.set("n", "<leader>re", api.edit, { desc = "Edit remote hosts" })

-- (optional) Override telescope find_files to make dynamic based on if connected to host
local builtin = require("telescope.builtin")
local connections = require("remote-sshfs.connections")

vim.keymap.set("n", "<leader>ff", function()
  if connections.is_connected() then
    api.find_files()
  else
    builtin.find_files()
  end
end, { desc = "Find Files (Root Dir)" })

wk.add({
  { "<leader>r", icon = "", group = "Remote connections" },
})

-- general
vim.keymap.set("n", "<S-CR>", "m`o<Esc>``", { noremap = true, silent = true, desc = "Blank line below" })
vim.keymap.set("n", "<C-CR>", "m`O<Esc>``", { noremap = true, silent = true, desc = "Blank line above" })
vim.keymap.set("n", "<leader>bc", ":cd %:p:h<CR>", { desc = "cd to current buffer" })
