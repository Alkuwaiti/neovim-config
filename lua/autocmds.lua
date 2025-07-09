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
