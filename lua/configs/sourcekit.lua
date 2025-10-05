return {
  cmd = { "sourcekit-lsp" },
  filetypes = { "swift", "objective-c", "objective-cpp" },
  root_dir = require("lspconfig").util.root_pattern("Package.swift", ".git"),
}
