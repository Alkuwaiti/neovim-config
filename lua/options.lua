require "nvchad.options"

-- add yours here!
vim.opt.relativenumber = true
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }

-- auto attach terraformls lsp to .tf files.
vim.filetype.add {
  extension = {
    tf = "terraform",
    tfvars = "terraform",
  },
}
