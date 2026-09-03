return {
  -- add catppuccin
  { "catppuccin" },
  { "rebelot/kanagawa.nvim" },

  -- Configure LazyVim to load catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
