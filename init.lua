-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.keymap.set("n", "<S-CR>", "m`o<Esc>``", { noremap = true, silent = true, desc = "Blank line below" })
vim.keymap.set("n", "<A-CR>", "m`O<Esc>``", { noremap = true, silent = true, desc = "Blank line above" })
