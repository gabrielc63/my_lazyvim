return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "romainl/vim-cool",
    -- opts will be merged with the parent spec
  },
}
