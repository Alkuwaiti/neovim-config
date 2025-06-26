local jdtls = require "jdtls"

local home = os.getenv "HOME"

-- You can customize this workspace path if needed
local workspace_dir = home .. "/.cache/jdtls/workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

jdtls.start_or_attach {
  cmd = {
    "jdtls",
    "-configuration",
    home .. "/.cache/jdtls/config",
    "-data",
    workspace_dir,
  },
  root_dir = require("jdtls.setup").find_root {
    ".git",
    "mvnw",
    "gradlew",
    "pom.xml",
    "build.gradle",
  },
  settings = {
    java = {
      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" },
    },
  },
}
