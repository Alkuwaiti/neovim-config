return {
  settings = {
    gopls = {
      buildFlags = { "-tags=integration" },
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
}
