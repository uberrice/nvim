return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true, -- keep the suggestion module on
      auto_trigger = false, -- ← this is the key line: no auto suggestions on insert
      debounce = 75,
      keymap = {
        accept = false, -- usually handled by cmp / blink.cmp in LazyVim
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
    panel = { enabled = false }, -- optional: usually not needed
  },
}
