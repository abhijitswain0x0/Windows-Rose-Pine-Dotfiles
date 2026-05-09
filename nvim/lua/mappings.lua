require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- to toggle line wrap
map("n", "<leader>tw", ":set wrap!<CR>", { desc = "Toggle wrap" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")