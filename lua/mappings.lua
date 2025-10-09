require "nvchad.mappings"

local map = vim.keymap.set

-- compatibility with tmux
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

map("n", "<leader>cd", function()
  local d = vim.diagnostic.get()
  if d and d[1] then
    vim.fn.setreg("+", d[1].message)
    print("Copied: " .. d[1].message)
  end
end, { desc = "Copy diagnostic to clipboard" })

map("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true })

map("n", "<C-]>", "<C-i>", { desc = "Jump forward in jumplist" })

map("n", "<leader>gd", ":Gvdiffsplit<CR>", { desc = "Git diff of current file" })

map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })

map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move block down", silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move block up", silent = true })

map("n", "<leader>dd", function()
  vim.diagnostic.open_float(nil, { focusable = true, border = "rounded", scope = "cursor" })
end, { desc = "Show diagnostics in float" })

map("n", "<leader>gB", function()
  require("gitsigns").blame_line { full = true }
end, { desc = "Git blame line" })

map({ "i", "s" }, "<C-e>", function()
  local ls = require "luasnip"
  if ls.in_snippet() then
    ls.unlink_current()
  end
end, { desc = "Exit LuaSnip snippet", silent = true })

map("n", "<leader><leader>", "<C-^>", { desc = "Switch to last buffer" })
