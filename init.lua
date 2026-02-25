-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.keymap.set("n", "<S-CR>", "m`o<Esc>``", { noremap = true, silent = true, desc = "Blank line below" })
vim.keymap.set("n", "<C-CR>", "m`O<Esc>``", { noremap = true, silent = true, desc = "Blank line above" })

vim.keymap.set("n", "<leader>bc", ":cd %:p:h<CR>", { desc = "cd to current buffer" })
