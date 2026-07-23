return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      opts.sources.default = vim.tbl_filter(function(s)
        return s ~= "buffer"
      end, opts.sources.default or {})
    end,
  },
}
