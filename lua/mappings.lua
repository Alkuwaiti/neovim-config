require "nvchad.mappings"

local map = vim.keymap.set

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Window up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Window right" })

map("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Workspace Diagnostics" })
map("n", "<leader>fbd", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Buffer Diagnostics" })

map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to Implementation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename variable" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })

map("n", "<leader>gb", function()
  require("gitlinker").get_buf_range_url("n", { action_callback = require("gitlinker.actions").open_in_browser })
end, { desc = "Open file in GitHub" })

map("v", "<leader>gb", function()
  require("gitlinker").get_buf_range_url("v", { action_callback = require("gitlinker.actions").open_in_browser })
end, { desc = "Open file in GitHub" })
