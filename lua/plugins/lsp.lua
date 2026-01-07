local status, nvim_lsp = pcall(require, "lspconfig")
return {
  -- tools
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {

      -- LSP Server Settings
      ---@type lspconfig.options
      servers = {
        solargraph = {
          cmd = { os.getenv("HOME") .. "/.local/share/mise/shims/solargraph", "stdio" },
          root_dir = nvim_lsp.util.root_pattern("Gemfile", ".git", "."),
          settings = {
            solargraph = {
              autoformat = true,
              completion = true,
              diagnostic = true,
              references = true,
              rename = true,
              symbols = true,
            },
          },
        },
        lua_ls = {
          -- mason = false, -- set to false if you don't want this server to be installed with mason
          -- Use this to add any additional keymaps
          -- for specific lsp servers
          -- ---@type LazyKeysSpec[]
          -- keys = {},
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              codeLens = {
                enable = true,
              },
              completion = {
                callSnippet = "Replace",
              },
              doc = {
                privateName = { "^_" },
              },
              hint = {
                enable = true,
                setType = false,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
              },
            },
          },
        },
      },
    },
  },
}
