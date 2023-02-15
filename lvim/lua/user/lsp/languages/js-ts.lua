local capabilities = require("lvim.lsp").common_capabilities()


-- → eslint.alwaysShowStatus                default: false
-- → eslint.autoFixOnSave                   default: false
-- → eslint.codeAction.disableRuleComment
-- → eslint.codeAction.showDocumentation
-- → eslint.codeActionsOnSave.mode          default: "all"
-- → eslint.codeActionsOnSave.rules         default: null
-- → eslint.debug                           default: false
-- → eslint.enable                          default: true
-- → eslint.execArgv                        default: null
-- → eslint.experimentalUseFlatConfig       default: false
-- → eslint.format.enable                   default: false
-- → eslint.lintTask.enable                 default: false
-- → eslint.lintTask.options                default: "."
-- → eslint.migration.2_x                   default: "on"
-- → eslint.nodeEnv                         default: null
-- → eslint.nodePath                        default: null
-- → eslint.notebooks.rules.customizations
-- → eslint.onIgnoredFiles                  default: "off"
-- → eslint.options                         default: {}
-- → eslint.packageManager                  default: "npm"
-- → eslint.probe                           default: ["javascript","javascriptreact","typescript","typescriptreact","html","vue","markdown"]
-- → eslint.provideLintTask                 default: false
-- → eslint.quiet                           default: false
-- → eslint.rules.customizations
-- → eslint.run                             default: "onType"
-- → eslint.runtime                         default: null
-- → eslint.trace.server                    default: "off"
-- → eslint.useESLintClass                  default: false
-- → eslint.validate
-- → eslint.workingDirectories

require("lvim.lsp.manager").setup("eslint", {
  {
    enable = true,
    autoFixOnSave = true,
    codeActionOnSave = {
      mode = "all"
    },
    format = {
      enable = true
    },
  }
})

lvim.autocommands = {
  {
    "BufWritePre", { pattern = { "*.tsx", "*.ts", "*.jsx", "*.js" }, command = "EslintFixAll" }
  }
}

---@param  allow_formatting boolean whether to enable formating
---
local function toggle_formatting(allow_formatting)
  return function(client)
    require("lvim.lsp").common_on_attach(client)
    client.resolved_capabilities.document_formatting = allow_formatting
    client.resolved_capabilities.document_range_formatting = allow_formatting
  end
end

require("typescript").setup {
  -- disable_commands = false, -- prevent the plugin from creating Vim commands
  debug = false, -- enable debug logging for commands
  go_to_source_definition = {
    fallback = true, -- fall back to standard LSP definition on failure
  },
  server = { -- pass options to lspconfig's setup method
    on_attach = toggle_formatting(true),
    on_init = require("lvim.lsp").common_on_init,
    capabilities = capabilities,
  },
}




-- -- Set a formatter.
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "prettier", filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" } },
-- }

-- local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
-- require("dap-vscode-js").setup {
--   -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
--   debugger_path = mason_path .. "packages/js-debug-adapter", -- Path to vscode-js-debug installation.
--   -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
--   adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
-- }

-- for _, language in ipairs { "typescript", "javascript" } do
--   require("dap").configurations[language] = {
--     {
--       type = "pwa-node",
--       request = "launch",
--       name = "Debug Jest Tests",
--       -- trace = true, -- include debugger info
--       runtimeExecutable = "node",
--       runtimeArgs = {
--         "./node_modules/jest/bin/jest.js",
--         "--runInBand",
--       },
--       rootPath = "${workspaceFolder}",
--       cwd = "${workspaceFolder}",
--       console = "integratedTerminal",
--       internalConsoleOptions = "neverOpen",
--     },
--   }
-- end
