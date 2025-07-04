return {
  defaults = {
    -- optional default settings
    file_ignore_patterns = {
      "node_modules",
      ".git/",
      "dist/",
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      additional_args = function()
        return { "--hidden", "--glob", "!**/.git/*" }
      end,
    },
  },
}
