return {
  { "rebelot/kanagawa.nvim" },
  {
    "oxfist/night-owl.nvim",
  },
  { "luisiacc/gruvbox-baby" },
  { "neanias/everforest-nvim" },
  -- Lazy
  {
    "olimorris/onedarkpro.nvim",
  },
  { "AlessandroYorba/Alduin" },
  { "ellisonleao/gruvbox.nvim" },
  { "calind/selenized.nvim" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    opts = {},
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },
}
