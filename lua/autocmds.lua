require "nvchad.autocmds"

-- auto cd into the folder you're targeting with nv "folder/"
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv()[1]
    if arg and vim.fn.isdirectory(arg) == 1 then
      vim.cmd("cd " .. arg)
    end
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    local ok, ls = pcall(require, "luasnip")
    if ok and ls.in_snippet() then
      ls.unlink_current()
    end
  end,
})
