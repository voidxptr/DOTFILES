vim.g.mapleader = " "


-- Autoclose Parenthesis etc.

--vim.keymap.set("i", "(", "()<Left>")
--vim.keymap.set("i", "[", "[]<Left>")
--vim.keymap.set("i", "{", "{}<Left>")
--vim.keymap.set("i", "'", "''<Left>")
--vim.keymap.set("i", '"', '""<Left>')

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



vim.keymap.set("x", "<leader>p", [["_dP]])



vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<n>", "nzzzv")
vim.keymap.set("n", "<N>", "Nzzzv")

