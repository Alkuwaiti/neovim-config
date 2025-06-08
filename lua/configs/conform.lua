local options = {
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    go = { "gofmt" },
    python = { "black" },
    terraform = { "terraform_fmt" },
    java = { "google-java-format" },
    sql = { "sql_formatter" },
  },
}

return options
