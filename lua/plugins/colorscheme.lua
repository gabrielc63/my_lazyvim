return {
  { "rebelot/kanagawa.nvim" },
  {
    "oxfist/night-owl.nvim",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
  },
  { "luisiacc/gruvbox-baby" },
  { "AlessandroYorba/Alduin" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  { "calind/selenized.nvim" },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
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
