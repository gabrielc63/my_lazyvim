-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- Exit insert mode with jk
keymap.set("i", "jk", "<Esc>", { noremap = true })

-- Go to first and last character in line
keymap.set("n", "H", "^")
keymap.set("v", "H", "^")
keymap.set("n", "L", "$")
keymap.set("v", "L", "$")

-- Ident after paste
vim.api.nvim_set_keymap("n", "p", "p`[v`]=", { noremap = true })

-- Tabs
keymap.set("n", "to", ":tabedit .<Return>")
keymap.set("n", "tc", ":tabclose <Return>")
vim.opt.foldenable = false
