require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- List of servers
local servers = { "html", "cssls", "gopls", "ts_ls", "terraformls", "sqls" }

-- Iterate and configure each
for _, server in ipairs(servers) do
  local opts = {}

  -- Try to require server-specific config
  local has_custom_opts, server_opts = pcall(require, "configs." .. server)
  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", opts, server_opts)
  end

  lspconfig[server].setup(opts)
end
