require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })

vim.keymap.set("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace Diagnostics" })
vim.keymap.set("n", "<leader>fbd", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Buffer Diagnostics" })

vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to Implementation" })
