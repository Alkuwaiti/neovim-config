local jdtls = require "jdtls"

local home = os.getenv "HOME"
local workspace_dir = home .. "/.cache/jdtls/workspace"

local config = {
  cmd = {
    "jdtls",
    "-configuration",
    home .. "/.cache/jdtls/config",
    "-data",
    workspace_dir,
  },
  root_dir = require("jdtls.setup").find_root { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" },
  settings = {
    java = {
      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" },
      configuration = {
        updateBuildConfiguration = "interactive",
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
        },
        useBlocks = true,
      },
    },
  },
  init_options = {
    bundles = {},
    extendedClientCapabilities = jdtls.extendedClientCapabilities,
  },
}

jdtls.start_or_attach(config)
