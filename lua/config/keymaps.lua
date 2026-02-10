-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- remote-sshfs
local api = require("remote-sshfs.api")
local wk = require("which-key")

vim.keymap.set("n", "<leader>rc", api.connect, { desc = "Connect to remote host" })
vim.keymap.set("n", "<leader>rd", api.disconnect, { desc = "Disconnect from remote host" })
vim.keymap.set("n", "<leader>re", api.edit, { desc = "Edit remote hosts" })

-- (optional) Override telescope find_files and live_grep to make dynamic based on if connected to host
local builtin = require("telescope.builtin")
local connections = require("remote-sshfs.connections")
vim.keymap.set("n", "<leader>ff", function()
  if connections.is_connected() then
    api.find_files()
  else
    builtin.find_files()
  end
end, { desc = "Find Files (Root Dir)" })
vim.keymap.set("n", "<leader>fg", function()
  if connections.is_connected() then
    api.live_grep()
  else
    builtin.live_grep()
  end
end, { desc = "Find Files (git-files)" })

wk.add({
  { "<leader>r", icon = "", group = "Remote connections" },
})
--
