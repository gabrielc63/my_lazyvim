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
  { "shaunsingh/nord.nvim" },
  { "rmehri01/onenord.nvim" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    opts = function()
      return {
        transparent = true,
      }
    end,
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
